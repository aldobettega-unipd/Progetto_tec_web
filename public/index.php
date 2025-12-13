<?php

// Carica configurazione
require_once __DIR__ . '/../config.php';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

$action = $_GET['action'] ?? 'home';
$view_file='';
$pagina_corrente= '';

switch ($action) {
    case 'home':
        $view_file = '../src/Views/pages/home.php';
        $pagina_corrente = 'Home';
        break;

    case 'login':
        $view_file = '../src/Views/pages/loginForm.php';
        $pagina_corrente = 'Login Page';
        break;
    
    case 'registrati':
        $view_file = '../src/Views/pages/registraForm.php';
        $pagina_corrente = 'Crea account';
        break;
    
    case 'esplora':
        $view_file = '../src/Views/pages/esplora.php';
        $pagina_corrente = 'Esplora';
        break;

    default:
        $view_file = '../src/Views/pages/404.php';
        break;
}


// Carica il contenuto specifico della pagina (il body)
if (file_exists($view_file)) {
    require_once $view_file;
} else {
    // Gestione errore se il file della vista non esiste
    http_response_code(404);
    echo "<h1>404 - Pagina non trovata!</h1>";
}



?>