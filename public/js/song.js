document.addEventListener('DOMContentLoaded', function () {

    // --- 0. SETUP & VARIABILI ---

    
    const authModal = document.getElementById('auth-modal');
    const closeAuthBtn = document.getElementById('close-auth-modal');
    const playlistToggleBtn = document.getElementById('playlist-toggle');
    const playlistMenu = document.getElementById('playlist-menu');


    // Recuperiamo l'ID della canzone dal bottone playlist (come da tuo HTML)
    const currentSongId = playlistToggleBtn.dataset.songId;


    // --- 3. GESTIONE MENU A TENDINA (Apri/Chiudi) ---
    if (playlistToggleBtn && playlistMenu) {

        playlistToggleBtn.addEventListener('click', function (e) {
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
        document.addEventListener('click', function () {
            if (playlistMenu.classList.contains('show')) {
                playlistMenu.classList.remove('show');
                playlistToggleBtn.setAttribute('aria-expanded', 'false');
            }
        });

        // Evita chiusura cliccando dentro il menu
        playlistMenu.addEventListener('click', function (e) {
            e.stopPropagation();
        });
    }


    // --- 4. GESTIONE CHECKBOX PLAYLIST (La lista) ---
    const checkboxes = document.querySelectorAll('.playlist-checklist input[type="checkbox"]');

    checkboxes.forEach(chk => {
        chk.addEventListener('change', async function () {
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

    

    function autoscroll() {
        let isScrolling = false;
        let currentSpeed = 1.5;
        let animationFrameId = null;
        let scrollAccumulator = 0;

        const btn = document.getElementById('scrollToggle');
        const btnText = document.getElementById('scrollText');
        const btnIcon = document.getElementById('scrollIcon');
        const speedInput = document.getElementById('scrollSpeed');
        const speedDisplay = document.getElementById('speedValDisplay');

        function performScroll() {
           if (!isScrolling) return;

        // Invece di scrollare subito, aggiungiamo il valore all'accumulatore
        // Qui non dividiamo più per 4, usiamo il valore puro o un fattore fisso
        scrollAccumulator += (currentSpeed / 10); 

        // Se abbiamo accumulato almeno 1 pixel...
        if (scrollAccumulator >= 1) {
            // Calcoliamo quanti pixel interi possiamo muovere
            const pixelsToMove = Math.floor(scrollAccumulator);
            
            // Muoviamo la pagina di pixel INTERI
            window.scrollBy(0, pixelsToMove);
            
            // Sottraiamo i pixel mossi, tenendo il "resto" decimale per il prossimo frame
            scrollAccumulator -= pixelsToMove;
        }

        const isAtBottom = (window.innerHeight + window.pageYOffset) >= document.documentElement.scrollHeight - 2;

        if (isAtBottom) {
            stopScrolling();
        } else {
            animationFrameId = requestAnimationFrame(performScroll);
        }
    }

        function startScrolling() {
            isScrolling = true;
            btn.classList.add('active');
            btnText.innerText = "Ferma";
            btnIcon.innerText = "■";
            performScroll();
        }

        function stopScrolling() {
            isScrolling = false;
            scrollAccumulator = 0; // Reset fondamentale
            btn.classList.remove('active');
            btnText.innerText = "Autoscroll";
            btnIcon.innerText = "▶";
            if (animationFrameId) cancelAnimationFrame(animationFrameId);
        }

        // Event Listeners
        btn.addEventListener('click', () => {
            isScrolling ? stopScrolling() : startScrolling();
        });

        speedInput.addEventListener('input', (e) => {
            currentSpeed = parseFloat(e.target.value);
            speedDisplay.innerText = currentSpeed.toFixed(1) + "x";
        });

        // Scorciatoia da tastiera: Barra Spaziatrice
        window.addEventListener('keydown', (e) => {
            // Evitiamo di attivarlo se l'utente sta scrivendo in una eventuale barra di ricerca
            if (e.code === "Space" && e.target.tagName !== 'INPUT' && e.target.tagName !== 'TEXTAREA') {
                e.preventDefault();
                btn.click();
            }
        });

        // Dark Mode toggle support (opzionale: se la tua pagina cambia classe al body)
        // Il widget usa già le variabili CSS, quindi cambierà colore automaticamente
    };
    autoscroll();
});

