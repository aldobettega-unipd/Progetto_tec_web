document.addEventListener('DOMContentLoaded', () => {
    
    // ============================================================
    // 1. GESTIONE MODALE RICERCA E AGGIUNTA (Logica Esistente)
    // ============================================================
    const openBtn = document.getElementById('open-search-modal');
    const closeBtn = document.getElementById('close-search-modal');
    const modal = document.getElementById('search-modal');
    const input = document.getElementById('search-input');
    const resultsList = document.getElementById('search-results');

    // Se non siamo sulla pagina playlist (manca il bottone aggiungi), fermiamo lo script
    if (!openBtn) return; 

    const currentPlaylistId = openBtn.dataset.playlistId;

    // Apertura/Chiusura Modale
    openBtn.addEventListener('click', () => { 
        modal.style.display = 'flex'; // Flex per centrare (come da CSS)
        input.focus(); 
    });
    
    closeBtn.addEventListener('click', () => { 
        closeModalSearch();
    });

    // Chiudi cliccando fuori
    modal.addEventListener('click', (e) => {
        if (e.target === modal) closeModalSearch();
    });

    function closeModalSearch() {
        modal.style.display = 'none'; 
        input.value = ''; 
        resultsList.innerHTML = ''; 
    }

    // Input Ricerca
    input.addEventListener('input', async (e) => {
        const query = e.target.value;
        if (query.length < 2) return;

        try {
            const response = await fetch(`/api/search/songs?q=${query}&playlist_id=${currentPlaylistId}`);
            const songs = await response.json();
            renderResults(songs);
        } catch (err) { console.error(err); }
    });

    function renderResults(songs) {
        resultsList.innerHTML = '';
        songs.forEach(song => {
            const li = document.createElement('li');
            // Nota: Lo stile è gestito dal CSS ora, qui mettiamo solo struttura
            
            const span = document.createElement('span');
            span.textContent = song.titolo_canzone;
            span.style.fontWeight = '500';
            
            const btn = document.createElement('button');
            if (song.gia_presente) {
                styleAsChecked(btn);
            } else {
                styleAsAdd(btn);
                btn.onclick = () => addSongToPlaylist(song.id_canzone, btn);
            }
            
            li.appendChild(span);
            li.appendChild(btn);
            resultsList.appendChild(li);
        });
    }

    // Aggiunta Canzone
    async function addSongToPlaylist(songId, btn) {
        try {
            const originalText = btn.textContent;
            btn.textContent = "...";
            btn.disabled = true;

            const response = await fetch('/api/playlist/add-song', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ playlist_id: currentPlaylistId, song_id: songId })
            });
            
            const res = await response.json();
            if (res.success) {
                styleAsChecked(btn);
                btn.onclick = null;
                // Ricarica la lista sottostante senza refreshare la pagina
                await updatePlaylistUI(); 
            } else {
                alert(res.message);
                btn.textContent = originalText;
                btn.disabled = false;
            }
        } catch (err) { 
            console.error(err); 
            btn.textContent = "+";
            btn.disabled = false;
        }
    }

    // Helper Stili Bottoni Modale (Inline per semplicità nel modale dinamico)
    function styleAsAdd(btn) { 
        btn.textContent = "+"; 
        btn.style.cssText = "background:var(--wood-accent); color:white; border:none; border-radius:50%; width:32px; height:32px; cursor:pointer; font-weight:bold;"; 
    }
    function styleAsChecked(btn) { 
        btn.textContent = "✓"; 
        btn.style.cssText = "background:#4CAF50; color:white; border:none; border-radius:50%; width:32px; height:32px; cursor:default;"; 
    }


    // ============================================================
    // 2. NUOVA LOGICA RIMOZIONE (EVENT DELEGATION)
    // ============================================================
    // Ascoltiamo i click su tutto il documento. Se il click avviene su .js-remove-song, agiamo.
    
    document.addEventListener('click', async function(e) {
        
        // 1. Identifica il bottone (anche se clicchi sull'icona interna)
        const removeBtn = e.target.closest('.js-remove-song');
        
        // Se non abbiamo cliccato un tasto rimuovi, non fare nulla
        if (!removeBtn) return;

        // 2. Blocca propagazione (impedisce di aprire il link della canzone)
        e.preventDefault();
        e.stopPropagation();

        // 3. Recupera ID e Riga HTML
        const songId = removeBtn.dataset.songId;
        const row = removeBtn.closest('.song-list-item');

        // 4. Feedback Visivo Immediato (Opacity)
        if (row) {
            row.style.transition = 'all 0.3s ease';
            row.style.opacity = '0.4'; // Diventa semi-trasparente subito
            row.style.pointerEvents = 'none'; // Blocca altri click
        }

        try {
            // 5. Chiamata API
            const response = await fetch('/api/playlist/remove-song', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ 
                    playlist_id: currentPlaylistId, 
                    song_id: songId 
                })
            });
            
            // Gestione risposta anche se non è JSON puro
            const text = await response.text();
            let res;
            try { res = JSON.parse(text); } catch(e) { res = { success: false, message: "Errore Server" }; }

            if (res.success) {
                // 6. Successo: Animazione di uscita e rimozione dal DOM
                if (row) {
                    row.style.transform = 'translateX(30px)'; // Scivola a destra
                    row.style.opacity = '0'; // Svanisce
                    
                    // Aspetta la fine dell'animazione CSS (300ms) poi rimuovi
                    setTimeout(() => {
                        row.remove();
                        checkEmptyState(); // Controlla se la lista è vuota
                    }, 300);
                }
            } else {
                // Errore: Ripristina
                console.error("Errore rimozione:", res.message);
                if (row) {
                    row.style.opacity = '1';
                    row.style.pointerEvents = 'auto';
                }
                alert("Impossibile rimuovere: " + (res.message || "Errore sconosciuto"));
            }

        } catch (err) {
            console.error(err);
            if (row) {
                row.style.opacity = '1';
                row.style.pointerEvents = 'auto';
            }
        }
    });

    // Funzione opzionale: se elimini tutto mostra un messaggio
    function checkEmptyState() {
        const grid = document.querySelector('.content-grid');
        // Controlliamo se ci sono ancora elementi .song-list-item visibili
        if (grid && grid.querySelectorAll('.song-list-item').length === 0) {
            grid.innerHTML = '<div style="text-align:center; padding:2rem; opacity:0.6;">Questa playlist è vuota.</div>';
        }
    }

});

// --- FUNZIONI UTILITY GLOBALI ---

// Aggiorna la griglia canzoni senza ricaricare l'intera pagina
// Viene chiamata dopo aver aggiunto una canzone dal modale
async function updatePlaylistUI() {
    try {
        // Aggiungiamo un timestamp per evitare la cache del browser
        const url = window.location.href.split('?')[0] + '?t=' + new Date().getTime();
        
        const response = await fetch(url, { cache: "no-store" });
        const htmlText = await response.text();
        
        // Parsifica l'HTML ricevuto
        const parser = new DOMParser();
        const doc = parser.parseFromString(htmlText, 'text/html');
        
        // Sostituisce solo la griglia
        const newGrid = doc.querySelector('.content-grid');
        const oldGrid = document.querySelector('.content-grid');
        
        if (newGrid && oldGrid) {
            oldGrid.innerHTML = newGrid.innerHTML;
        }
    } catch (err) { console.error("Errore aggiornamento UI:", err); }
}