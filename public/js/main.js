
document.addEventListener('DOMContentLoaded', () => {
    initDarkMode();
    initBackToTop();
    initPlaylistMenu();

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

 function initPlaylistMenu() {

    const playlistBtn = document.getElementById('playlist-toggle');
    const playlistMenu = document.getElementById('playlist-menu');
    
    if (playlistBtn && playlistMenu) {

        playlistBtn.addEventListener('click', function(e) {
            e.stopPropagation();
            
            const isExpanded = playlistBtn.getAttribute('aria-expanded') === 'true';
            playlistMenu.classList.toggle('show');
            playlistBtn.setAttribute('aria-expanded', !isExpanded);
        });

        playlistMenu.addEventListener('click', function(e) {
            e.stopPropagation();
        });

        document.addEventListener('click', function() {
            if (playlistMenu.classList.contains('show')) {
                playlistMenu.classList.remove('show');
                playlistBtn.setAttribute('aria-expanded', 'false');
            }
        });
    }

    // --- GESTIONE PREFERITI (CUORE) ---
    const favBtn = document.getElementById('btn-fav');
    if (favBtn) {
        favBtn.addEventListener('click', function() {
            this.classList.toggle('active');
            console.log("Stato preferito:", this.classList.contains('active'));
        });
    }

    const checkboxes = document.querySelectorAll('.playlist-checklist input[type="checkbox"]');
    checkboxes.forEach(chk => {
        chk.addEventListener('change', function() {
            console.log(`Playlist ID ${this.value}: ${this.checked ? 'Aggiunta' : 'Rimossa'}`);
            // TODO: Inserire qui la fetch() per salvare sul DB
        });
    });

};

