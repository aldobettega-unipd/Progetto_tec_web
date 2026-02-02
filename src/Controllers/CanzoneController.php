<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Models\PlaylistModel;
use App\Models\UserModel;
use App\Helpers\CarouselHelper;
use App\Helpers\FavoriteBtnHelper;
use App\Helpers\ChordParser;
use App\Helpers\ListHelper;
use App\Helpers\TagAccordiHelper;
use App\Helpers\BreadcrumbHelper;
use App\Core\Auth;

class CanzoneController extends Controller
{
    private $Canzone;

    public function __construct()
    {
        $this->Canzone = new CanzoneModel();
        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
        BreadcrumbHelper::add('Canzoni', '/canzoni');
    }


    public function view_all_canzoni()
    {
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

    public function view_canzone($slug)
    {
        // 1. Recuperi dal DB
        $canzone = $this->Canzone->get_dati_canzone($slug);

        if (!$canzone) {
            $this->abort(404, "Canzone non trovata nel database.");
        }

        // Logica lingua
        $langAttr = '';
        if (!empty($canzone['lingua_canzone'])) {
            $lingua = strtolower($canzone['lingua_canzone']);
            if ($lingua !== 'it') {
                $langAttr = 'lang="' . htmlspecialchars($lingua) . '"';
            }
        }


        $slug_artista = $this->Canzone->get_artista($slug)['slug_artista'];
        $accordi = $this->Canzone->get_accordi($canzone['id_canzone']);
        $accordi = array_column($accordi, 'accordo');
        $htmlTesto = ChordParser::render($canzone['testo_canzone'], $canzone['lingua_canzone']);


        $playlistsData = $this->get_playlists_data($canzone['id_canzone']);
        $playlistHtml = ListHelper::playlistChecklist($playlistsData['checklist']);
        $favId = $playlistsData['favorite']['id'];
        $favClass = $playlistsData['favorite']['is_active'] ? 'active' : '';


        $this->page_title = $canzone['titolo_canzone'];
        $this->page_description = "Testo e accordi della canzone {$canzone['titolo_canzone']} di {$canzone['autore_canzone']}.";
        $this->scriptPathList[] = 'song';
        BreadcrumbHelper::add($canzone['titolo_canzone']);

        // 3. Render
        $this->render('canzonePage', [
            'ACCORDI_CANZONE' => TagAccordiHelper::generaTags($accordi),
            'TITOLO_CANZONE' => $canzone['titolo_canzone'],
            'LANG_ATTR' => $langAttr,
            'NOME_ARTISTA' => $canzone['autore_canzone'],
            'ID_CANZONE' => $canzone['id_canzone'],
            'SLUG_ARTISTA' => $slug_artista,
            'TESTO_CANZONE_HTML' => $htmlTesto,
            'LISTA_PLAYLIST' => $playlistHtml,
            'PULSANTE_PREFERITI'  => FavoriteBtnHelper::render($canzone['id_canzone'], 'btn-favorite'),
            'REDIRECT_URL' => rawurlencode($_SERVER['REQUEST_URI'])
        ]);
    }

    public function view_search()
    {
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

    private function get_playlists_data($id_canzone)
    {
        $checklistData = [];
        $favData = [
            'id' => null,
            'is_active' => false
        ];
        if (!Auth::isUser()) {
            return [
                'checklist' => $checklistData,
                'favorite' => $favData
            ];
        }

        $Playlist = new PlaylistModel();
        $User = new UserModel() ;
        $id_user = $User->get_current_user()['id_utente'];
        $all_playlists = $Playlist->get_user_playlist($id_user);
        $playlists_containing_song = $this->Canzone->get_playlist($id_user, $id_canzone);
        $ids_containing_song = array_column($playlists_containing_song, 'id_playlist');


        foreach ($all_playlists as $playlist) {
            $id = $playlist['id_playlist'];
            $nome = $playlist['nome_playlist'];

            $isChecked = in_array($id, $ids_containing_song);

            if ($nome === 'Preferiti') {
                $favData['id'] = $id;
                $favData['is_active'] = $isChecked;
            } else {
                $checklistData[$id] = [$nome, $isChecked];
            }
        }
        return [
            'checklist' => $checklistData,
            'favorite' => $favData
        ];
    }


}