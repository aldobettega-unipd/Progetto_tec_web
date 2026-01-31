document.addEventListener('DOMContentLoaded', () => {

    const urlParams = new URLSearchParams(window.location.search);
    
    const hasFilters = urlParams.has('lingua') || urlParams.has('accordi[]');

    if (hasFilters) {
        const target = document.getElementById('anchor-risultati');
        if (target) {
            setTimeout(() => {
                target.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }, 100);
        }
    }

    const btnToggle = document.getElementById('filtersToggleBtn');
    const panel = document.getElementById('filtersPanel');
    
    if (btnToggle && panel) {
        // Setup iniziale Accessibilità
        if (!btnToggle.hasAttribute('aria-expanded')) {
            btnToggle.setAttribute('aria-expanded', 'false');
        }

        btnToggle.addEventListener('click', (e) => {
            e.preventDefault();
            e.stopPropagation(); // Evita click indesiderati
            
            // Toggle classi visive
            panel.classList.toggle('open');
            btnToggle.classList.toggle('active');
            
            // Aggiorna stato Accessibilità
            const isOpen = panel.classList.contains('open');
            btnToggle.setAttribute('aria-expanded', isOpen);
        });
    }

    const btnAll = document.getElementById('btnSelectAll');
    const btnNone = document.getElementById('btnDeselectAll');
    
    // Selezioniamo solo le checkbox dentro la griglia degli accordi
    const checkboxes = document.querySelectorAll('.chords-macro-grid input[type="checkbox"]');

    if (btnAll) {
        btnAll.addEventListener('click', (e) => {
            e.preventDefault();
            checkboxes.forEach(cb => cb.checked = true);
        });
    }

    if (btnNone) {
        btnNone.addEventListener('click', (e) => {
            e.preventDefault();
            checkboxes.forEach(cb => cb.checked = false);
        });
    }
});