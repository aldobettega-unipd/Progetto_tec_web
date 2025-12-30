<?php

class HomeController {
    private $db;
    private $modelloArtista; 
    private $modelloCanzone;

    public function __construct($db) {
        $this->db = $db;
        $this->modelloArtista = new Artista($this->db);
        $this->modelloCanzone = new Canzone($this->db);
    }

    public function visualizza_home() {
        $artisti = $this->modelloArtista->getAll() ?? [];
        $canzoni = $this->modelloCanzone->getAll() ?? [];

        $artistiHTML = "";
        foreach ($artisti as $artista) {
            $templateCard = new Template(__DIR__ . '/../Views/components/artistaCard.html');
            $templateCard->setDatiPagina($artista);
            $artistiHTML .= $templateCard->getPagina();
        }

        $canzoniHTML = "";
        foreach ($canzoni as $canzone) {
            $templateCard = new Template(__DIR__ . '/../Views/components/canzoneCard.html');
            $templateCard->setDatiPagina($canzone);
            $canzoniHTML .= $templateCard->getPagina();
        }

        $homeTemplate = new Template(__DIR__ . '/../Views/pages/homePage.html');
        $homeTemplate->setDatiPagina([
            'lista_artisti' => $artistiHTML,
            'lista_canzoni' => $canzoniHTML
        ]);

        return $homeTemplate->getPagina();
    }
}