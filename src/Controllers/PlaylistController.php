<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\PlaylistModel;
use App\Helpers\CarouselHelper;

Class PlaylistController extends Controller {
    private $Playlist;

    public function __construct(){
        $this->Playlist = new PlaylistModel();
    }

    public function view_playlist_form(){
        $this->page_title = "Crea Playlist";
        $this->page_description = "Crea una nuova playlist per organizzare le tue canzoni preferite.";
        $this->render('playlistForm');
    }

    public function create_playlist($username) {
        $nome_playlist = $this->post('nome_playlist');
        $this->Playlist->insert_playlist($nome_playlist, $username);
        //check errori
        $this->redirect('/profilo/' . $username);

    }

    public function view_playlist_page($username, $id_playlist) {
        $dati_playlist = $this->Playlist->get_dati_playlist($id_playlist);

        if (!$dati_playlist) {

            $this->abort(404, "Ci dispiace, la playlist #$id_playlist non esiste o e` stata cancellata.");
        }

        $canzoni_playlist = $this->Playlist->get_canzoni_playlist($id_playlist);

        $nome_playlist = $dati_playlist['nome_playlist'];
        $descrizione_playlist = "Playlist: " . $dati_playlist['nome_playlist'] . " creata da " . $dati_playlist['username'] . ".";

        $this->render('playlistPage', [
            'NOME_PLAYLIST' => $nome_playlist,
            'DESCRIZIONE_PLAYLIST' => $descrizione_playlist,
            'LISTA_CANZONI' => CarouselHelper::carousel($canzoni_playlist, 'canzoneCard'),
            'ID_PLAYLIST' => $id_playlist
        ]);
        //capire gli errori 404 derivati dal db
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

        $this->render('playlistSearchSong', $dati_playlist);
        //capire gli errori 404 derivati dal db
    }

    /*
    public function mostra_selezione_playlist($id_canzone) {

        $playlist_utente = $this->Playlist->get_all_playlist($_SESSION['username']);

        $playlist_HTML = "";

        foreach($playlist_utente as $playlist) {
            $template_card = new Template(__DIR__ . "/../Views/components/playlistCard.html");
            $template_card->set_dati_pagina([
                'nome_playlist' => $playlist['nome_playlist'],
                'id' => $playlist['id'],
                'testo_azione' => 'aggiungi qui',
                'link_azione' => "index.php?action=aggiungi_canzone_in_playlist&id_canzone=$id_canzone&id_playlist=" . $playlist['id']
            ]);
            $playlist_HTML .= $template_card->get_pagina();
        }

        $template = new Template(__DIR__ . '/../Views/components/selezionePlaylist.html');
        $template->set_dati_pagina([
            'lista_playlist' => $playlist_HTML
        ]);

        return $template->get_pagina();

    }

    public function aggiungi_canzone($id_playlist, $id_canzone) {
        $this->Playlist->insert_canzone_in_playlist($id_playlist, $id_canzone);
        header('Location: index.php?action=profilo');
    }

    public function rimuovi_canzone($id_playlist, $id_canzone) {
        $this->Playlist->delete_canzone_da_playlist($id_playlist, $id_canzone);
        header('Location: index.php?action=apri_playlist&id=' . $id_playlist);
    }

    */

}



?>
