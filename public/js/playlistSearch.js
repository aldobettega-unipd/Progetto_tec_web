document.addEventListener('DOMContentLoaded', () => {

    const openBtn = document.getElementById('open-search-modal');
    const closeBtn = document.getElementById('close-search-modal');
    const modal = document.getElementById('search-modal');
    const input = document.getElementById('search-input');
    const resultsList = document.getElementById('search-results');

    if (!openBtn) return;

    const currentPlaylistId = openBtn.dataset.playlistId;

    let currentFocusIndex = -1; // Indice del risultato attualmente in focus
    let searchResults = []; // Array dei risultati correnti
    let searchTimeout = null; // Debounce per la ricerca

    openBtn.addEventListener('click', (e) => {
        e.preventDefault();
        modal.classList.remove('hidden');

        modal.setAttribute('aria-hidden', 'false');
        input.focus();
        announceToScreenReader('Modale di ricerca aperto. Inserisci almeno 2 caratteri per cercare.');
    });

    closeBtn.addEventListener('click', (e) => {
        e.preventDefault();
        closeModalSearch();
    });

    modal.addEventListener('click', (e) => {
        if (e.target === modal) closeModalSearch();
    });
<<<<<<< HEAD

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

=======
 
>>>>>>> develop
    modal.addEventListener('keydown', (e) => {
        if (e.key === 'Escape') {
            closeModalSearch();
        }
    });

    input.addEventListener('input', async (e) => {
        const query = e.target.value.trim();

        // Reset focus quando l'utente digita
        currentFocusIndex = -1;

        // Pulisce il timeout precedente
        if (searchTimeout) {
            clearTimeout(searchTimeout);
        }

        if (query.length < 2) {
            resultsList.innerHTML = '';
            resultsList.setAttribute('aria-busy', 'false');
            return;
        }

        resultsList.setAttribute('aria-busy', 'true');
        resultsList.innerHTML = '<li class="loading-message" role="status">Ricerca in corso...</li>';

        searchTimeout = setTimeout(async () => {
            try {
                const response = await fetch(`${BASE_URL}/api/search/songs?q=${encodeURIComponent(query)}&playlist_id=${currentPlaylistId}`);
                const songs = await response.json();
                searchResults = songs;
                renderResults(songs);

                announceToScreenReader(`${songs.length} risultati trovati per "${query}"`);

            } catch (err) {
                console.error("Errore ricerca:", err);
                resultsList.innerHTML = '<li class="error-message" role="alert">Errore durante la ricerca. Riprova.</li>';
                announceToScreenReader('Errore durante la ricerca');
            } finally {
                resultsList.setAttribute('aria-busy', 'false');
            }
        }, 300);
    });

    input.addEventListener('keydown', (e) => {
        const items = resultsList.querySelectorAll('li:not(.loading-message):not(.error-message)');

        if (items.length === 0) return;

        switch (e.key) {
            case 'ArrowDown':
                e.preventDefault();
                currentFocusIndex = (currentFocusIndex + 1) % items.length;
                updateFocus(items);
                break;

            case 'ArrowUp':
                e.preventDefault();
                currentFocusIndex = currentFocusIndex <= 0 ? items.length - 1 : currentFocusIndex - 1;
                updateFocus(items);
                break;

            case 'Enter':
                e.preventDefault();
                if (currentFocusIndex >= 0 && currentFocusIndex < items.length) {
                    const btn = items[currentFocusIndex].querySelector('button:not([disabled])');
                    if (btn) btn.click();
                }
                break;
        }
    });

    function updateFocus(items) {
        items.forEach((item, idx) => {
            if (idx === currentFocusIndex) {
                item.classList.add('keyboard-focus');
                item.setAttribute('aria-selected', 'true');
                item.scrollIntoView({ block: 'nearest', behavior: 'smooth' });

                // Annuncia l'item corrente
                const songTitle = item.querySelector('span').textContent;
                const isAdded = item.querySelector('button').disabled;
                announceToScreenReader(`${songTitle}. ${isAdded ? 'Già presente' : 'Premi invio per aggiungere'}`);
            } else {
                item.classList.remove('keyboard-focus');
                item.setAttribute('aria-selected', 'false');
            }
        });
    }

    function renderResults(songs) {
        resultsList.innerHTML = '';

        if (songs.length === 0) {
            resultsList.innerHTML = '<li class="no-results" role="status">Nessun risultato trovato</li>';
            return;
        }

        songs.forEach((song, index) => {
            const li = document.createElement('li');
            li.setAttribute('role', 'option');
            li.setAttribute('aria-selected', 'false');
            li.setAttribute('data-song-id', song.id_canzone);

            const span = document.createElement('span');
            span.textContent = song.titolo_canzone;
            span.style.fontWeight = '500';
            span.id = `song-title-${song.id_canzone}`;

            const btn = document.createElement('button');
            btn.type = 'button';

            if (song.gia_presente) {
                styleAsChecked(btn);
                btn.setAttribute('aria-label', `${song.titolo_canzone} - Già presente nella playlist`);
                btn.setAttribute('aria-describedby', `song-title-${song.id_canzone}`);
            } else {
                styleAsAdd(btn);
                btn.setAttribute('aria-label', `Aggiungi ${song.titolo_canzone} alla playlist`);
                btn.setAttribute('aria-describedby', `song-title-${song.id_canzone}`);
                btn.onclick = () => addSongToPlaylist(song.id_canzone, btn, song.titolo_canzone);
            }

            li.appendChild(span);
            li.appendChild(btn);
            resultsList.appendChild(li);
        });
    }

    async function addSongToPlaylist(songId, btn, songTitle) {
        try {
            const originalText = btn.textContent;
            const originalLabel = btn.getAttribute('aria-label');

            btn.textContent = "...";
            btn.setAttribute('aria-label', `Aggiunta di ${songTitle} in corso`);
            btn.setAttribute('aria-busy', 'true');
            btn.disabled = true;

            const response = await fetch(`${BASE_URL}/api/playlist/add-song`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ playlist_id: currentPlaylistId, song_id: songId })
            });

            const res = await response.json();

            if (res.success) {
                styleAsChecked(btn);
                btn.setAttribute('aria-label', `${songTitle} - Aggiunta alla playlist con successo`);
                btn.setAttribute('aria-busy', 'false');
                btn.onclick = null;

                announceToScreenReader(`${songTitle} aggiunta con successo alla playlist`);

                await updatePlaylistUI();
            } else {
                alert(res.message);
                btn.textContent = originalText;
                btn.setAttribute('aria-label', originalLabel);
                btn.setAttribute('aria-busy', 'false');
                btn.disabled = false;
            }
        } catch (err) {
            console.error(err);
            btn.textContent = "+";
            btn.setAttribute('aria-label', `Aggiungi ${songTitle} alla playlist`);
            btn.setAttribute('aria-busy', 'false');
            btn.disabled = false;
            announceToScreenReader('Errore durante l\'aggiunta. Riprova.');
        }
    }

    document.addEventListener('click', async function (e) {
        const removeBtn = e.target.closest('.js-remove-song');
        if (!removeBtn) return;

        e.preventDefault();
        e.stopPropagation();

        const songId = removeBtn.dataset.songId;
        const row = removeBtn.closest('.song-list-item');
        const songTitle = row?.querySelector('.song-title')?.textContent || 'questa canzone';

        if (row) {
            row.style.transition = 'all 0.3s ease';
            row.style.opacity = '0.4';
            row.style.pointerEvents = 'none';
            row.setAttribute('aria-busy', 'true');
        }

        try {

            // 5. Chiamata API di rimozione
            const response = await fetch(`${BASE_URL}/api/playlist/remove-song`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    playlist_id: currentPlaylistId,
                    song_id: songId
                })
            });

            const text = await response.text();
            let res;
            try { res = JSON.parse(text); } catch (e) { res = { success: false, message: "Errore Server Generico" }; }

            if (res.success) {
                if (row) {
                    row.style.transform = 'translateX(30px)';
                    row.style.opacity = '0';

                    announceToScreenReader(`${songTitle} rimossa dalla playlist`);

                    setTimeout(() => {
                        row.remove();
                        checkEmptyState();
                    }, 300);
                }
            } else {
                console.error("Errore rimozione:", res.message);
                if (row) {
                    row.style.opacity = '1';
                    row.style.pointerEvents = 'auto';
                    row.style.transform = 'none';
                    row.setAttribute('aria-busy', 'false');
                }
                announceToScreenReader("Impossibile rimuovere la canzone. " + (res.message || "Errore sconosciuto"));
                alert("Impossibile rimuovere: " + (res.message || "Errore sconosciuto"));
            }

        } catch (err) {
            console.error(err);
            if (row) {
                row.style.opacity = '1';
                row.style.pointerEvents = 'auto';
                row.setAttribute('aria-busy', 'false');
            }
            announceToScreenReader('Errore di connessione. Riprova.');
        }
    });

    function closeModalSearch() {
        modal.classList.add('hidden');
        modal.setAttribute('aria-hidden', 'true');
        input.value = '';
        resultsList.innerHTML = '';
        currentFocusIndex = -1;
        searchResults = [];

        //  Riporta il focus al pulsante che ha aperto il modale
        openBtn.focus();
        announceToScreenReader('Modale di ricerca chiuso');
    }

    function styleAsAdd(btn) {
        btn.textContent = "+";
        btn.style.cssText = "background:var(--wood-accent); color:black; border:none; border-radius:50%; width:32px; height:32px; cursor:pointer; font-weight:bold;";
    }

    function styleAsChecked(btn) {
        btn.textContent = "✓";
        btn.style.cssText = "background:#4CAF50; color:black; border:none; border-radius:50%; width:32px; height:32px; cursor:default;";
        btn.disabled = true;
    }

    function checkEmptyState() {
        const grid = document.querySelector('.content-grid');
        if (grid && grid.querySelectorAll('.song-list-item').length === 0) {
            grid.innerHTML = '<div role="status" style="text-align:center; padding:3rem; opacity:0.6; font-style:italic;">Questa playlist è ancora vuota. Cerca e aggiungi canzoni!</div>';
            announceToScreenReader('La playlist è ora vuota');
        }
    }

    function announceToScreenReader(message) {
        const liveRegion = document.getElementById('aria-live-region');
        if (liveRegion) {

            liveRegion.textContent = '';
            setTimeout(() => {
                liveRegion.textContent = message;
            }, 100);
        }
    }

    modal.addEventListener('keydown', (e) => {
        if (e.key === 'Tab') {
            const focusableElements = modal.querySelectorAll('button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])');
            const firstElement = focusableElements[0];
            const lastElement = focusableElements[focusableElements.length - 1];

            if (e.key === 'Escape') {
                closeModalSearch();
                return; // Esce dalla funzione
            }

            if (e.shiftKey) { // Shift + Tab
                if (document.activeElement === firstElement) {
                    e.preventDefault();
                    lastElement.focus();
                }
            } else { // Tab
                if (document.activeElement === lastElement) {
                    e.preventDefault();
                    firstElement.focus();
                }
            }
        }
    });

});

// funzione globale

async function updatePlaylistUI() {
    try {
        const url = window.location.href.split('?')[0] + '?t=' + new Date().getTime();
        const response = await fetch(url, { cache: "no-store" });
        const htmlText = await response.text();

        const parser = new DOMParser();
        const doc = parser.parseFromString(htmlText, 'text/html');

        const newGrid = doc.querySelector('.content-grid');
        const oldGrid = document.querySelector('.content-grid');

        if (newGrid && oldGrid) {
            oldGrid.innerHTML = newGrid.innerHTML;
        }
    } catch (err) {
        console.error("Errore critico durante l'aggiornamento UI:", err);
    }
}