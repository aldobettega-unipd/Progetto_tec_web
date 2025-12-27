<?php

require_once __DIR__ . '/../../config.php';
require_once __DIR__ . '/../Models/Canzone.php';

class CanzoneController {
    private $db;    

    public function __construct($db) {
        $this->db = $db;
    }

    public function visualizza_canzone($canzone) {
        $modello = new Canzone($this->db);
        $datiCanzone = $modello->get_dati_canzone($canzone);

        $template = new Template(__DIR__ . '/../Views/pages/canzonePage.html');
        $template->setDatiPagina($datiCanzone);
        return $template->getPagina();
    }
}