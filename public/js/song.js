document.addEventListener('DOMContentLoaded', function () {

<<<<<<< HEAD

    
    const authModal = document.getElementById('auth-modal');
    const closeAuthBtn = document.getElementById('close-auth-modal');
=======
    // --- 0. SETUP & VARIABILI ---
>>>>>>> 6db5a21 (commit marco)
    const playlistToggleBtn = document.getElementById('playlist-toggle');
    const playlistMenu = document.getElementById('playlist-menu');
    const processingItems = new Set();

    const currentSongId = playlistToggleBtn ? playlistToggleBtn.dataset.songId : null;

<<<<<<< HEAD
    
    const currentSongId = playlistToggleBtn.dataset.songId;

=======
    // --- 3. GESTIONE MENU A TENDINA ---
>>>>>>> 6db5a21 (commit marco)
    if (playlistToggleBtn && playlistMenu) {

        const closeMenu = () => {
            playlistMenu.classList.remove('show');
            playlistToggleBtn.setAttribute('aria-expanded', 'false');
            document.removeEventListener('keydown', handleEscKey);
        };

        const handleEscKey = (e) => {
            if (e.key === 'Escape') {
                closeMenu();
                playlistToggleBtn.focus();
            }
        };

        playlistToggleBtn.addEventListener('click', function (e) {
            e.stopPropagation();

            if (!isUserLoggedIn()) {
                showLoginBanner();
                return;
            }

            const willExpand = playlistToggleBtn.getAttribute('aria-expanded') === 'false';

            if (willExpand) {
                playlistMenu.classList.add('show');
                playlistToggleBtn.setAttribute('aria-expanded', 'true');
                document.addEventListener('keydown', handleEscKey);

                // *** 1. MODIFICA: Sposta il focus sul primo checkbox all'apertura ***
                setTimeout(() => {
                    const firstInput = playlistMenu.querySelector('input[type="checkbox"]');
                    if (firstInput) {
                        firstInput.focus();
                    }
                }, 50); // Piccolo ritardo per dare tempo al browser di mostrare il menu

            } else {
                closeMenu();
            }
        });

        document.addEventListener('click', function (e) {
            if (playlistMenu.classList.contains('show') && !playlistToggleBtn.contains(e.target)) {
                closeMenu();
            }
        });

        playlistMenu.addEventListener('click', (e) => e.stopPropagation());

        // *** 2. MODIFICA: Blocca la barra spaziatrice dentro il menu ***
        // Se premo spazio su un checkbox, deve flaggare il checkbox, NON avviare l'autoscroll
        playlistMenu.addEventListener('keydown', (e) => {
            if (e.key === ' ' || e.code === 'Space') {
                e.stopPropagation(); // Ferma l'evento qui, non farlo arrivare a window
            }
        });
    }

    const checkboxes = document.querySelectorAll('.playlist-checklist input[type="checkbox"]');

    checkboxes.forEach(chk => {
        chk.addEventListener('change', async function () {

            const playlistId = this.value;


            if (processingItems.has(playlistId)) {
                this.checked = !this.checked;
                return;
            }

            processingItems.add(playlistId);
            const parentLabel = this.closest('label');
            parentLabel.style.opacity = "0.5";

            const isChecked = this.checked;

            const success = await toggleSongInPlaylist(playlistId, currentSongId, isChecked);

            processingItems.delete(playlistId);
            parentLabel.style.opacity = "1"; 

            if (!success) {
                this.checked = !isChecked;
                alert("Errore nell'aggiornamento della playlist"); 
            }
        });
    });


    // --- AUTOSCROLL ---
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

            scrollAccumulator += (currentSpeed / 10);

            if (scrollAccumulator >= 1) {
                const pixelsToMove = Math.floor(scrollAccumulator);
                window.scrollBy(0, pixelsToMove);
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

            btn.setAttribute('aria-pressed', 'true');
            btn.setAttribute('aria-label', 'Ferma scorrimento automatico');

            performScroll();
        }

        function stopScrolling() {
            isScrolling = false;
            scrollAccumulator = 0;

            btn.classList.remove('active');
            btnText.innerText = "Autoscroll";
            btnIcon.innerText = "▶";

            btn.setAttribute('aria-pressed', 'false');
            btn.setAttribute('aria-label', 'Avvia scorrimento automatico');

            if (animationFrameId) cancelAnimationFrame(animationFrameId);
        }

        btn.addEventListener('click', () => {
            isScrolling ? stopScrolling() : startScrolling();
        });

        speedInput.addEventListener('input', (e) => {
            currentSpeed = parseFloat(e.target.value);
            speedDisplay.innerText = currentSpeed.toFixed(1) + "x";
            speedInput.setAttribute('aria-valuetext', `Velocità ${currentSpeed.toFixed(1)}x`);
        });

        // *** 3. MODIFICA: Controllo extra nell'ascoltatore globale ***
        window.addEventListener('keydown', (e) => {
            // Controlla se il menu playlist esiste ed è aperto/contiene il focus
            const menu = document.getElementById('playlist-menu');
            const isInsideMenu = menu && menu.contains(e.target);

            if (e.code === "Space" && 
                e.target.tagName !== 'INPUT' && 
                e.target.tagName !== 'TEXTAREA' &&
                !isInsideMenu // Se sono nel menu, IGNORA questo comando
            ) {
                e.preventDefault();
                btn.click();
            }
        });


        const mediaQuery = window.matchMedia('(prefers-reduced-motion: reduce)');
        if (mediaQuery.matches) {
            currentSpeed = 0.5;
            speedInput.value = 0.5;
            speedDisplay.innerText = "0.5x";
        }

    };

    autoscroll();
});