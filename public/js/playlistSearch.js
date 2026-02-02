document.addEventListener('DOMContentLoaded', () => {

    // -------------------------------------------------------------------------
    //  VARIABILI GLOBALI E SETUP INIZIALE
    // -------------------------------------------------------------------------
    const openBtn = document.getElementById('open-search-modal');
    const closeBtn = document.getElementById('close-search-modal');
    const modal = document.getElementById('search-modal');
    const input = document.getElementById('search-input');
    const resultsList = document.getElementById('search-results');

    // Se non siamo sulla pagina di una playlist (es. manca il bottone Aggiungi), termina lo script
    if (!openBtn) return; 

    // ID della playlist corrente (preso dall'attributo data- del bottone)
    const currentPlaylistId = openBtn.dataset.playlistId;

    // =========================================================================
    //  SEZIONE 1: GESTIONE MODALE DI RICERCA (Apertura/Chiusura/Input)
    // =========================================================================

    /**
     * Apre il modale di ricerca e porta il focus sull'input.
     * Usa classi CSS per la visibilità invece di style inline.
     */
    openBtn.addEventListener('click', (e) => { 
        e.preventDefault();
        modal.classList.remove('hidden'); // Usa la classe CSS .hidden
        input.focus(); 
    });
    
    /**
     * Chiude il modale cliccando sulla "X".
     */
    closeBtn.addEventListener('click', (e) => { 
        e.preventDefault();
        closeModalSearch();
    });

    /**
     * Chiude il modale cliccando sull'overlay scuro (fuori dal contenuto).
     */
    modal.addEventListener('click', (e) => {
        if (e.target === modal) closeModalSearch();
    });

    /**
     * Gestisce la digitazione nell'input di ricerca.
     * Esegue una chiamata API solo se ci sono almeno 2 caratteri.
     */
    input.addEventListener('input', async (e) => {
        const query = e.target.value;
        if (query.length < 2) return;

        try {
            // Chiamata API per cercare canzoni (passando anche playlist_id per sapere se sono già presenti)
            const response = await fetch(`${BASE_URL}/api/search/songs?q=${query}&playlist_id=${currentPlaylistId}`);
            const songs = await response.json();
            renderResults(songs);
        } catch (err) { 
            console.error("Errore ricerca:", err); 
        }
    });

    // =========================================================================
    //  SEZIONE 2: GESTIONE RISULTATI E AGGIUNTA CANZONI
    // =========================================================================

    /**
     * Renderizza la lista dei risultati nel modale.
     * Crea dinamicamente gli elementi <li> con titolo e bottone (+ o ✓).
     */
    function renderResults(songs) {
        resultsList.innerHTML = ''; // Pulisce i risultati precedenti
        songs.forEach(song => {
            const li = document.createElement('li');
            
            const span = document.createElement('span');
            span.textContent = song.titolo_canzone;
            span.style.fontWeight = '500';
            
            const btn = document.createElement('button');
            
            // Se la canzone è già nella playlist, mostra ✓ disabilitato
            if (song.gia_presente) {
                styleAsChecked(btn);
            } else {
                // Altrimenti mostra + abilitato per l'aggiunta
                styleAsAdd(btn);
                btn.onclick = () => addSongToPlaylist(song.id_canzone, btn);
            }
            
            li.appendChild(span);
            li.appendChild(btn);
            resultsList.appendChild(li);
        });
    }

    /**
     * Aggiunge una canzone alla playlist tramite API.
     * Gestisce lo stato di caricamento del bottone e aggiorna la UI sottostante.
     */
    async function addSongToPlaylist(songId, btn) {
        try {
            const originalText = btn.textContent;
            btn.textContent = "..."; // Feedback visivo
            btn.disabled = true;

            const response = await fetch('${BASE_URL}/api/playlist/add-song', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ playlist_id: currentPlaylistId, song_id: songId })
            });
            
            const res = await response.json();
            
            if (res.success) {
                // Successo: cambia il bottone in ✓ e aggiorna la lista principale
                styleAsChecked(btn);
                btn.onclick = null;
                await updatePlaylistUI(); 
            } else {
                // Errore logico (es. duplicato lato server)
                alert(res.message);
                btn.textContent = originalText;
                btn.disabled = false;
            }
        } catch (err) { 
            console.error(err); 
            // Errore di rete: ripristina il bottone
            btn.textContent = "+";
            btn.disabled = false;
        }
    }


    // =========================================================================
    //  SEZIONE 3: RIMOZIONE CANZONI (Event Delegation)
    // =========================================================================
    
    /**
     * Gestisce la rimozione delle canzoni dalla lista principale.
     * Usa "Event Delegation" su document per intercettare i click sui tasti .js-remove-song.
     */
    document.addEventListener('click', async function(e) {
        
        // 1. Identifica il bottone (cerca verso l'alto nell'albero DOM se clicchi sull'icona)
        const removeBtn = e.target.closest('.js-remove-song');
        
        // Se il click non è su un tasto rimuovi, esci
        if (!removeBtn) return;

        // 2. Blocca propagazione (impedisce al click di aprire il link della canzone sottostante)
        e.preventDefault();
        e.stopPropagation();

        // 3. Recupera ID Canzone e l'elemento riga HTML
        const songId = removeBtn.dataset.songId;
        const row = removeBtn.closest('.song-list-item');

        // 4. Feedback Visivo Immediato (Opacity ridotta e click bloccati)
        if (row) {
            row.style.transition = 'all 0.3s ease';
            row.style.opacity = '0.4'; 
            row.style.pointerEvents = 'none';
        }

        try {
            // 5. Chiamata API di rimozione
            const response = await fetch('${BASE_URL}/api/playlist/remove-song', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ 
                    playlist_id: currentPlaylistId, 
                    song_id: songId 
                })
            });
            
            // Gestione robusta della risposta (anche se non è JSON puro)
            const text = await response.text();
            let res;
            try { res = JSON.parse(text); } catch(e) { res = { success: false, message: "Errore Server Generico" }; }

            if (res.success) {
                // 6. Successo: Animazione di uscita e rimozione dal DOM
                if (row) {
                    row.style.transform = 'translateX(30px)'; // Scivola a destra
                    row.style.opacity = '0'; // Svanisce completamente
                    
                    // Attende la fine dell'animazione CSS (300ms) prima di rimuovere l'elemento
                    setTimeout(() => {
                        row.remove();
                        checkEmptyState(); // Controlla se la playlist è diventata vuota
                    }, 300);
                }
            } else {
                // Errore: Ripristina la riga visibile
                console.error("Errore rimozione:", res.message);
                if (row) {
                    row.style.opacity = '1';
                    row.style.pointerEvents = 'auto';
                    row.style.transform = 'none';
                }
                alert("Impossibile rimuovere: " + (res.message || "Errore sconosciuto"));
            }

        } catch (err) {
            // Errore di connessione: ripristina la riga
            console.error(err);
            if (row) {
                row.style.opacity = '1';
                row.style.pointerEvents = 'auto';
            }
        }
    });


    // =========================================================================
    //  SEZIONE 4: FUNZIONI UTILITY INTERNE
    // =========================================================================

    /**
     * Chiude il modale, pulisce l'input e la lista risultati.
     */
    function closeModalSearch() {
        modal.classList.add('hidden'); // Usa classe CSS
        input.value = ''; 
        resultsList.innerHTML = ''; 
    }

    /**
     * Applica lo stile "Aggiungi" (+) al bottone nel modale.
     */
    function styleAsAdd(btn) { 
        btn.textContent = "+"; 
        btn.style.cssText = "background:var(--wood-accent); color:black; border:none; border-radius:50%; width:32px; height:32px; cursor:pointer; font-weight:bold;"; 
    }

    /**
     * Applica lo stile "Già Presente" (✓) al bottone nel modale.
     */
    function styleAsChecked(btn) { 
        btn.textContent = "✓"; 
        btn.style.cssText = "background:#4CAF50; color:black; border:none; border-radius:50%; width:32px; height:32px; cursor:default;"; 
        btn.disabled = true;
    }

    /**
     * Controlla se la griglia principale è vuota dopo una rimozione.
     * Se vuota, mostra un messaggio di cortesia.
     */
    function checkEmptyState() {
        const grid = document.querySelector('.content-grid');
        if (grid && grid.querySelectorAll('.song-list-item').length === 0) {
            grid.innerHTML = '<div style="text-align:center; padding:3rem; opacity:0.6; font-style:italic;">Questa playlist è ancora vuota. Cerca e aggiungi canzoni!</div>';
        }
    }

}); // Fine DOMContentLoaded


// =========================================================================
//  SEZIONE 5: FUNZIONI GLOBALI (FUORI DAL DOMContentLoaded)
// =========================================================================

/**
 * Aggiorna la griglia delle canzoni principale senza ricaricare l'intera pagina.
 * Effettua una fetch della pagina corrente in background, parsa l'HTML e sostituisce solo il div .content-grid.
 * Utile per mostrare subito le canzoni appena aggiunte.
 */
async function updatePlaylistUI() {
    try {
        // Aggiunge un timestamp per bypassare la cache del browser e forzare dati freschi
        const url = window.location.href.split('?')[0] + '?t=' + new Date().getTime();
        
        const response = await fetch(url, { cache: "no-store" });
        const htmlText = await response.text();
        
        // Crea un documento virtuale per parsare l'HTML ricevuto
        const parser = new DOMParser();
        const doc = parser.parseFromString(htmlText, 'text/html');
        
        // Trova la nuova griglia e sostituisce quella vecchia
        const newGrid = doc.querySelector('.content-grid');
        const oldGrid = document.querySelector('.content-grid');
        
        if (newGrid && oldGrid) {
            oldGrid.innerHTML = newGrid.innerHTML;
        }
    } catch (err) { 
        console.error("Errore critico durante l'aggiornamento UI:", err); 
    }
}