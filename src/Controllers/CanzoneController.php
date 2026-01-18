<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Helpers\CarouselHelper;
use App\Helpers\ChordParser;

class CanzoneController extends Controller {
    private $Canzone;

    public function __construct(){
        $this->Canzone = new CanzoneModel();
    }

    public function view_canzone1($slug_canzone) {
        
        $dati_canzone = $this->Canzone->get_dati_canzone($slug_canzone);

        if (!$dati_canzone) {

            $this->abort(404, "Ci dispiace, la Canzone #$slug non esiste nel nostro database.");
        }
        
        $this->render('canzonePage', $dati_canzone);
    }

    public function view_canzone($slug) {
        // 1. Recuperi dal DB
        $canzone = $this->Canzone->get_dati_canzone($slug);

        if (!$canzone) {
            $this->abort(404, "Canzone non trovata nel database.");
        }
        $slug_artista = $this->Canzone->get_artista($slug)['slug_artista'];
        
        // 2. Parsifichi il testo grezzo
        // Assumendo che $canzone['testo'] sia "[C]Siamo solo [G]noi..."
        $htmlTesto = ChordParser::render($canzone['testo_canzone']);

        // 3. Render
        $this->render('canzonePage', [
            'TITOLO_CANZONE' => $canzone['titolo_canzone'],
            'NOME_ARTISTA' => $canzone['autore_canzone'],
            'SLUG_ARTISTA' => $slug_artista,
            'TESTO_CANZONE_HTML' => $htmlTesto // Passi l'HTML già pronto
        ]);
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