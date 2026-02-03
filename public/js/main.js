globalThis.BASE_URL = '/msanguin';

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



function isUserLoggedIn() {
  return document.body.dataset.loggedIn === 'true';
}



const authModal = document.getElementById('auth-modal');
const closeModalBtn = document.getElementById('close-auth-modal');
const mainContent = document.getElementById('main-content'); 
let lastFocusedElement = null;

function showLoginBanner() {
  if (!authModal) return;

  lastFocusedElement = document.activeElement;

  // Mostra il modale
  authModal.classList.add('show');
  authModal.setAttribute('aria-hidden', 'false');

  // --- PUNTO CHIAVE: Disabilita lo sfondo ---
  if (mainContent) {
      // 'inert' impedisce click e focus su tutto il sito
      mainContent.setAttribute('inert', ''); 
      // 'aria-hidden' è una sicurezza extra per vecchi screen reader
      mainContent.setAttribute('aria-hidden', 'true'); 
  }

  // Sposta focus nel modale
  setTimeout(() => {
      closeModalBtn.focus();
  }, 50);
  
  // Nota: Con 'inert', la funzione handleModalKeydown (il loop del TAB) 
  // diventa meno critica per "uscire", ma serve ancora per "ciclare" dentro il modale.
  authModal.addEventListener('keydown', handleModalKeydown);
}

function hideLoginBanner() {
  if (!authModal) return;

  authModal.classList.remove('show');
  authModal.setAttribute('aria-hidden', 'true');

  // --- PUNTO CHIAVE: Riabilita lo sfondo ---
  if (mainContent) {
      mainContent.removeAttribute('inert');
      mainContent.removeAttribute('aria-hidden');
  }

  authModal.removeEventListener('keydown', handleModalKeydown);

  if (lastFocusedElement) {
      lastFocusedElement.focus();
  }
}


function handleModalKeydown(e) {
    if (e.key === 'Escape') {
        hideLoginBanner();
        return;
    }

    if (e.key === 'Tab') {
        const focusableElements = authModal.querySelectorAll(
            'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
        );
        
        if (focusableElements.length === 0) return;
        const firstElement = focusableElements[0];
        const lastElement = focusableElements[focusableElements.length - 1];
        if (e.shiftKey) { 
            if (document.activeElement === firstElement) {
                e.preventDefault();
                lastElement.focus();
            }
        } 
        else { 
            if (document.activeElement === lastElement) {
                e.preventDefault();
                firstElement.focus();
            }
        }
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
        const endpoint = isAdding ? `${BASE_URL}/api/playlist/add-song` : `${BASE_URL}/api/playlist/remove-song`;

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