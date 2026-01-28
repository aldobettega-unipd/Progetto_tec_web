<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Helpers\CarouselHelper;
use App\Helpers\BreadcrumbHelper;

class RicercaController extends Controller {

    public function esegui_ricerca() {
        $query = $this->get('query', '');
        $active_tab = $_GET['tab'] ?? 'canzoni';

        $htmlRisultati = '';
        $messaggio = '';
        
        $activeCanzoni = ($active_tab === 'canzoni') ? 'active' : '';
        $activeArtisti = ($active_tab === 'artisti') ? 'active' : '';

        if ($query !== '') {
            
            switch ($active_tab) {
                case 'artisti':
                    $artistaModel = new ArtistaModel();
                    $risultati = $artistaModel->cerca_artisti($query);
                    $cardType = 'artistaCard'; 
                    $messaggio = "Artisti trovati per: <strong>" . $query . "</strong>";
                    break;

                case 'canzoni':
                default:
                    $canzoneModel = new CanzoneModel();
                    $risultati = $canzoneModel->cerca_canzoni($query);
                    $cardType = 'canzoneCard';                    
                    $messaggio = "Brani trovati per: <strong>" . $query . "</strong>";
                    break;
            }

            if (!empty($risultati)) {
                $htmlRisultati = CarouselHelper::carousel($risultati, $cardType);
            } else {
                $htmlRisultati = "<p> Nessun risultato trovato in questa categoria.</p>";
            }

        } else {
            $messaggio = "Inizia a cercare...";
            $htmlRisultati = "";
        }

        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
        BreadcrumbHelper::add('Esplora');

        $this->render('searchPage', [
            'SEARCH_VALUE'        => htmlspecialchars($query),
            'MESSAGGIO_RISULTATI' => $messaggio,
            'LISTA_RISULTATI'     => $htmlRisultati,
            
            'ACTIVE_CANZONI'      => $activeCanzoni,
            'ACTIVE_ARTISTI'      => $activeArtisti,
            'TAB_CORRENTE'        => $active_tab
        ]);
    }
}