<?php
namespace App\Controllers;

use App\Core\Controller;
use App\Core\Template;
use App\Models\ArtistaModel;
use App\Models\CanzoneModel;

class HomeController extends Controller{

    public function visualizza_home() {
        $modello_artista = new ArtistaModel(); 
        $modello_canzone = new CanzoneModel();

        $artisti = $modello_artista->get_all() ?? [];
        $canzoni = $modello_canzone->get_all() ?? [];

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

        $this->render('homePage', [
            'LISTA_ARTISTI' => $artisti_HTML,
            'LISTA_CANZONI' => $canzoni_HTML
        ]);

    }
}