document.addEventListener('DOMContentLoaded', () => {
    
    // Riferimenti al DOM
    const toggleBtn = document.getElementById('btn-toggle-chords');
    const songContainer = document.getElementById('song-container');

    // Controllo esistenza elementi (per evitare errori in altre pagine)
    if (!toggleBtn || !songContainer) return;

    // Gestione Click
    toggleBtn.addEventListener('click', () => {
        // 1. Toggle della classe CSS
        const isHidden = songContainer.classList.toggle('hide-chords');

        // 2. Aggiornamento Accessibilità (ARIA)
        // Dice allo screen reader se il bottone è "premuto"
        toggleBtn.setAttribute('aria-pressed', isHidden ? 'true' : 'false');

        // 3. Aggiornamento Testo Bottone (Feedback visivo)
        if (isHidden) {
            toggleBtn.textContent = 'Mostra Accordi 🎸';
            toggleBtn.classList.remove('btn-secondary');
            toggleBtn.classList.add('btn-primary'); // Evidenzia per riattivare
        } else {
            toggleBtn.textContent = 'Nascondi Accordi (Modalità Lettura) 📖';
            toggleBtn.classList.add('btn-secondary');
            toggleBtn.classList.remove('btn-primary');
        }
    });

    // (Opzionale) Qui potrai aggiungere in futuro la logica per la trasposizione
});