// Gestione cambio tema dark/light
const darkModeToggle = document.getElementById('dark-mode-toggle');
if (darkModeToggle) {
  const currentTheme = localStorage.getItem('theme');
  
  if (currentTheme === 'dark') {
    document.documentElement.classList.add('dark-mode');
    darkModeToggle.textContent = '☀️';
  }
  
  darkModeToggle.addEventListener('click', () => {
    document.documentElement.classList.toggle('dark-mode');
    
    let theme = 'light';
    if (document.documentElement.classList.contains('dark-mode')) {
      theme = 'dark';
      darkModeToggle.textContent = '☀️';
    } else {
      darkModeToggle.textContent = '🌙';
    }
    
    localStorage.setItem('theme', theme);
  });
}

// Gestione navigazione pagina profilo
const menuButtons = document.querySelectorAll('.menu-btn');
const contentSections = document.querySelectorAll('.sezione-lista');

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
    });
  });
}
