<?php
namespace App\Core;

class Auth {

    public static function isLogged() {
        // Assicurati che session_start() sia nel index.php
        return isset($_SESSION['user']);
    }

    public static function getUser() {
        return $_SESSION['user'] ?? null;
    }

    public static function getMenuLinks() {
        if (self::isLogged()) {
            $user = self::getUser();
            return '<li><a href="/profilo/' . $user['username'] . '">Profilo ' . $user['username'] . '</a></li>
                    <li><a href="/logout">Logout</a></li>';
        } else {
            return '<li><a href="/login">Login</a></li>
                    <li><a href="/register">Registrati</a></li>';
        }
    }


    public function require_login(){
        if(!isset($_SESSION['user'])){
            $_SESSION['flash_error'] = "Non sei loggato. Accedi per continuare";
            $this->redirect('/login');
            exit;
        }
    }

    public function require_owner($username){
        $this->require_login();

        if($_SESSION['user']['username'] !== $username){
            $_SESSION['flash_error'] = "Non hai il permesso, esegui l'accesso!";
            $this->redirect('/login');
            exit;
        }
    }

    public function check_admin(){
        $this->require_login();

        if($_SESSION['user']['is_admin'] !== true){
            $_SESSION['flash_error'] = "Non hai il permesso, esegui l'accesso come amministratore!";
            $this->redirect('/login');
            exit;
        }
    }
}