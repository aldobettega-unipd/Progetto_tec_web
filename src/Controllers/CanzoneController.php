<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Helpers\CarouselHelper;
use App\Helpers\ChordParser;
use App\Helpers\ListHelper;
use App\Helpers\BreadcrumbHelper;

class CanzoneController extends Controller {
    private $Canzone;

    public function __construct(){
        $this->Canzone = new CanzoneModel();
        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
        BreadcrumbHelper::add('Canzoni', '/canzoni');
    }

    public function view_all_canzoni() {
        $canzoni = $this->Canzone->get_all();

        // Raggruppa le canzoni per iniziale del titolo
        $canzoni_raggruppate = ListHelper::groupByIndex($canzoni, 'titolo_canzone');

        // Costruisci l'HTML della lista raggruppata
        $lista_html = ListHelper::costruisciListaCanzoni($canzoni_raggruppate);

        $this->page_title = "Tutte le Canzoni";
        $this->page_description = "Esplora tutte le canzoni disponibili nel nostro catalogo.";

        $this->render('canzoniordinatePage', [
            'LISTA_CANZONI' => $lista_html
        ]);
    }

    public function view_canzone($slug) {
        // 1. Recuperi dal DB
        $canzone = $this->Canzone->get_dati_canzone($slug);

        if (!$canzone) {
            $this->abort(404, "Canzone non trovata nel database.");
        }
        $slug_artista = $this->Canzone->get_artista($slug)['slug_artista'];
        $accordi = $this->Canzone->get_accordi($canzone['id_canzone']);
        
        // 2. Parsifichi il testo grezzo
        // Assumendo che $canzone['testo'] sia "[C]Siamo solo [G]noi..."
        $htmlTesto = ChordParser::render($canzone['testo_canzone'], $canzone['lingua_canzone']);

        BreadcrumbHelper::add($canzone['titolo_canzone']);

        // 3. Render
        $this->render('canzonePage', [
            'ACCORDI_CANZONE' => implode(", ", array_column($accordi, 'accordo')),
            'TITOLO_CANZONE' => $canzone['titolo_canzone'],
            'NOME_ARTISTA' => $canzone['autore_canzone'],
            'SLUG_ARTISTA' => $slug_artista,
            'TESTO_CANZONE_HTML' => $htmlTesto
        ]);
    }

    public function view_search() {
        $Artista = new ArtistaModel();

        $artisti = $Artista->get_all(); 
        $canzoni = $this->Canzone->get_all(); 

        $html_artisti = CarouselHelper::carousel($artisti, 'artistaCard');
        $html_canzoni = CarouselHelper::carousel($canzoni, 'canzoneCard');

        $this->page_title = "Ricerca Canzoni e Artisti";
        $this->page_description = "Cerca tra le nostre canzoni e artisti disponibili.";

        $this->render('searchPage', [
            'CAROUSEL_ARTISTI' => $html_artisti,
            'CAROUSEL_CANZONI' => $html_canzoni
        ]);
        }
}