<?php

require_once __DIR__ . '/../../config.php';
require_once __DIR__ . '/../Models/Home.php';

class HomeController {
    private $db;
    private $artistaModel; 
    private $canzoneModel;

    public function __construct($db) {
        $this->db = $db;
        $this->artistaModel = new Artista($this->db);
        $this->canzoneModel = new Canzone($this->db);
    }

    public function visualizzaHome() {
        $artisti = $this->artistaModel->getAll() ?? [];
        $canzoni = $this->canzoneModel->getAll() ?? [];

        $artistiHTML = "";
        foreach ($artisti as $artista) {
            $templateCard = new Template(__DIR__ . '/../Views/pages/artistaCard.html');
            $templateCard->inserisciDatiPagina($artista);
            $artistiHTML .= $templateCard->render();
        }

        $canzoniHTML = "";
        foreach ($canzoni as $canzone) {
            $templateCard = new Template(__DIR__ . '/../Views/pages/canzoneCard.html');
            $templateCard->inserisciDatiPagina($canzone);
            $canzoniHTML .= $templateCard->render();
        }

        $homeTemplate = new Template(__DIR__ . '/../Views/pages/homePage.html');
        $homeTemplate->inserisciDatiPagina([
            'lista_artisti' => $artistiHTML,
            'lista_canzoni' => $canzoniHTML
        ]);

        return $homeTemplate->render();
    }
}