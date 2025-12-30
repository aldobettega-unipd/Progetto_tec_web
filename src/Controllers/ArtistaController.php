<?php

require_once __DIR__ . '/../Models/Artista.php';

class ArtistaController {
    private $db;    

    public function __construct($db) {
        $this->db = $db;
    }

    public function visualizza_artista($artista) {
        $modello = new Artista($this->db);
        $datiArtista = $modello->get_dati_artista($artista);

        $template = new Template(__DIR__ . '/../Views/pages/artistaPage.html');
        $template->setDatiPagina($datiArtista);

        return $template->getPagina();
    }
}
