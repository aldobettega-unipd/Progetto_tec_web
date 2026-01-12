<?php
namespace App\Core;
use App\Core\Template;

abstract class Controller {

    protected $layout_data = [
        "PULSANTI_UTENTE" => '<li><a href="/login">Login</a></li>
                    <li><a href="/register">Registrati</a></li>'
    ];

    public function render($view, $data = [], $layout = 'main' ){

        try{        
            $view_file = new Template(__DIR__ . "/../Views/pages/{$view}.html");

            $view_file->set_dati_pagina($data);

            $contenuto_vista = $view_file->get_pagina();

            if($layout){
                $layout_file = new Template(__DIR__ . "/../Views/layouts/{$layout}.html");

                $layout_file->set_dati_pagina(['CONTENUTO_PRINCIPALE'=> $contenuto_vista]);

                $layout_file->set_dati_pagina($this->layout_data);

                echo $layout_file->get_pagina();

            }else{
                echo $contenuto_vista;
            }
        } catch (\Exception $e) {
            die("Errore Render: " . $e->getMessage());
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