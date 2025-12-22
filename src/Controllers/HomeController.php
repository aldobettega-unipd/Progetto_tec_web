<?php

require_once __DIR__ . '/../../config.php';
require_once __DIR__ . '/../Models/Home.php';

class HomeController {
    private $db;
    private $artistaModel; 

    public function __construct($db) {
        $this->db = $db;
        $this->artistaModel = new Artista($this->db);
    }

    public function visualizzaHome() {
        $artisti = $this->artistaModel->getAll() ?? [];

        $artistiHTML = "";
        foreach ($artisti as $artista) {
            $templateCard = new Template(__DIR__ . '/../Views/pages/artistaCard.html');
            $templateCard->inserisciDatiPagina($artista);
            $artistiHTML .= $templateCard->render();
        }

        $homeTemplate = new Template(__DIR__ . '/../Views/pages/homePage.html');
        $homeTemplate->inserisciDatiPagina([
            'lista_artisti' => $artistiHTML
        ]);

        return $homeTemplate->render();
    }
}