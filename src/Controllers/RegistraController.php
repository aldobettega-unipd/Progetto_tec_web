<?php
require_once __DIR__ . '/../Models/Utente.php';
require_once __DIR__ . '/../../config.php';

class RegistraController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function registrazione($username, $password) {
        $messaggioErrore = '';

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $modelloUtente = new Utente($this->db);
            if ($modelloUtente->crea_utente($username, $password)) {

            } else {
                $messaggioErrore = "Nome utente non disponibile";
            }
        }

        $template = new Template(__DIR__ . '/../Views/pages/registraForm.html');
        $template->setDatiPagina(['ERRORE' => $messaggioErrore]);
        
        return $template->getPagina();
        
    }
}



?>