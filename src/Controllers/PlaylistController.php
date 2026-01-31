<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\PlaylistModel;
use App\Models\UserModel;
use App\Helpers\ListHelper;
use App\Helpers\BreadcrumbHelper;
use App\Core\Auth;

Class PlaylistController extends Controller {

    private $Playlist;

    public function __construct(){
        $this->Playlist = new PlaylistModel();
        $username = $_SESSION['user']['username'];
        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
        BreadcrumbHelper::add('Profilo', '/profilo');
    }

    public function view_playlist_form(){
        $this->page_title = "Crea Playlist";
        $this->page_description = "Crea una nuova playlist per organizzare le tue canzoni preferite.";
        BreadcrumbHelper::add('Crea Playlist');
        $this->render('playlistForm');
    }

    public function create_playlist() {
        $nome_playlist = $this->post('nome_playlist');
        $id_user = $this->get_user()['id'];
        $this->Playlist->insert_playlist($nome_playlist, $id_user);
        $this->redirect('/profilo');
    } 

    public function view_playlist_page($id_playlist) {
        $dati_playlist = $this->Playlist->get_dati_playlist($id_playlist);

        if (!$dati_playlist) {
            $this->abort(404, "Ci dispiace, la playlist #$id_playlist non esiste o e` stata cancellata.");
        }

        $canzoni_playlist = $this->Playlist->get_canzoni_playlist($id_playlist);
        
        $lista_html = ListHelper::render($canzoni_playlist, 'canzoneRow');

        $nome_playlist = $dati_playlist['nome_playlist'];
        $username = $this->get_user()['username'];
        
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

    private function get_user(){
        $username = Auth::getUser()['username'];
        $User = new UserModel();
        $id = $User->find_user($username)['id_utente'];
        return ['id' => $id, 'username' => $username];
    }

}



?>
