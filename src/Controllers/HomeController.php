<?php

class HomeController {
    private $db;
    private $modello_artista; 
    private $modello_canzone;

    public function __construct($db) {
        $this->db = $db;
        $this->modello_artista = new Artista($this->db);
        $this->modello_canzone = new Canzone($this->db);
    }

    public function visualizza_home() {
        $artisti = $this->modello_artista->get_all() ?? [];
        $canzoni = $this->modello_canzone->get_all() ?? [];

        $artisti_HTML = "";
        foreach ($artisti as $artista) {
            $template_card = new Template(__DIR__ . '/../Views/components/artistaCard.html');
            $template_card->set_dati_pagina($artista);
            $artisti_HTML .= $template_card->get_pagina();
        }

        $canzoni_HTML = "";
        foreach ($canzoni as $canzone) {
            $template_card = new Template(__DIR__ . '/../Views/components/canzoneCard.html');
            $template_card->set_dati_pagina($canzone);
            $canzoni_HTML .= $template_card->get_pagina();
        }

        $home_template = new Template(__DIR__ . '/../Views/pages/homePage.html');
        $home_template->set_dati_pagina([
            'lista_artisti' => $artisti_HTML,
            'lista_canzoni' => $canzoni_HTML
        ]);

        return $home_template->get_pagina();
    }
}