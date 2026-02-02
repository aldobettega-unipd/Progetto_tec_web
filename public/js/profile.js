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
    // 2. GESTIONE MODALE AVATAR E SALVATAGGIO (FIXED)
    // ============================================================
    const modal = document.getElementById('photo-modal');
    const btnOpen = document.getElementById('btn-open-modal');
    const btnClose = document.getElementById('btn-close-modal');
    const btnSave = document.getElementById('btn-save-photo');
    const profilePic = document.getElementById('current-profile-pic');
    
    const avatarOptions = document.querySelectorAll('.js-avatar-btn');

    let selectedId = null;

    // Funzione centralizzata per aggiornare lo stato del bottone Salva
    const updateSaveButtonState = () => {
        if (btnSave) {
            if (selectedId) {
                // ABILITATO
                btnSave.disabled = false;
                btnSave.classList.remove('disabled'); 
                btnSave.style.opacity = '1';
                btnSave.style.cursor = 'pointer';
            } else {
                // DISABILITATO
                btnSave.disabled = true;
                btnSave.classList.add('disabled');
                btnSave.style.opacity = '0.6';
                btnSave.style.cursor = 'not-allowed';
            }
        }
    };

    // Funzione per aprire il modale
    const openModal = () => {
        if (!modal) return;
        modal.classList.remove('hidden');
        resetSelection(); // Resetta SEMPRE lo stato quando apri
        if (btnClose) btnClose.focus();
    };

    // Funzione per chiudere il modale
    const closeModal = () => {
        if (!modal) return;
        modal.classList.add('hidden');
        resetSelection(); // Pulisce la selezione uscendo
        if (btnOpen) btnOpen.focus();
    };

    // Resetta la selezione interna
    const resetSelection = () => {
        selectedId = null;
        avatarOptions.forEach(btn => btn.classList.remove('selected'));
        if (btnSave) {
            btnSave.textContent = 'Salva'; // Forza il ripristino del testo
        }
        updateSaveButtonState(); // Sincronizza visivamente il bottone
    };

    // Event Listeners Apertura/Chiusura
    if (btnOpen) btnOpen.addEventListener('click', (e) => {
        e.preventDefault(); 
        openModal();
    });
    
    if (btnClose) btnClose.addEventListener('click', (e) => {
        e.preventDefault();
        closeModal();
    });

    // Selezione Avatar
    avatarOptions.forEach(option => {
        option.addEventListener('click', function(e) {
            e.preventDefault(); // Previene comportamenti strani
            
            // Rimuovi selezione visiva dagli altri
            avatarOptions.forEach(btn => btn.classList.remove('selected'));
            
            // Aggiungi selezione a questo
            this.classList.add('selected');
            
            // Ottieni l'ID e aggiorna lo stato
            selectedId = this.dataset.id;
            updateSaveButtonState();
            
            console.log("Avatar selezionato:", selectedId); // Debug utile
        });
    });

    // Salvataggio
    // Salvataggio
    if (btnSave) {
        btnSave.addEventListener('click', async (e) => {
            e.preventDefault();

            if (!selectedId) return;

            // Salva il testo originale (es. "Salva")
            const originalText = 'Salva'; 
            
            // Cambia stato visivo
            btnSave.textContent = 'Salvataggio...';
            btnSave.disabled = true;
            btnSave.style.cursor = 'wait'; // Cursore di attesa

            try {
                const response = await fetch('${BASE_URL}/api/user/update-photo', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ id_foto: selectedId })
                });

                const text = await response.text();
                let result;
                try {
                    result = JSON.parse(text);
                } catch (err) {
                    throw new Error("Risposta server non valida");
                }

                if (result.success) {
                    // Successo!
                    if (profilePic) {
                        // Aggiorna l'immagine con timestamp per evitare la cache
                        profilePic.src = `/img/avatar/avatar${selectedId}.svg?t=${new Date().getTime()}`;
                    }
                    closeModal(); // Questo chiamerà resetSelection() che rimetterà "Salva"
                } else {
                    // Errore logico (es. utente non loggato)
                    alert(result.error || "Errore durante l'aggiornamento");
                    // Qui dobbiamo ripristinare manualmente perché il modale non si chiude
                    btnSave.textContent = originalText;
                    btnSave.disabled = false;
                    btnSave.style.cursor = 'pointer';
                }

            } catch (err) {
                // Errore di rete o eccezione
                console.error(err);
                alert("Errore di connessione.");
                
                // Ripristino manuale
                btnSave.textContent = originalText;
                btnSave.disabled = false;
                btnSave.style.cursor = 'pointer';
            }
        });
    }

    // Chiudi cliccando fuori (Overlay)
    if (modal) {
        modal.addEventListener('click', (e) => {
            if (e.target === modal) closeModal();
        });
    }

    // ============================================================
    // 3. GESTIONE ELIMINAZIONE PLAYLIST
    // ============================================================
    const playlistContainer = document.getElementById('le-tue-playlist');

    if (playlistContainer) {
        playlistContainer.addEventListener('click', async (e) => {
            
            // 1. Trova il bottone cliccato (Delegation)
            const deleteBtn = e.target.closest('.js-delete-playlist');
            if (!deleteBtn) return;

            // 2. Ferma la propagazione (EVITA che si apra la playlist)
            e.preventDefault();
            e.stopPropagation();

            const playlistId = deleteBtn.dataset.id;
            const row = deleteBtn.closest('.playlist-row');

            // 3. Conferma (Consigliato per intere playlist)
            if (!confirm("Sei sicuro di voler eliminare questa playlist? L'azione è irreversibile.")) {
                return;
            }

            // 4. Feedback Visivo (Opacità)
            if (row) {
                row.style.pointerEvents = 'none'; // Blocca click
                row.style.transition = 'opacity 0.3s';
                row.style.opacity = '0.4';
            }

            try {
                // 5. Chiamata API
                const response = await fetch('${BASE_URL}/api/playlist/delete', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ id_playlist: playlistId })
                });

                const res = await response.json().catch(() => ({ success: false }));

                if (res.success) {
                    // Successo: Rimuovi riga
                    if (row) {
                        row.style.transform = 'translateX(20px)';
                        row.style.opacity = '0';
                        setTimeout(() => {
                            row.remove();
                            // Controllo vuoto
                            const grid = playlistContainer.querySelector('.content-grid');
                            if (grid && grid.children.length === 0) {
                                grid.innerHTML = '<p>Non hai ancora creato nessuna playlist.</p>';
                            }
                        }, 300);
                    }
                } else {
                    alert("Errore: " + (res.message || "Impossibile eliminare"));
                    if (row) { 
                        row.style.opacity = '1'; 
                        row.style.pointerEvents = 'auto';
                    }
                }
            } catch (err) {
                console.error(err);
                alert("Errore di connessione");
                if (row) { 
                    row.style.opacity = '1'; 
                    row.style.pointerEvents = 'auto';
                }
            }
        });
    }

    const deleteAccountBtn = document.getElementById('btn-delete-account');

    if (deleteAccountBtn) {
        deleteAccountBtn.addEventListener('click', function(e) {
            
            // Il messaggio che apparirà nel popup
            const conferma = confirm(
                "⚠️ ATTENZIONE: Sei sicuro di voler eliminare il tuo profilo?\n\n" +
                "Questa azione è IRREVERSIBILE. Perderai tutte le tue playlist e i tuoi preferiti per sempre."
            );

            // Se l'utente clicca "Annulla" (false), blocchiamo il link
            if (!conferma) {
                e.preventDefault();
            }
            // Se clicca "OK", il browser seguirà normalmente il link href="##BASE_URL##/profilo/elimina-account"
        });
    }
});