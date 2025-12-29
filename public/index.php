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

$action = $_GET['action'] ?? 'home';

switch ($action) {
    case 'home':
        $homeController = new HomeController($conn);
        $corpoHTML = $homeController->visualizza_home();
        break;

    case 'mostra_login_form':
        $corpoHTML = file_get_contents(__DIR__ . "/../src/Views/pages/loginForm.html");
        break;

    case 'mostra_register_form':
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

    case 'artista':
        $controller = new ArtistaController($conn);
        $corpoHTML = $controller->visualizza_artista($_GET['nome_artista']);
        break;

    case 'canzone':
        $controller = new CanzoneController($conn);
        $corpoHTML = $controller->visualizza_canzone($_GET['nome_canzone']);
        break;

    case 'cerca':
        $controller = new RicercaController($conn);
        $corpoHTML = $controller->esegui_ricerca();
        break;

    default:
        //$view_file = '../src/Views/pages/404.php';
        break;
}

$headerHTML = file_get_contents('../src/Views/layouts/header.html');
$footerHTML = file_get_contents('../src/Views/layouts/footer.html');

$layout = new Template('../src/Views/layout.html');
$layout->setDatiPagina([
    'header' => $headerHTML,
    'corpo'  => $corpoHTML,
    'footer' => $footerHTML
]);
        
echo $layout->getPagina();



?>