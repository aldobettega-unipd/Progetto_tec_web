<?php
namespace App\Controllers;

use App\Core\Controller;
use App\Core\Template;
use App\Models\ArtistaModel;
use App\Models\CanzoneModel;
use App\Helpers\CarouselHelper;
use App\Helpers\BreadcrumbHelper;

class HomeController extends Controller{

    public function visualizza_home() {
        $Artista = new ArtistaModel(); 
        $Canzone = new CanzoneModel();

        $artisti = $Artista->get_rand(8) ?? [];
        $canzoni = $Canzone->get_rand(15) ?? [];

        $this->page_title = "HomePage";
        $this->page_description = "Benvenuto nella nostra raccolta di canzoni e artisti.";

        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', BASE_URL . '/');

        $this->render('homePage', [
            'LISTA_ARTISTI' => CarouselHelper::carousel($artisti, 'artistaCard'),
            'LISTA_CANZONI' => CarouselHelper::carousel($canzoni, 'canzoneCard')
        ]);
    }


}