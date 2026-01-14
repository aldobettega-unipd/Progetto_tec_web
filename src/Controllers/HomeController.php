<?php
namespace App\Controllers;

use App\Core\Controller;
use App\Core\Template;
use App\Models\ArtistaModel;
use App\Models\CanzoneModel;
use App\Helpers\CarouselHelper;

class HomeController extends Controller{

    public function visualizza_home() {
        $Artista = new ArtistaModel(); 
        $Canzone = new CanzoneModel();

        $artisti = $Artista->get_all() ?? [];
        $canzoni = $Canzone->get_all() ?? [];

        $this->render('homePage', [
            'LISTA_ARTISTI' => CarouselHelper::carousel($artisti, 'artistaCard'),
            'LISTA_CANZONI' => CarouselHelper::carousel($canzoni, 'canzoneCard')
        ]);
    }


}