<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Helpers\CarouselHelper;
use App\Helpers\BreadcrumbHelper;

class RicercaController extends Controller {

    public function __construct() {
        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', BASE_URL . '/');
    }

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

        $is_filters_open = (!empty($filtro_lingua) || !empty($filtro_accordi));
        $panel_class = $is_filters_open ? 'open' : '';
        $btn_active_class = $is_filters_open ? 'active' : '';

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

                // 1. LINGUE
                $lingue_raw = $canzoneModel->get_lingue_canzoni();
                $array_lingue = array_column($lingue_raw, 'lingua_canzone');
                
                $options_lingua = '<option value="">Tutte le lingue</option>';
                foreach ($array_lingue as $lingua) {
                    $safeLingua = htmlspecialchars($lingua);
                    $selected = ($lingua === $filtro_lingua) ? 'selected' : '';
                    $options_lingua .= "<option value='{$safeLingua}' {$selected}>{$safeLingua}</option>";
                }

                // 2. ACCORDI (Layout a Righe)
                $accordi_raw = $canzoneModel->get_accordi_canzoni();
                $array_accordi = array_column($accordi_raw, 'accordo');
                
                $gruppi = [
                    'DO' => [], 'RE' => [], 'MI' => [], 'FA' => [], 
                    'SOL' => [], 'LA' => [], 'SI' => [], 'ALTRO' => []
                ];

                foreach ($array_accordi as $accordo) {
                    $upper = strtoupper($accordo);
                    if (str_starts_with($upper, 'DO')) $gruppi['DO'][] = $accordo;
                    elseif (str_starts_with($upper, 'RE')) $gruppi['RE'][] = $accordo;
                    elseif (str_starts_with($upper, 'MI')) $gruppi['MI'][] = $accordo;
                    elseif (str_starts_with($upper, 'FA')) $gruppi['FA'][] = $accordo;
                    elseif (str_starts_with($upper, 'SOL')) $gruppi['SOL'][] = $accordo;
                    elseif (str_starts_with($upper, 'LA')) $gruppi['LA'][] = $accordo;
                    elseif (str_starts_with($upper, 'SI')) $gruppi['SI'][] = $accordo;
                    else $gruppi['ALTRO'][] = $accordo;
                }

                // Generazione HTML: Usiamo 'chord-row-group'
                foreach ($gruppi as $radice => $lista) {
                    if (empty($lista)) continue;

                    $options_accordi .= "<div class='chord-row-group'>";
                    $options_accordi .= "<h2>{$radice}</h2>";
                    $options_accordi .= "<div class='chord-checkbox-list'>";
                    
                    foreach ($lista as $acc) {
                        $checked = in_array($acc, $filtro_accordi) ? 'checked' : '';
                        $safeAcc = htmlspecialchars($acc);
                        
                        $options_accordi .= "
                            <label class='checkbox-item'>
                                <input type='checkbox' name='accordi[]' value='{$safeAcc}' {$checked}>
                                <span>{$safeAcc}</span>
                            </label>";
                    }
                    $options_accordi .= "</div></div>"; 
                }

                // RICERCA
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
                    $messaggio = "Usa la ricerca o i filtri per esplorare.";
                }
                break;
        }
        
        $this->page_title = "Esplora";
        BreadcrumbHelper::add('Esplora');

        $this->scriptPathList[] = 'search';
        $this->page_description = "Cerca canzoni e artisti nel catalogo EasyGuitar.";
        
        $this->render('searchPage', [
            'SEARCH_VALUE'        => htmlspecialchars($query),
            'TAB_CORRENTE'        => $active_tab,
            'ACTIVE_CANZONI'      => $activeCanzoni,
            'ACTIVE_ARTISTI'      => $activeArtisti,
            'VISIBILITY_FILTRI_BTN' => $visibility_filtri,
            'PANEL_OPEN_CLASS'    => $panel_class,
            'BTN_ACTIVE_CLASS'    => $btn_active_class,
            'OPTIONS_LINGUA'      => $options_lingua,
            'OPTIONS_ACCORDI'     => $options_accordi,
            'MESSAGGIO_RISULTATI' => $messaggio,
            'LISTA_RISULTATI'     => $htmlRisultati,
        ]);
    }
}