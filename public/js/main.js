
document.addEventListener('DOMContentLoaded', () => {
  initDarkMode();
  initBackToTop();
  toggleLoginBanner();

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
  // Nota: Ho corretto il selettore per usare l'ID che è più veloce/sicuro
  const topBtn = document.getElementById('back-to-top-btn');

  if (!topBtn) return;

  topBtn.addEventListener('click', () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });


  const wrappers = document.querySelectorAll(".carosello-wrapper");

  wrappers.forEach((wrapper) => {
    const scroller = wrapper.querySelector(".carosello-scroll");

    const btnLeft = wrapper.querySelector(".carrbutton.prev");
    const btnRight = wrapper.querySelector(".carrbutton.next");

    const scrollAmount = 600;

    if (scroller) {
      if (btnRight) {
        btnRight.addEventListener("click", () => {
          scroller.scrollBy({ left: scrollAmount, behavior: "smooth" });
        });
      }

      if (btnLeft) {
        btnLeft.addEventListener("click", () => {
          scroller.scrollBy({ left: -scrollAmount, behavior: "smooth" });
        });
      }
    }
  });

}

// Gestione navigazione pagina profilo
const menuButtons = document.querySelectorAll('.menu-btn');
const contentSections = document.querySelectorAll('.sezione-lista');
const hiddenTabInput = document.getElementById('active-tab-input');

if (menuButtons.length > 0 && contentSections.length > 0) {
  menuButtons.forEach(button => {
    button.addEventListener('click', () => {
      const targetSection = button.getAttribute('data-section');

      // Rimuovi classe active da tutti i pulsanti
      menuButtons.forEach(btn => btn.classList.remove('active'));

      // Aggiungi classe active al pulsante cliccato
      button.classList.add('active');

      // Nascondi tutte le sezioni
      contentSections.forEach(section => section.classList.remove('active'));

      // Mostra la sezione corrispondente
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


// --- 1. CONFIGURAZIONE & UTILITY ---

// Elementi del banner
const authModal = document.getElementById('auth-modal');
const closeModalBtn = document.getElementById('close-auth-modal');

// Funzione: Controlla se l'utente è loggato (dal body)
function isUserLoggedIn() {
  return document.body.dataset.loggedIn === 'true';
}

// Funzione: Mostra Banner
function showLoginBanner() {
  if (authModal) {
    authModal.classList.add('show');
    authModal.setAttribute('aria-hidden', 'false');
  }
}

// Funzione: Nascondi Banner
function hideLoginBanner() {
  if (authModal) {
    authModal.classList.remove('show');
    authModal.setAttribute('aria-hidden', 'true');
  }
}
function toggleLoginBanner() {
  // Eventi chiusura Banner (X o Click fuori)
  if (closeModalBtn) closeModalBtn.addEventListener('click', hideLoginBanner);
  if (authModal) {
    authModal.addEventListener('click', (e) => {
      if (e.target === authModal) hideLoginBanner();
    });
  }


  // --- 2. GESTIONE INTERAZIONI ---

  // A. Bottone Playlist
  const playlistBtn = document.getElementById('playlist-toggle');
  const playlistMenu = document.getElementById('playlist-menu');

  if (playlistBtn) {
    playlistBtn.addEventListener('click', function (e) {
      e.stopPropagation(); // Ferma la propagazione

      // CHECK LOGIN: Se non è loggato, mostra banner e FERMATI.
      if (!isUserLoggedIn()) {
        showLoginBanner();
        return;
      }

      // Se è loggato, procedi con l'apertura del menu
      playlistMenu.classList.toggle('show');
      const isExpanded = playlistBtn.getAttribute('aria-expanded') === 'true';
      playlistBtn.setAttribute('aria-expanded', !isExpanded);
    });
  }

  // B. Bottone Preferiti (Cuore)
  const favBtn = document.getElementById('btn-fav');

  if (favBtn) {
    favBtn.addEventListener('click', function () {

      // CHECK LOGIN
      if (!isUserLoggedIn()) {
        showLoginBanner();
        return;
      }

      // Se loggato, procedi (qui poi aggiungerai la Fetch)
      this.classList.toggle('active');
      console.log("Azione preferiti eseguita!");
    });
  }

  // C. Chiudi Playlist cliccando fuori
  document.addEventListener('click', function () {
    if (playlistMenu && playlistMenu.classList.contains('show')) {
      playlistMenu.classList.remove('show');
      if (playlistBtn) playlistBtn.setAttribute('aria-expanded', 'false');
    }
  });

  // Impedisci che cliccare DENTRO il menu lo chiuda
  if (playlistMenu) {
    playlistMenu.addEventListener('click', function (e) {
      e.stopPropagation();
    });
  }

}
