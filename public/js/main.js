
document.addEventListener('DOMContentLoaded', () => {
  initDarkMode();
  initBackToTop();
  initToggleLoginBanner();
  initProfileAction();
  initCarosello();
  initFavButton();

});

function initDarkMode() {
  const toggleBtn = document.getElementById('dark-mode-toggle');
  const body = document.body;
  console.log('Dark mode toggle initialized');
  if (!toggleBtn) return;

  // Check preferenza salvata
  const savedTheme = localStorage.getItem('theme');
  if (savedTheme === 'dark') {
    body.classList.add('dark-mode');
  }

  toggleBtn.addEventListener('click', () => {
    toggleBtn.classList.add('retracted');

    setTimeout(() => {
      body.classList.toggle('dark-mode');

      // Salvataggio
      if (body.classList.contains('dark-mode')) {
        localStorage.setItem('theme', 'dark');
      } else {
        localStorage.setItem('theme', 'light');
      }

      toggleBtn.classList.remove('retracted');
    }, 300); // 300ms deve corrispondere alla transizione CSS
  });
}

function initBackToTop() {
  const topBtn = document.getElementById('back-to-top-btn');

  if (!topBtn) return;

  topBtn.addEventListener('click', () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });

}

function initCarosello() {
  const wrappers = document.querySelectorAll(".carosello-wrapper");

  // Funzione per determinare lo scroll amount basato sulla larghezza dello schermo
  function getScrollAmount() {
    return window.innerWidth > 899 ? 600 : 300;
  }

  wrappers.forEach((wrapper) => {
    const scroller = wrapper.querySelector(".carosello-scroll");

    const btnLeft = wrapper.querySelector(".carrbutton.prev");
    const btnRight = wrapper.querySelector(".carrbutton.next");

    if (scroller) {
      if (btnRight) {
        btnRight.addEventListener("click", () => {
          scroller.scrollBy({ left: getScrollAmount(), behavior: "smooth" });
        });
      }

      if (btnLeft) {
        btnLeft.addEventListener("click", () => {
          scroller.scrollBy({ left: -getScrollAmount(), behavior: "smooth" });
        });
      }
    }
  });

}

 // Gestione navigazione pagina profilo
function initProfileAction() {
 
  const menuButtons = document.querySelectorAll('.menu-btn');
  const contentSections = document.querySelectorAll('.sezione-lista');
  const hiddenTabInput = document.getElementById('active-tab-input');

  if (menuButtons.length > 0 && contentSections.length > 0) {
    menuButtons.forEach(button => {
      button.addEventListener('click', () => {
        const targetSection = button.getAttribute('data-section');

        menuButtons.forEach(btn => btn.classList.remove('active'));
        button.classList.add('active');

        contentSections.forEach(section => section.classList.remove('active'));

        const sectionToShow = document.querySelector(`[data-content="${targetSection}"]`);
        if (sectionToShow) {
          sectionToShow.classList.add('active');
        }

        if (hiddenTabInput) {
          hiddenTabInput.value = targetSection;
        }
      });
    });
  }
}


const authModal = document.getElementById('auth-modal');
const closeModalBtn = document.getElementById('close-auth-modal');


function isUserLoggedIn() {
  return document.body.dataset.loggedIn === 'true';
}


function showLoginBanner() {
  if (authModal) {
    authModal.classList.add('show');
    authModal.setAttribute('aria-hidden', 'false');
  }
}

function hideLoginBanner() {
  if (authModal) {
    authModal.classList.remove('show');
    authModal.setAttribute('aria-hidden', 'true');
  }
}
function initToggleLoginBanner() {

  if (closeModalBtn) closeModalBtn.addEventListener('click', hideLoginBanner);
  if (authModal) {
    authModal.addEventListener('click', (e) => {
      if (e.target === authModal) hideLoginBanner();
    });
  }
}

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
            return true;

        } catch (err) {
            console.error(err);
            return false;
        }
    }

function initFavButton(){
  const allFavBtns = document.querySelectorAll('.btn-favorite');

    allFavBtns.forEach(btn => {
        btn.addEventListener('click', async function(e) {
            e.stopPropagation(); 
            e.preventDefault();
            if (!isUserLoggedIn()) {
                showLoginBanner();
                return;
            }

            const favPlaylistId = this.dataset.idPreferiti;
            const songId = this.dataset.songId;

            if (!favPlaylistId || !songId) {
                console.error("Dati mancanti sul bottone preferiti");
                return;
            }

            const isRemoving = this.classList.contains('active');
            const isAdding = !isRemoving;

            this.classList.toggle('active');

            // Chiamata API
            const success = await toggleSongInPlaylist(favPlaylistId, songId, isAdding);

            if (!success) {
                this.classList.toggle('active');
            }
        });
    });
}