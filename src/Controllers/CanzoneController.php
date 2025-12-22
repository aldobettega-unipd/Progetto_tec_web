<?php

require_once __DIR__ . '/../../config.php';
require_once __DIR__ . '/../Models/Canzone.php';

class CanzoneController {
    private $db;    

    public function __construct($db) {
        $this->db = $db;
    }

    public function visualizza($nome) {
        $model = new Canzone($this->db);
        $datiCanzone = $model->getById($nome);

        $template = new Template(__DIR__ . '/../Views/pages/canzonePage.html');
        $template->inserisciDatiPagina($datiCanzone);
        return $template->render();
    }
}