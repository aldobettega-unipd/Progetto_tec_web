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


try {
    $router = new Router();


    $router->add('/', HomeController::class, 'visualizza_home');

    $router->add('/artisti/{slug_artista:alphanum}', ArtistaController::class, 'view_artista');
    $router->add('/canzoni/{slug_canzone:alphanum}', CanzoneController::class, 'view_canzone');

    $router->add('/register', UserController::class, 'view_register'); 
    $router->add('/register/save', UserController::class, 'register');

    $router->add('/login', UserController::class, 'view_login');
    $router->add('/login/auth', UserController::class, 'login');

    $router->add('/logout', UserController::class, 'logout');

    $router->add('/profilo/{username:alphanum}', UserController::class, 'view_profile');


    

    $router->dispatch($_SERVER['REQUEST_URI']);

} catch (\Exception $e) {
    $error = new ErrorController();
    $error->index(500, $e->getMessage());
}

?>