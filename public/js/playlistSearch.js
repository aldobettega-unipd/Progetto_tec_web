document.addEventListener('DOMContentLoaded', () => {
    
    // --- 1. SETUP ELEMENTI ---
    const openBtn = document.getElementById('open-search-modal');
    const closeBtn = document.getElementById('close-search-modal');
    const modal = document.getElementById('search-modal');
    const input = document.getElementById('search-input');
    const resultsList = document.getElementById('search-results');

    // Se non siamo sulla pagina giusta, fermiamo lo script per evitare errori
    if (!openBtn) return; 

    const playlistId = openBtn.dataset.playlistId;

    // --- 2. GESTIONE MODAL ---
    openBtn.addEventListener('click', () => { modal.style.display = 'block'; input.focus(); });
    closeBtn.addEventListener('click', () => { 
        modal.style.display = 'none'; 
        input.value = ''; 
        resultsList.innerHTML = ''; 
    });

    // --- 3. RICERCA ---
    input.addEventListener('input', async (e) => {
        const query = e.target.value;
        if (query.length < 2) return;

        try {
            const response = await fetch(`/api/search/songs?q=${query}&playlist_id=${playlistId}`);
            const songs = await response.json();
            renderResults(songs);
        } catch (err) { console.error(err); }
    });

    function renderResults(songs) {
        resultsList.innerHTML = '';
        songs.forEach(song => {
            const li = document.createElement('li');
            li.style.cssText = "display:flex; justify-content:space-between; padding:10px; border-bottom:1px solid #eee;";
            
            const span = document.createElement('span');
            span.textContent = song.titolo_canzone;
            
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

    // --- 4. AGGIUNTA ---
    async function addSongToPlaylist(songId, btn) {
        try {
            btn.textContent = "...";
            const response = await fetch('/api/playlist/add-song', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ playlist_id: playlistId, song_id: songId })
            });
            
            const res = await response.json();
            if (res.success) {
                styleAsChecked(btn);
                btn.onclick = null;
                await updatePlaylistUI(); // Ricarica la lista sotto
            } else {
                alert(res.message);
                styleAsAdd(btn);
            }
        } catch (err) { console.error(err); styleAsAdd(btn); }
    }

    // Styles helpers
    function styleAsAdd(btn) { 
        btn.textContent = "+"; 
        btn.style.cssText = "background:#007bff; color:white; border:none; border-radius:50%; width:30px; height:30px; cursor:pointer;"; 
    }
    function styleAsChecked(btn) { 
        btn.textContent = "✓"; 
        btn.style.cssText = "background:#28a745; color:white; border:none; border-radius:50%; width:30px; height:30px; cursor:default;"; 
    }
});

// --- FUNZIONI GLOBALI (FUORI DAL DOMContentLoaded) ---
// Questo le rende visibili all'HTML onclick="..."

// Aggiorna la griglia canzoni senza ricaricare la pagina
async function updatePlaylistUI() {
    try {
        const url = window.location.href.split('?')[0] + '?t=' + new Date().getTime();
        const response = await fetch(url, { cache: "no-store" });
        const htmlText = await response.text();
        const parser = new DOMParser();
        const doc = parser.parseFromString(htmlText, 'text/html');
        
        const newGrid = doc.querySelector('.content-grid');
        const oldGrid = document.querySelector('.content-grid');
        if (newGrid && oldGrid) oldGrid.innerHTML = newGrid.innerHTML;
    } catch (err) { console.error(err); }
}

// Apre il menu a tendina
window.toggleMenu = function(menuId, event) {
    if (event) event.stopPropagation(); // Evita conflitti
    
    // Chiudi tutti gli altri prima
    document.querySelectorAll('.dropdown-content').forEach(el => {
        if (el.id !== menuId) el.classList.remove('show');
    });

    // Apri quello giusto
    const menu = document.getElementById(menuId);
    if (menu) {
        menu.classList.toggle('show');
        console.log("Toggle menu:", menuId); // Debug per vedere se clicchi
    } else {
        console.error("Menu non trovato:", menuId);
    }
}

// Chiude cliccando fuori
window.onclick = function(event) {
    if (!event.target.matches('.kebab-btn')) {
        document.querySelectorAll('.dropdown-content').forEach(el => {
            el.classList.remove('show');
        });
    }
}

// Logica Eliminazione
window.rimuoviCanzone = async function(songId) {
    if (!confirm("Rimuovere questa canzone?")) return;

    // Recupera ID playlist dal bottone presente in pagina
    const btnData = document.getElementById('open-search-modal');
    const playlistId = btnData ? btnData.dataset.playlistId : null;

    try {
        const response = await fetch('/api/playlist/remove-song', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ playlist_id: playlistId, song_id: songId })
        });
        
        const res = await response.json();
        if (res.success) {
            await updatePlaylistUI(); // Aggiorna la vista rimuovendo la riga
        } else {
            alert("Errore: " + res.message);
        }
    } catch (err) {
        console.error(err);
        alert("Errore di connessione");
    }
}