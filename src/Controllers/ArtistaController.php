<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\ArtistaModel;
use App\Core\Template;

Class ArtistaController extends Controller {

    public function view_artista($slug) {
        $artista = new ArtistaModel();
        $dati_artista = $artista->get_dati_artista($slug);

        $canzoni = $artista->get_canzoni($slug);

        $canzoni_HTML = "";
        foreach ($canzoni as $canzone) {
            $template_card = new Template("components/canzoneCard");
            $template_card->set_dati_pagina($canzone);
            $canzoni_HTML .= $template_card->get_pagina();
        }
        $dati_artista["LISTA_CANZONI"] = $canzoni_HTML;
        $this->render('artistaPage', $dati_artista);
    }
}
