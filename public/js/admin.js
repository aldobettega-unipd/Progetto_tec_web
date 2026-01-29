const API_ENDPOINTS = {
    'utente': '/api/admin/users/delete',
    'canzone': '/api/admin/canzoni/delete',
    'artista': '/api/admin/artisti/delete'
};

/* 
La funzione rimuoviItem prende:
- tipo dell'item -> sa quale endpoint chiamare
- id -> sa quale elimento eliminare

esegue una una funzione fetch(): fa una richiesta HTTP (in questo caso POST) che viene indirizzata dal
router(index.php) -> questo si occupa di andare a chiamare la funzione giusta dell'API controller
*/


async function rimuoviItem(type, id) {
    if (!confirm(`Sei sicuro di voler eliminare questo ${type}?`)) return;

    const endpoint = API_ENDPOINTS[type];
    if (!endpoint) return alert("Tipo non supportato");

    try {
        const response = await fetch(endpoint, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ id: id })
        });

        // 1. Leggiamo il testo GREZZO prima di convertirlo in JSON
        // Questo ci aiuta a vedere se ci sono errori PHP o spazi vuoti
        const textResponse = await response.text();
        
        let result;
        try {
            result = JSON.parse(textResponse);
        } catch (e) {
            console.error("Risposta del server non valida:", textResponse);
            throw new Error("Il server ha risposto con dati non validi (controlla la console)");
        }

        if (result.success) {
            // 2. Selettore più sicuro: gestiamo il caso in cui non trovi l'elemento
            // Usiamo una stringa di selettore costruita passo passo
            const selector = `.${type}-list-item div.dropdown-item.delete[onclick*="${id}"]`;
            const deleteButton = document.querySelector(selector);

            if (deleteButton) {
                const itemRow = deleteButton.closest(`.${type}-list-item`);
                if (itemRow) {
                    itemRow.style.transition = "opacity 0.3s";
                    itemRow.style.opacity = "0";
                    setTimeout(() => itemRow.remove(), 300);
                } else {
                    location.reload(); // Fallback se non trova la riga
                }
            } else {
                console.warn("Elemento DOM non trovato per animazione, ricarico pagina.");
                location.reload(); 
            }
        } else {
            alert("Errore dal server: " + (result.message || "Sconosciuto"));
        }
    } catch (err) {
        console.error("Errore dettagliato:", err);
        alert("Si è verificato un errore: " + err.message);
    }
}