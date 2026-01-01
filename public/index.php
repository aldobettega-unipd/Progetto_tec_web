<?php
session_start();
require_once __DIR__ . '/../config.php';
require_once __DIR__ . '/../src/Core/Template.php';
require_once __DIR__ . '/../src/Controllers/ArtistaController.php';
require_once __DIR__ . '/../src/Controllers/CanzoneController.php';
require_once __DIR__ . '/../src/Controllers/HomeController.php';
require_once __DIR__ . '/../src/Controllers/AuthController.php';
require_once __DIR__ . '/../src/Controllers/RegistraController.php';
require_once __DIR__ . '/../src/Controllers/RicercaController.php';
require_once __DIR__ . '/../src/Controllers/UtenteController.php';
require_once __DIR__ . '/../src/Controllers/PlaylistController.php';

$action = $_GET['action'] ?? 'home';

switch ($action) {
    case 'home':
        $homeController = new HomeController($conn);
        $corpoHTML = $homeController->visualizza_home();
        break;

    case 'login_form':
        $corpoHTML = file_get_contents(__DIR__ . "/../src/Views/pages/loginForm.html");
        break;

    case 'register_form':
        $corpoHTML = file_get_contents(__DIR__ . "/../src/Views/pages/registraForm.html");
        break;

    case 'do_login':
        $authController = new AuthController($conn);
        $corpoHTML = $authController->login($_POST['username'], $_POST['password']); 
        break;
    
    case 'do_register':
        $registraController = new RegistraController($conn);
        $corpoHTML = $registraController->registrazione($_POST['username'], $_POST['password']);
        break;
    
    case 'profilo':
        $controller = new UtenteController($conn);
        $corpoHTML = $controller->visualizza_profilo();
        break;

    case 'logout':
        session_unset();
        session_destroy();
        header('Location: index.php?action=home');
        exit; // da capire quando usare break e quando exit per non far andare esecuzioni fantasma

    case 'cerca':
        $controller = new RicercaController($conn);
        $corpoHTML = $controller->esegui_ricerca();
        break;

    case 'artista':
        $controller = new ArtistaController($conn);
        $corpoHTML = $controller->visualizza_artista($_GET['nome_artista']);
        break;

    case 'canzone':
        $controller = new CanzoneController($conn);
        $corpoHTML = $controller->visualizza_canzone($_GET['nome_canzone']);
        break;

    case 'playlist_form':
        $corpoHTML = file_get_contents(__DIR__ . "/../src/Views/pages/playlistForm.html");
        break;

    case 'crea_playlist':
        $controller = new PlaylistController($conn);
        $corpoHTML = $controller->crea_playlist($_POST['nome_playlist'], $_SESSION['username']);
        break;

    case 'apri_playlist':
        $controller = new PlaylistController($conn);
        $corpoHTML = $controller->visualizza_playlist($_GET['id']);
        break;

    case 'elimina_playlist':
        $controller = new PlaylistController($conn);
        $controller->elimina_playlist($_GET['id']);
        break;

    case 'mostra_selezione_playlist':
        $controller = new PlaylistController($conn);
        $corpoHTML = $controller->mostra_selezione_playlist($_GET['id_canzone']);
        break;

    case 'aggiungi_canzone_in_playlist':
        $controller = new PlaylistController($conn);
        $controller->aggiungi_canzone($_GET['id_playlist'], $_GET['id_canzone']);
        break;

    case 'rimuovi_canzone_da_playlist';
        $controller = new PlaylistController($conn);
        $controller->rimuovi_canzone($_GET['id_playlist'], $_GET['id_canzone']);
        break;
    
    default:
        //$view_file = '../src/Views/pages/404.php';
        break;
}

if (isset($_SESSION['username'])) {
    $nav = new Template('../src/Views/components/nav_loggato.html');
    $nav->set_dati_pagina(['username' => $_SESSION['username']]);
} else {
    $nav = new Template('../src/Views/components/nav_ospite.html');
}

$header = new Template('../src/Views/layouts/header.html');
$header->set_dati_pagina(['bottone_accesso' => $nav->get_pagina()]);

$layout = new Template('../src/Views/layout.html');
$layout->set_dati_pagina([
    'header' => $header->get_pagina(),
    'corpo'  => $corpoHTML,
    'footer' => file_get_contents('../src/Views/layouts/footer.html')
]);
        
echo $layout->get_pagina();



?>