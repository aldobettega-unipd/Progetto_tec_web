document.addEventListener('DOMContentLoaded', () => {
    const modal = document.getElementById('photo-modal');
    const openBtn = document.getElementById('btn-open-modal');
    const closeBtn = document.getElementById('btn-close-modal');
    const saveBtn = document.getElementById('btn-save-photo');
    const profilePic = document.getElementById('current-profile-pic');
    const avatarOptions = document.querySelectorAll('.avatar-option');

    let selectedId = null;

    const openModal = () => {
        modal.classList.remove('hidden');
    };

    const closeModal = () => {
        modal.classList.add('hidden');
        resetSelection();
    };

    const resetSelection = () => {
        selectedId = null;
        saveBtn.disabled = true;
        avatarOptions.forEach(img => img.classList.remove('selected'));
    };

    if(openBtn) openBtn.addEventListener('click', openModal);
    if(closeBtn) closeBtn.addEventListener('click', closeModal);

    modal.addEventListener('click', (e) => {
        if (e.target === modal) closeModal();
    });

    avatarOptions.forEach(option => {
        option.addEventListener('click', function() {
            avatarOptions.forEach(img => img.classList.remove('selected'));
            this.classList.add('selected');
            selectedId = this.dataset.id;
            saveBtn.disabled = false;
        });
    });

    if(saveBtn) {
        saveBtn.addEventListener('click', async () => {
            if (!selectedId) return;

            try {
                const response = await fetch('/api/user/update-photo', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ id_foto: selectedId })
                });

                const text = await response.text();
                let result;
                try {
                    result = JSON.parse(text);
                } catch (e) {
                    console.error("Risposta server non valida:", text);
                    throw new Error("Errore server");
                }

                if (result.success) {
                    profilePic.src = `/img/avatar/avatar${selectedId}.svg`;
                    closeModal();
                } else {
                    alert(result.error || "Errore durante l'aggiornamento");
                }

            } catch (err) {
                console.error(err);
                alert("Errore di connessione");
            } finally {
                saveBtn.textContent = 'Salva';
                saveBtn.disabled = false;
            }
        });
    }
});