<?php

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

// 4. USIAMO LE CLASSI NECESSARIE
use App\Core\Router;
use App\Controllers\UserController;
use App\Controllers\ErrorController;
use App\Controllers\HomeController;

// 5. GESTIONE DELLE ROTTE
try {
    $router = new Router();


    $router->add('/', HomeController::class, 'visualizza_home');

    $router->dispatch($_SERVER['REQUEST_URI']);

} catch (\Exception $e) {
    $error = new ErrorController();
    $error->index(500, $e->getMessage());
}

?>