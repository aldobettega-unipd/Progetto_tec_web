# Progetto PHP - Struttura

## Struttura del Progetto

- **`config.php`**: Configurazione database e parametri dell'applicazione
- **`docker-compose.yml`**: Configurazione container Docker (PHP, MySQL, Apache)
- **`Dockerfile`**: Immagine Docker personalizzata per il web server
- **`init.sql`**: Script SQL per inizializzare il database con tabelle e dati
- **`README.md`**: Documentazione del progetto

### `public/`
Directory pubblica accessibile dal browser (document root)

- **`index.php`**: Pagina principale dell'applicazione
- **`elabora.php`**: Script per elaborare dati dei form
- **`visualizza.php`**: Pagina per visualizzare dati dal database
- **`css/`**: Fogli di stile CSS
  - `style.css`: Stili dell'applicazione
- **`js/`**: File JavaScript
  - `script.js`: Script per interattività lato client
- **`img/`**: Immagini e risorse grafiche

### `src/`
Codice sorgente dell'applicazione (non accessibile dal browser)

- **`Controllers/`**: Gestiscono le richieste HTTP e coordinano Model/View
  - `HomeController.php`: Controller per la pagina home
  - `UserController.php`: Controller per gestione utenti
- **`Models/`**: Rappresentano i dati e interagiscono con il database
  - `User.php`: Model per la gestione degli utenti
- **`Views/`**: Template HTML/PHP per la presentazione
  - **`layouts/`**: Componenti riutilizzabili (header, footer)
    - `header.php`: Intestazione comune delle pagine
    - `footer.php`: Footer comune delle pagine
  - **`pages/`**: Pagine specifiche
    - `home.php`: Template della home page
- **`Core/`**: Classi di supporto (Router, Database, ecc.)