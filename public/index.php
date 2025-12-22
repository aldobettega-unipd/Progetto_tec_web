<?php

require_once __DIR__ . '/../config.php';
require_once __DIR__ . '/../src/Core/Template.php';
require_once __DIR__ . '/../src/Controllers/ArtistaController.php';
require_once __DIR__ . '/../src/Controllers/HomeController.php';

$action = $_GET['action'] ?? 'home';
$view_file='';
$pagina_corrente= '';

switch ($action) {
    case 'home':
        $homeController = new HomeController($conn);
        $corpoHTML = $homeController->visualizzaHome();

        $headerHTML = file_get_contents('../src/Views/layouts/header.html');
        $footerHTML = file_get_contents('../src/Views/layouts/footer.html');

        $layout = new Template('../src/Views/layout.html');
        $layout->inserisciDatiPagina([
            'header' => $headerHTML,
            'corpo'  => $corpoHTML,
            'footer' => $footerHTML
        ]);
        
        echo $layout->render();
        $view_file = '';
        break;

    case 'login':
        $view_file = '../src/Views/pages/loginForm.php';
        $pagina_corrente = 'Login Page';
        break;
    
    case 'registrati':
        $view_file = '../src/Views/pages/registraForm.php';
        $pagina_corrente = 'Crea account';
        break;

    case 'artista':
        $nome = $_GET['nome'] ?? 'Zucchero';
        $controller = new ArtistaController($conn);
        $corpoHTML = $controller->visualizza($nome);

        $headerHTML = file_get_contents('../src/Views/layouts/header.html');
        $footerHTML = file_get_contents('../src/Views/layouts/footer.html');

        $layout = new Template('../src/Views/layout.html');
        $layout->inserisciDatiPagina([
            'header' => $headerHTML,
            'corpo'  => $corpoHTML,
            'footer' => $footerHTML
        ]);
        
        echo $controller->visualizza($nome);
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
if ($view_file !== '' && file_exists($view_file)) {
    require_once $view_file;
} elseif ($view_file !== '') {
    http_response_code(404);
    echo "<h1>404 - Pagina non trovata!</h1>";
}


?>