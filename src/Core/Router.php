<?php
namespace App\Core;
//use App\Controllers\ErrorController;



Class Router {
    
    private $routes = [];

    public function add($uri, $controller, $method){

        $this->routes[$uri] = [
            'controller' => $controller,
            'method' => $method
        ];
    }

    public function dispatch($requestedUri){
        $uri = parse_url($requestedUri, PHP_URL_PATH);

        foreach($this->routes as $routePath => $routeData){

            $pattern = preg_replace('/\{[a-zA-Z0-9-_]+:num\}/', '([0-9]+)', $routePath);
            $pattern = preg_replace('/\{[a-zA-Z0-9-_]+:alpha\}/', '([a-zA-Z-_]+)', $pattern);
            $pattern = preg_replace('/\{[a-zA-Z0-9-_]+:alphanum\}/', '([a-zA-Z0-9-_]+)', $pattern);
            $pattern = preg_replace('/\{[a-zA-Z0-9-_]+\}/', '([a-zA-Z0-9-_]+)', $pattern);
            $pattern = '#^' . $pattern . '$#';

            if (preg_match($pattern, $uri, $matches)) {
                array_shift($matches);

                $controller = new $routeData['controller']();
                call_user_func_array([$controller, $routeData['method']], $matches);
                return;
            }
        }

        /*$err_controller = new ErrorController();
        $err_controller->index(404, '404_notfound', 'pagina non trovata'); */
    }

}   

/** 
 * aggiungo le pagine su index.php con $controller->add(<url>, <controller>, <metodo> )
 * 
 * - url:          puo` essere qualcosa del tipo: /canzone, /canzone/{id:num}, /canzone/{nome_canzone:alphanum}, /canzone/{nome_canzone:aplhanum}/download, /utente/{nome_utente:alphanum}/playlist/{id:num}.
 *                [consiglio di usare il tipo del paramentre messo con :<tipo>. se non si mette e` alphanum]
 * 
 * - controller:   e' la classe del controller utilizzato
 * 
 * - metodo:       metodo della classe controller che viene invocato quando viene visitata la pagina. I parametri vengono passati come array.
 * 
 * 
 * avvio la pagina con $router->dispatch($_SERVER['REQUEST_URI']);
 * 
 */