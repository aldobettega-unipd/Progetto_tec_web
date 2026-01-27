<?php
header('Content-Type: text/html; charset=utf-8');

session_start();

require_once __DIR__ . '/../config.php';


spl_autoload_register(function ($class) {
    $prefix = 'App\\';
    $base_dir = __DIR__ . '/../src/';

    
    $len = strlen($prefix);
    if (strncmp($prefix, $class, $len) !== 0) return;


    $relative_class = substr($class, $len);
    $file = $base_dir . str_replace('\\', '/', $relative_class) . '.php';


    if (file_exists($file)) {
        require $file;
    }
});

use App\Core\Router;
use App\Controllers\UserController;
use App\Controllers\ErrorController;
use App\Controllers\HomeController;
use App\Controllers\ArtistaController;
use App\Controllers\CanzoneController;
use App\Controllers\PlaylistController;
use App\Controllers\RicercaController;
use App\Controllers\Api\ApiPlaylistController;
use App\Controllers\Api\ApiCanzoneController;


set_exception_handler(function ($e) {

    $errorController = new ErrorController();

    if ($e instanceof \App\Exceptions\NotFoundException) {
        $errorController->index(404, '404_notfound', $e->getMessage());
    } 
    elseif ($e instanceof \App\Exceptions\ForbiddenException) {
        $errorController->index(403, '403_forbidden');
    } 
    else {
        // Logga l'errore vero per te
        error_log($e->getMessage());
        // Mostra pagina 500 generica
        $errorController->index(500, '500_internalerror', $e->getMessage());
    }
    
    exit;
});

    $router = new Router();


    $router->add('/', HomeController::class, 'visualizza_home');

    $router->add('/artisti/{slug_artista:alphanum}', ArtistaController::class, 'view_artista');
    $router->add('/canzoni/{slug_canzone:alphanum}', CanzoneController::class, 'view_canzone');

    $router->add('/register', UserController::class, 'view_register'); 
    $router->add('/register/save', UserController::class, 'register');

    $router->add('/login', UserController::class, 'view_login');
    $router->add('/login/auth', UserController::class, 'login');

    $router->add('/logout', UserController::class, 'logout');

    $router->add('/search', RicercaController::class, 'esegui_ricerca');

    $router->add('/profilo/{username:alphanum}', UserController::class, 'view_profile', ['auth', 'owner']);

    $router->add('/profilo/{username:alphanum}/playlist/new', PlaylistController::class, 'view_playlist_form', ['auth', 'owner']);
    $router->add('/profilo/{username:alphanum}/playlist/create', PlaylistController::class, 'create_playlist', ['auth', 'owner']);
    $router->add('/profilo/{username:alphanum}/playlist/{id_playlist:num}', PlaylistController::class, 'view_playlist_page', ['auth', 'owner']);
    $router->add('/profilo/{username:alphanum}/playlist/{id_playlist:num}/delete', PlaylistController::class, 'elimina_playlist', ['auth', 'owner']);
    $router->add('/profilo/{username:alphanum}/playlist/{id_playlist:num}/add', PlaylistController::class, 'view_playlist_search', ['auth', 'owner']);

    $router->add('/api/search/songs', ApiCanzoneController::class, 'search');

    $router->add('/api/playlist/add-song', ApiPlaylistController::class, 'add_song', ['auth', 'owner']);
    

    $router->dispatch($_SERVER['REQUEST_URI']);

?>