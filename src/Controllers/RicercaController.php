<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Helpers\CarouselHelper;
use App\Helpers\BreadcrumbHelper;
use App\Helpers\FormHelper;

class RicercaController extends Controller {

    public function esegui_ricerca() {
        
        $query = $this->get('query', '');
        $active_tab = $_GET['tab'] ?? 'canzoni';
        $filtro_lingua = $_GET['lingua'] ?? '';
        $filtro_accordi = $_GET['accordi'] ?? [];

        $visibility_filtri = 'hidden';
        $options_lingua = '';
        $options_accordi = '';
        $htmlRisultati = '';
        $messaggio = '';
        
        $activeCanzoni = ($active_tab === 'canzoni') ? 'active' : '';
        $activeArtisti = ($active_tab === 'artisti') ? 'active' : '';

        switch ($active_tab) {
            case 'artisti':
                $visibility_filtri = 'hidden';
                
                if ($query !== '') {
                    $artistaModel = new ArtistaModel();
                    $risultati = $artistaModel->cerca_artisti($query);
                    $htmlRisultati = CarouselHelper::carousel($risultati, 'artistaCard');
                    $messaggio = "Artisti trovati per: <strong>" . htmlspecialchars($query) . "</strong>";
                } else {
                    $messaggio = "Cerca il nome di un artista...";
                }
                break;

            case 'canzoni':
            default:
                $visibility_filtri = ''; 
                
                $canzoneModel = new CanzoneModel();

                $lingue_raw = $canzoneModel->get_lingue_canzoni();
                $accordi_raw = $canzoneModel->get_accordi_canzoni();

                $array_lingue = array_column($lingue_raw, 'lingua_canzone');
                $array_accordi = array_column($accordi_raw, 'accordo');

                $options_lingua = FormHelper::createRadios($array_lingue, 'lingua', $filtro_lingua);
                $options_accordi = FormHelper::createCheckboxes($array_accordi, 'accordi[]', $filtro_accordi);

                $filtri_attivi = !empty($filtro_lingua) || !empty($filtro_accordi);
                
                if ($query !== '' || $filtri_attivi) {
                    if ($filtri_attivi) {
                        $risultati = $canzoneModel->cerca_canzoni_avanzata($query, $filtro_lingua, $filtro_accordi);
                    } else {
                        $risultati = $canzoneModel->cerca_canzoni($query);
                    }

                    if (!empty($risultati)) {
                        $htmlRisultati = CarouselHelper::carousel($risultati, 'canzoneCard');
                        $count = count($risultati);
                        $messaggio = "$count brani trovati";
                    } else {
                        $htmlRisultati = "<p style='padding:20px; text-align:center;'>Nessun brano corrisponde ai criteri.</p>";
                    }
                } else {
                    $messaggio = "Usa la ricerca o i filtri per esplorare le canzoni.";
                }
                break;
        }

        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
        BreadcrumbHelper::add('Esplora');

        $this->render('searchPage', [
            'SEARCH_VALUE'        => htmlspecialchars($query),
            'TAB_CORRENTE'        => $active_tab,
            'ACTIVE_CANZONI'      => $activeCanzoni,
            'ACTIVE_ARTISTI'      => $activeArtisti,

            'VISIBILITY_FILTRI'   => $visibility_filtri,
            'OPTIONS_LINGUA'      => $options_lingua,
            'OPTIONS_ACCORDI'     => $options_accordi,

            'MESSAGGIO_RISULTATI' => $messaggio,
            'LISTA_RISULTATI'     => $htmlRisultati,
        ]);
    }
}