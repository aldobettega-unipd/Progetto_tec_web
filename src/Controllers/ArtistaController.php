<?php

require_once __DIR__ . '/../../config.php';
require_once __DIR__ . '/../Models/Artista.php';

class ArtistaController {
    private $db;    

    public function __construct($db) {
        $this->db = $db;
    }

    public function visualizza($nome) {
        $model = new Artista($this->db);
        $datiArtista = $model->getById($nome);

        $template = new Template(__DIR__ . '/../Views/pages/artistaPage.html');
        $template->inserisciDatiPagina($datiArtista);
        return $template->render();
    }
}
