<?php
namespace App\Core;

abstract class Controller {

    public function render($view, $data = []){
        extract($data);

        $view_file = __DIR__ . "/../Views/pages/{$view}.php";

        if(file_exists(__DIR__ . "/../Views/layouts/main.php")){
            require_once __DIR__ . "/../Views/layouts/main.php";
        } else {
            require_once $viewFile;
        }
    }

    public function redirect($url){
        header("Location: " . $url);
        exit;
    }

    protected function post($key, $default = null){
        if(isset($_POST[$key])) {
            return htmlspecialchars(trim($_POST[$key]));
        }
        return $default;
    }

    protected function get($key, $default = null) {
        if(isset($_POST[$key])) {
            return htmlspecialchars(trim($_GET[$key]));
        }
        return $default;
    }

    protected function require_login(){
        if(!isset($_SESSION['user_username'])){
            $_SESSION['flash_error'] = "Non sei loggato. Accedi per visualizzare il profilo!";
            $this->redirect('/login');
            exit;
        }
    }

    protected function require_owner($username){

        $this->require_login();

        if($_SESSION['user_username'] !== $username){
            $_SESSION['flash_error'] = "Non hai il permesso, esegui l'accesso!";
            $this->redirect('/login');
            exit;
        }
    }

    protected function check_admin(){
        $this->require_login();

        if($_SESSION['is_admin'] !== true){
            $_SESSION['flash_error'] = "Non hai il permesso, esegui l'accesso come amministratore!";
            $this->redirect('/login');
            exit;
        }
    }
}