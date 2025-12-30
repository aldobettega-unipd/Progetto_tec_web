<?php
require_once __DIR__ . '/../Models/Utente.php';

class RegistraController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function registrazione($username, $password) {
        $messaggio_errore = '';

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $modello_utente = new Utente($this->db);
            if ($modello_utente->crea_utente($username, $password)) {
                header('Location: index.php?action=mostra_login_form');
                exit;
            } else {
                $messaggio_errore = "Nome utente non disponibile";
            }
        }

        $template = new Template(__DIR__ . '/../Views/pages/registraForm.html');
        $template->set_dati_pagina(['ERRORE' => $messaggio_errore]);
        
        return $template->get_pagina();
        
    }
}



?>