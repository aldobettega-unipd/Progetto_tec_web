<?php
require_once __DIR__ . '/../Models/Utente.php';

class AuthController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function login($username, $password) {
        $messaggio_errore = "";

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $modello_utente = new Utente($this->db);
            $dati_utente = $modello_utente->cerca_username($username);

            if ($dati_utente && password_verify($password, $dati_utente['hash_password'])) {
                $_SESSION['username'] = $dati_utente['username'];
                session_regenerate_id(true);
                header('Location: index.php?action=home');
                exit;
            } else {
                $messaggio_errore = "Credenziali non valide.";
            }
        }

        $template = new Template(__DIR__ . '/../Views/pages/loginForm.html');
        $template->set_dati_pagina(['ERRORE' => $messaggio_errore]);
        
        return $template->get_pagina();
    }
}