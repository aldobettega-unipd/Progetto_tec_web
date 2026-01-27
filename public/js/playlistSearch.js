document.addEventListener('DOMContentLoaded', () => {
    
    // Seleziona gli elementi DOM
    const openBtn = document.getElementById('open-search-modal');
    const closeBtn = document.getElementById('close-search-modal');
    const modal = document.getElementById('search-modal');
    const input = document.getElementById('search-input');
    const resultsList = document.getElementById('search-results');

    // Recupera l'ID playlist dall'HTML (data-playlist-id)
    const playlistId = openBtn.dataset.playlistId;

    // --- 1. Gestione Apertura/Chiusura ---
    openBtn.addEventListener('click', () => {
        modal.style.display = 'block'; // O usa una classe CSS se preferisci
    });

    closeBtn.addEventListener('click', () => {
        modal.style.display = 'none';
        input.value = '';
        resultsList.innerHTML = '';
    });

    // --- 2. Gestione Ricerca (API) ---
    input.addEventListener('input', async (e) => {
        const query = e.target.value;
        if (query.length < 2) return;

        try {
            const response = await fetch(`/api/search/songs?q=${query}&playlist_id=${playlistId}`);
            const songs = await response.json();
            renderResults(songs);
        } catch (err) {
            console.error('Errore ricerca:', err);
        }
    });

    // --- 3. Rendering Risultati ---
    function renderResults(songs) {
        resultsList.innerHTML = '';
        
        songs.forEach(song => {
            const li = document.createElement('li');
            li.className = "search-result-item"; // Classe per CSS opzionale
            
            // Testo Canzone
            const span = document.createElement('span');
            span.textContent = song.titolo_canzone; // + " - " + song.autore_canzone (se ce l'hai)
            
            // Bottone
            const btn = document.createElement('button');
            
            // CONTROLLO DEL FLAG (che arriva dal Controller PHP)
            if (song.gia_presente === true) {
                // CASO 1: Già presente -> Bottone verde spuntato
                styleAsChecked(btn);
            } else {
                // CASO 2: Non presente -> Bottone "+" cliccabile
                styleAsAdd(btn);
                
                // Assegna il click SOLO se non è presente
                btn.onclick = () => addSongToPlaylist(song.id_canzone, btn);
            }
            
            li.appendChild(span);
            li.appendChild(btn);
            resultsList.appendChild(li);
        });
    }

    function styleAsAdd(btn) {
        btn.textContent = "+";
        btn.className = "btn-add"; // Usa classi CSS se puoi
        // Stile inline fallback
        btn.style.cursor = "pointer";
        btn.style.backgroundColor = "#007bff"; 
        btn.style.color = "white";
        btn.style.border = "none";
        btn.style.borderRadius = "50%";
        btn.style.width = "30px";
        btn.style.height = "30px";
    }

    function styleAsChecked(btn) {
        btn.textContent = "✓";
        btn.className = "btn-checked";
        // Stile inline fallback
        btn.style.cursor = "default";
        btn.style.backgroundColor = "#28a745"; // Verde
        btn.style.color = "white";
        btn.style.border = "none";
        btn.style.borderRadius = "50%";
        btn.style.width = "30px";
        btn.style.height = "30px";
    }

    // --- 4. Aggiunta alla Playlist (API) ---
    async function addSongToPlaylist(songId, btn) {
        try {
            btn.textContent = "..."; 
            btn.disabled = true;

            const response = await fetch('/api/playlist/add-song', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    playlist_id: playlistId,
                    song_id: songId
                })
            });

            const result = await response.json();

            if (result.success) {
                // 1. Feedback visivo sul bottone
                styleAsChecked(btn);
                btn.onclick = null; 

                // 2. AGGIORNAMENTO LIVE DELLA GRIGLIA
                await updatePlaylistUI(); 

            } else {
                alert('Errore: ' + result.message);
                styleAsAdd(btn); 
            }
        } catch (err) {
            console.error('Errore aggiunta:', err);
            styleAsAdd(btn);
        }
    }

    // --- 5. Funzione Magica per l'Aggiornamento Live ---
    // --- 5. FUNZIONE AGGIORNAMENTO UI (Fetch & Replace) ---
    async function updatePlaylistUI() {
        try {
            console.log("Inizio aggiornamento vista...");
            
            // TRUCCO ANTI-CACHE: Aggiungiamo un timestamp all'URL per forzare il server a rispondere
            const url = window.location.href.split('?')[0] + '?t=' + new Date().getTime();

            // Scarica l'HTML aggiornato forzando il network (no-store)
            const response = await fetch(url, { 
                cache: "no-store",
                headers: { 'Pragma': 'no-cache', 'Cache-Control': 'no-cache' }
            });
            
            const htmlText = await response.text();

            // Parsa l'HTML in un documento virtuale
            const parser = new DOMParser();
            const doc = parser.parseFromString(htmlText, 'text/html');

            // Trova la griglia vecchia e quella nuova
            const newGrid = doc.querySelector('.content-grid');
            const oldGrid = document.querySelector('.content-grid');

            if (newGrid && oldGrid) {
                // Sostituisce il contenuto HTML
                oldGrid.innerHTML = newGrid.innerHTML;
                console.log("Vista aggiornata con successo! Nuovi elementi caricati.");
                
                // IMPORTANTE: Se il tuo carosello usa Javascript per le frecce, 
                // qui dovresti richiamare la funzione che lo inizializza.
                // Es: if (window.initCarousel) window.initCarousel();
            } else {
                console.warn("Impossibile trovare .content-grid per l'aggiornamento live");
            }
        } catch (err) {
            console.error("Errore durante l'aggiornamento UI:", err);
        }
    }
});