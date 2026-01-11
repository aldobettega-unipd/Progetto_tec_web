<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\ArtistaModel;

require_once __DIR__ . '/../Models/Artista.php';

Class ArtistaController extends Controller { 

    public function view_artista_page($artista) {
        $artista = new ArtistaModel();
        $dati_artista = $artista->get_dati_artista($artista);

        $this->render('artista', $dati_artista);
    }
}
