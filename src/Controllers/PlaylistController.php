<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\PlaylistModel;
use App\Helpers\ListHelper;
use App\Helpers\BreadcrumbHelper;

Class PlaylistController extends Controller {

    private $Playlist;

    public function __construct(){
        $this->Playlist = new PlaylistModel();
        $username = $_SESSION['user']['username'];
        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
        BreadcrumbHelper::add('Profilo', '/profilo/' . $username);
    }

    public function view_playlist_form(){
        $this->page_title = "Crea Playlist";
        $this->page_description = "Crea una nuova playlist per organizzare le tue canzoni preferite.";
        $username = $_SESSION['user']['username'];
        BreadcrumbHelper::add('Crea Playlist');
        $this->render('playlistForm');
    }

    public function create_playlist($username) {
        $nome_playlist = $this->post('nome_playlist');
        $this->Playlist->insert_playlist($nome_playlist, $username);
        $this->redirect('/profilo/' . $username);
    }

    public function view_playlist_page($username, $id_playlist) {
        $dati_playlist = $this->Playlist->get_dati_playlist($id_playlist);

        if (!$dati_playlist) {

            $this->abort(404, "Ci dispiace, la playlist #$id_playlist non esiste o e` stata cancellata.");
        }

        $canzoni_playlist = $this->Playlist->get_canzoni_playlist($id_playlist);

        $lista_html = ListHelper::render($canzoni_playlist, 'canzonePlaylistItem', 'playlist');


        $nome_playlist = $dati_playlist['nome_playlist'];
        
        $this->page_title = "Playlist: " . $nome_playlist;
        $this->page_description = "Playlist: " . $nome_playlist . " creata da " . $username . ".";
        $this->scriptPathList[] = 'playlistSearch';
        BreadcrumbHelper::add($nome_playlist);

        $this->render('playlistPage', [
            'NOME_PLAYLIST' => $nome_playlist,
            'DESCRIZIONE_PLAYLIST' => "Playlist di " . $username,
            'LISTA_CANZONI' => $lista_html,
            'ID_PLAYLIST' => $id_playlist
        ]);
    }

    
    public function elimina_playlist($username, $id_playlist) {
        
        $this->Playlist->delete_playlist($id_playlist);
        $this->redirect("/profilo/". $username);
    }

    public function view_playlist_search($username, $id_playlist) {
        $dati_playlist = $this->Playlist->get_dati_playlist($id_playlist);

        if (!$dati_playlist) {

            $this->abort(404, "Ci dispiace, la playlist #$id_playlist non esiste o e` stata cancellata.");
        }

        $this->page_title = "Aggiungi Canzoni alla Playlist: " . $dati_playlist['nome_playlist'];
        $this->page_description = "Aggiungi canzoni alla tua playlist: " . $dati_playlist['nome_playlist'] . ".";
        BreadcrumbHelper::add($dati_playlist['nome_playlist'], "/playlist/$username/$id_playlist");

        $this->render('playlistSearchSong', $dati_playlist);
        //capire gli errori 404 derivati dal db
    }



}



?>
