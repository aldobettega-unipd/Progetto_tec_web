<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\ArtistaModel;
use App\Core\Template;
use App\Helpers\CarouselHelper;
use App\Helpers\BreadcrumbHelper;

Class ArtistaController extends Controller {
    private $Artista;

    public function __construct(){
        $this->Artista = new ArtistaModel();
        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
        BreadcrumbHelper::add('Artisti', '/artisti');
    }

    public function view_artista($slug) {
        $dati_artista = $this->Artista->get_dati_artista($slug);
        
        if (!$dati_artista) {

            $this->abort(404, "Ci dispiace, l'Artista #$slug non esiste nel nostro database.");
        }


        $canzoni = $this->Artista->get_canzoni($slug);
        $dati_artista["LISTA_CANZONI"] = CarouselHelper::carousel($canzoni, 'canzoneCard');

        $this->page_title = $dati_artista['nome_artista'];
        $this->page_description = $dati_artista['descrizione_artista'];

        BreadcrumbHelper::add($dati_artista['nome_artista']);
        
        $this->render('artistaPage', $dati_artista);
    }

    public function carosello_artista(){

    }
}
