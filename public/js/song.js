document.addEventListener('DOMContentLoaded', function() {

    // --- 0. SETUP & VARIABILI ---

    // Elementi principali
    const favBtn = document.getElementById('btn-fav');
    const authModal = document.getElementById('auth-modal');
    const closeAuthBtn = document.getElementById('close-auth-modal');
    const playlistToggleBtn = document.getElementById('playlist-toggle');
    const playlistMenu = document.getElementById('playlist-menu');

    // Se manca il bottone principale, probabilmente c'è un errore nel template, usciamo.
    if (!favBtn) return;

    // Recuperiamo l'ID della canzone dal bottone preferiti (come da tuo HTML)
    const currentSongId = favBtn.dataset.songId;

    // --- 1. FUNZIONI HELPER (Login & API) ---

    // Controlla se l'utente è loggato guardando l'attributo sul body
    function isUserLoggedIn() {
        return document.body.dataset.loggedIn === 'true';
    }

    // Mostra il modale di login
    function showLoginBanner() {
        if (authModal) {
            authModal.classList.add('show');
            authModal.setAttribute('aria-hidden', 'false');
        }
    }

    // Nasconde il modale di login
    function hideLoginBanner() {
        if (authModal) {
            authModal.classList.remove('show');
            authModal.setAttribute('aria-hidden', 'true');
        }
    }

    // Chiamata API generica per aggiungere/rimuovere
    async function toggleSongInPlaylist(playlistId, songId, isAdding) {
        const endpoint = isAdding ? '/api/playlist/add-song' : '/api/playlist/remove-song';
        
        try {
            const response = await fetch(endpoint, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ 
                    playlist_id: playlistId, 
                    song_id: songId 
                })
            });
            
            const res = await response.json();
            
            if (!res.success) {
                throw new Error(res.message || "Errore API");
            }
            return true; // Successo

        } catch (err) {
            console.error(err);
            // Opzionale: alert("Errore: " + err.message);
            return false; // Fallimento
        }
    }

    // --- 2. GESTIONE CHIUSURA MODALE LOGIN ---
    if (closeAuthBtn) {
        closeAuthBtn.addEventListener('click', hideLoginBanner);
    }
    // Chiudi cliccando sullo sfondo scuro
    if (authModal) {
        authModal.addEventListener('click', (e) => {
            if (e.target === authModal) hideLoginBanner();
        });
    }


    // --- 3. GESTIONE MENU A TENDINA (Apri/Chiudi) ---
    if (playlistToggleBtn && playlistMenu) {
        
        playlistToggleBtn.addEventListener('click', function(e) {
            e.stopPropagation();

            // CHECK LOGIN: Se non loggato, mostra banner e ferma tutto
            if (!isUserLoggedIn()) {
                showLoginBanner();
                return;
            }

            // Toggle menu
            playlistMenu.classList.toggle('show');
            const isExpanded = playlistToggleBtn.getAttribute('aria-expanded') === 'true';
            playlistToggleBtn.setAttribute('aria-expanded', !isExpanded);
        });

        // Chiudi menu cliccando fuori
        document.addEventListener('click', function() {
            if (playlistMenu.classList.contains('show')) {
                playlistMenu.classList.remove('show');
                playlistToggleBtn.setAttribute('aria-expanded', 'false');
            }
        });

        // Evita chiusura cliccando dentro il menu
        playlistMenu.addEventListener('click', function(e) {
            e.stopPropagation();
        });
    }


    // --- 4. GESTIONE CHECKBOX PLAYLIST (La lista) ---
    const checkboxes = document.querySelectorAll('.playlist-checklist input[type="checkbox"]');
    
    checkboxes.forEach(chk => {
        chk.addEventListener('change', async function() {
            // L'ID playlist è nel value dell'input (es. value="2")
            const playlistId = this.value;
            const isChecked = this.checked;
            
            // Disabilita per evitare doppi click rapidi
            this.disabled = true;

            const success = await toggleSongInPlaylist(playlistId, currentSongId, isChecked);

            if (!success) {
                // Se fallisce (es. errore server), torna indietro visivamente
                this.checked = !isChecked;
            }
            
            this.disabled = false;
        });
    });


    // --- 5. GESTIONE PREFERITI (Cuore) ---
    favBtn.addEventListener('click', async function() {
        
        // CHECK LOGIN
        if (!isUserLoggedIn()) {
            showLoginBanner();
            return;
        }

        // Recupera ID playlist preferiti dall'attributo data-id-preferiti
        // Nota: dataset trasforma "data-id-preferiti" in "idPreferiti" (camelCase)
        const favPlaylistId = this.dataset.idPreferiti;
        
        if (!favPlaylistId) {
            console.error("ID Playlist Preferiti mancante nell'HTML");
            return;
        }

        // Determina azione: se ha la classe che lo colora (es. active o btn-favorite-active), stiamo rimuovendo
        // Nota: nel tuo HTML hai messo '##PREFERITI_CLASS##' dentro class="btn-favorite ...". 
        // Assumo che la classe che lo rende rosso sia 'active' (come nel CSS che abbiamo fatto prima).
        const isRemoving = this.classList.contains('active');
        const isAdding = !isRemoving;

        // UI Ottimistica: Cambia subito stato
        this.classList.toggle('active');

        // Chiamata API
        const success = await toggleSongInPlaylist(favPlaylistId, currentSongId, isAdding);

        if (!success) {
            // Rollback in caso di errore
            this.classList.toggle('active');
        }
    });

});