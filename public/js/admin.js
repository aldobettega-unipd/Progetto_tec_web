
document.addEventListener('DOMContentLoaded', () => {
    
    // Configurazione Endpoint
    const API_ENDPOINTS = {
        'utente': `${BASE_URL}/api/admin/users/delete`,
        'canzone': `${BASE_URL}/api/admin/canzoni/delete`,
        'artista': `${BASE_URL}/api/admin/artisti/delete`
    };

    document.addEventListener('click', async (e) => {
        
        const btn = e.target.closest('.js-delete-btn');
        if (!btn) return;

        const type = btn.dataset.type;
        const id = btn.dataset.id;

        if (!type || !id) return console.error("Dati mancanti sul bottone");

        if (!confirm(`Sei sicuro di voler eliminare questo elemento (${type})?`)) return;

        await gestisciRimozione(type, id, btn);
    });

    async function gestisciRimozione(type, id, btnElement) {
        const endpoint = API_ENDPOINTS[type];
        
        btnElement.disabled = true;
        btnElement.style.opacity = '0.5';

        try {
            const response = await fetch(endpoint, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ id: id })
            });

            const textResponse = await response.text();
            let result;
            try {
                result = JSON.parse(textResponse);
            } catch (e) {
                console.error("Risposta server non valida:", textResponse);
                throw new Error("Errore formato risposta server");
            }

            if (result.success) {
                const row = btnElement.closest('.admin-list-item');
                if (row) {
                    row.style.transition = "opacity 0.3s, transform 0.3s";
                    row.style.opacity = "0";
                    row.style.transform = "translateX(20px)";
                    setTimeout(() => row.remove(), 300);
                } else {
                    location.reload(); 
                }
            } else {
                alert("Errore: " + (result.message || "Impossibile eliminare"));
            
                btnElement.disabled = false;
                btnElement.style.opacity = '1';
            }

        } catch (err) {
            console.error(err);
            alert("Errore di connessione.");
            btnElement.disabled = false;
            btnElement.style.opacity = '1';
        }
    }
    
});