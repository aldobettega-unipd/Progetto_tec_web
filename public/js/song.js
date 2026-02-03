document.addEventListener('DOMContentLoaded', function () {


    
    const authModal = document.getElementById('auth-modal');
    const closeAuthBtn = document.getElementById('close-auth-modal');
    const playlistToggleBtn = document.getElementById('playlist-toggle');
    const playlistMenu = document.getElementById('playlist-menu');


    
    const currentSongId = playlistToggleBtn.dataset.songId;

    if (playlistToggleBtn && playlistMenu) {

        playlistToggleBtn.addEventListener('click', function (e) {
            e.stopPropagation();

        
            if (!isUserLoggedIn()) {
                showLoginBanner();
                return;
            }

            playlistMenu.classList.toggle('show');
            const isExpanded = playlistToggleBtn.getAttribute('aria-expanded') === 'true';
            playlistToggleBtn.setAttribute('aria-expanded', !isExpanded);
        });

        document.addEventListener('click', function () {
            if (playlistMenu.classList.contains('show')) {
                playlistMenu.classList.remove('show');
                playlistToggleBtn.setAttribute('aria-expanded', 'false');
            }
        });

        playlistMenu.addEventListener('click', function (e) {
            e.stopPropagation();
        });
    }


    const checkboxes = document.querySelectorAll('.playlist-checklist input[type="checkbox"]');

    checkboxes.forEach(chk => {
        chk.addEventListener('change', async function () {
           
            const playlistId = this.value;
            const isChecked = this.checked;

            
            this.disabled = true;

            const success = await toggleSongInPlaylist(playlistId, currentSongId, isChecked);

            if (!success) {
            
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
            performScroll();
        }

        function stopScrolling() {
            isScrolling = false;
            scrollAccumulator = 0;
            btn.classList.remove('active');
            btnText.innerText = "Autoscroll";
            btnIcon.innerText = "▶";
            if (animationFrameId) cancelAnimationFrame(animationFrameId);
        }

        btn.addEventListener('click', () => {
            isScrolling ? stopScrolling() : startScrolling();
        });

        speedInput.addEventListener('input', (e) => {
            currentSpeed = parseFloat(e.target.value);
            speedDisplay.innerText = currentSpeed.toFixed(1) + "x";
        });

        window.addEventListener('keydown', (e) => {
            if (e.code === "Space" && e.target.tagName !== 'INPUT' && e.target.tagName !== 'TEXTAREA') {
                e.preventDefault();
                btn.click();
            }
        });

    };
    autoscroll();
});

