<?php
require_once __DIR__ . '/../Models/Utente.php';
require_once __DIR__ . '/../Core/Template.php';

class AuthController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function login() {
        $messaggioErrore = "";

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $modelloUtente = new Utente($this->db);
            $username = $modelloUtente->cerca_username($_POST['username']);

            if ($username && $_POST['password'] == $username['hash_password']) {
                $_SESSION['username'] = $username['username'];
                header('Location: index.php?action=home');
                exit;
            } else {
                $messaggioErrore = "Credenziali non valide.";
            }
        }

        $template = new Template(__DIR__ . '/../Views/pages/loginForm.html');
        $template->setDatiPagina(['ERRORE' => $messaggioErrore]);
        
        return $template->getPagina();
    }
}