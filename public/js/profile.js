document.addEventListener('DOMContentLoaded', () => {
    
    // ============================================================
    // 1. GESTIONE TAB (Playlist vs Mi Piace) - ACCESSIBILE
    // ============================================================
    const tabButtons = document.querySelectorAll('[role="tab"]');
    const tabPanels = document.querySelectorAll('[role="tabpanel"]');
    const hiddenInput = document.getElementById('active-tab-input'); // Manteniamo la tua logica PHP

    if (tabButtons.length > 0) {
        tabButtons.forEach(btn => {
            btn.addEventListener('click', (e) => {
                // Preveniamo comportamenti default se necessario
                e.preventDefault();

                // 1. Disattiva tutti i bottoni
                tabButtons.forEach(b => {
                    b.setAttribute('aria-selected', 'false');
                    b.classList.remove('active');
                });

                // 2. Attiva il bottone cliccato
                btn.setAttribute('aria-selected', 'true');
                btn.classList.add('active');

                // 3. Nascondi tutti i pannelli
                const targetId = btn.getAttribute('aria-controls') || btn.getAttribute('data-target');
                
                tabPanels.forEach(panel => {
                    // Logica ARIA: usiamo l'attributo hidden standard HTML5
                    if (panel.id === targetId) {
                        panel.hidden = false;
                        panel.classList.add('active');
                    } else {
                        panel.hidden = true;
                        panel.classList.remove('active');
                    }
                });

                // 4. Aggiorna input nascosto (se presente) per reload PHP
                if (hiddenInput) {
                    // Estraiamo il valore pulito (es. 'le-tue-playlist' -> 'playlist')
                    // Dipende da come gestisci il PHP, qui passo l'ID del pannello
                    hiddenInput.value = targetId; 
                }
            });
        });
    }

    // ============================================================
    // 2. GESTIONE MODALE AVATAR E SALVATAGGIO
    // ============================================================
    const modal = document.getElementById('photo-modal');
    const btnOpen = document.getElementById('btn-open-modal');
    const btnClose = document.getElementById('btn-close-modal');
    const btnSave = document.getElementById('btn-save-photo');
    const profilePic = document.getElementById('current-profile-pic');
    
    // Selettore aggiornato per i nuovi bottoni accessibili
    const avatarOptions = document.querySelectorAll('.js-avatar-btn');

    let selectedId = null;

    // Funzione per aprire il modale
    const openModal = () => {
        if (!modal) return;
        modal.classList.remove('hidden');
        // A11Y: Porta il focus sul primo elemento interattivo del modale
        if (btnClose) btnClose.focus();
    };

    // Funzione per chiudere il modale
    const closeModal = () => {
        if (!modal) return;
        modal.classList.add('hidden');
        resetSelection();
        // A11Y: Riporta il focus al bottone che ha aperto il modale
        if (btnOpen) btnOpen.focus();
    };

    // Resetta la selezione interna
    const resetSelection = () => {
        selectedId = null;
        if (btnSave) btnSave.disabled = true;
        avatarOptions.forEach(btn => btn.classList.remove('selected'));
    };

    // Event Listeners Modale
    if (btnOpen) btnOpen.addEventListener('click', openModal);
    if (btnClose) btnClose.addEventListener('click', closeModal);

    // Chiudi cliccando fuori (Overlay)
    if (modal) {
        modal.addEventListener('click', (e) => {
            if (e.target === modal) closeModal();
        });
        
        // Chiudi con tasto ESC
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape' && !modal.classList.contains('hidden')) {
                closeModal();
            }
        });
    }

    // Selezione Avatar (Logica aggiornata per i <button>)
    avatarOptions.forEach(option => {
        option.addEventListener('click', function() {
            // Rimuovi selezione dagli altri
            avatarOptions.forEach(btn => btn.classList.remove('selected'));
            
            // Aggiungi a questo
            this.classList.add('selected');
            
            // Ottieni l'ID dal data-attribute
            selectedId = this.dataset.id;
            
            // Abilita salvataggio
            if (btnSave) btnSave.disabled = false;
        });
    });

    // Salvataggio (Logica FETCH esistente mantenuta)
    if (btnSave) {
        btnSave.addEventListener('click', async () => {
            if (!selectedId) return;

            // Feedback visivo immediato (Opzionale: spinner)
            const originalText = btnSave.textContent;
            btnSave.textContent = 'Salvataggio...';
            btnSave.disabled = true;

            try {
                const response = await fetch('/api/user/update-photo', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ id_foto: selectedId })
                });

                // Gestione risposta JSON sicura
                const text = await response.text();
                let result;
                try {
                    result = JSON.parse(text);
                } catch (e) {
                    console.error("Risposta server non valida:", text);
                    throw new Error("Errore formato server");
                }

                if (result.success) {
                    // Aggiorna l'immagine principale
                    if (profilePic) {
                        profilePic.src = `/img/avatar/avatar${selectedId}.svg`;
                        // Aggiorna anche l'alt text per accessibilità
                        profilePic.alt = `Avatar profilo ${selectedId}`;
                    }
                    closeModal();
                } else {
                    alert(result.error || "Errore durante l'aggiornamento");
                }

            } catch (err) {
                console.error(err);
                alert("Errore di connessione o server.");
            } finally {
                // Ripristina bottone
                btnSave.textContent = originalText;
                btnSave.disabled = false; // Sarà disabilitato da resetSelection() comunque
            }
        });
    }
});