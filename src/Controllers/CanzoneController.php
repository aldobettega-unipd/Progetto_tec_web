<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Helpers\CarouselHelper;

class CanzoneController extends Controller {
    private $Canzone;

    public function __construct(){
        $this->Canzone = new CanzoneModel();
    }

    public function view_canzone($slug_canzone) {
        
        $dati_canzone = $this->Canzone->get_dati_canzone($slug_canzone);

        if (!$dati_canzone) {

            $this->abort(404, "Ci dispiace, la Canzone #$slug non esiste nel nostro database.");
        }
        
        $this->render('canzonePage', $dati_canzone);
    }

    public function view_search() {
        $Artista = new ArtistaModel();

        $artisti = $Artista->get_all(); 
        $canzoni = $this->Canzone->get_all(); 

        $html_artisti = CarouselHelper::carousel($artisti, 'artistaCard');
        $html_canzoni = CarouselHelper::carousel($canzoni, 'canzoneCard');

        $this->render('searchPage', [
            'CAROUSEL_ARTISTI' => $html_artisti,
            'CAROUSEL_CANZONI' => $html_canzoni
        ]);

        }
}