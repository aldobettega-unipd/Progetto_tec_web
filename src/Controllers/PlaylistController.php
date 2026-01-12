<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\PlaylistModel;

Class PlaylistController extends Controller {

    public function create_playlist($nome_playlist, $username) {
        $playlist = new Playlist();
        $playlist->insert_playlist($nome_playlist, $username);
    }

    public function view_playlist_page($id_playlist) {
        $playlist = new Playlist($this->db);
        $canzoni_playlist = $modello_playlist->get_canzoni_playlist($id);

        $risultato_ricerca = $modello_playlist->get_nome_playlist($id);
        $nome_playlist = $risultato_ricerca['nome_playlist'] ?? 'Playlist sconosciuta';
        
        $canzoni_HTML = "";
        foreach ($canzoni_playlist as $canzone) {
            $template_card = new Template(__DIR__ . '/../Views/components/canzoneCard.html');
            $template_card->set_dati_pagina([
                'nome_canzone' => $canzone['nome_canzone'],
                'link_azione' => 'index.php?action=rimuovi_canzone_da_playlist&id_playlist='. $id . '&id_canzone=' . $canzone['id_canzone'],
                'testo_azione' => "rimuovi"
            ]);
            $canzoni_HTML .= $template_card->get_pagina();
        }

        $playlist_template = new Template(__DIR__ . '/../Views/pages/playlistPage.html');
        $playlist_template->set_dati_pagina([
            'id' => $id,
            'nome_playlist' =>$nome_playlist,
            'lista_canzoni' => $canzoni_HTML ?: "<p>Nessuna canzone in questa playlist.</p>",
        ]);

        return $playlist_template->get_pagina();
    }

    public function elimina_playlist($id_playlist) {
        $modello_playlist = new Playlist($this->db);
        $modello_playlist->delete_playlist($id_playlist);
        redirect("/profilo");
    }

    public function mostra_selezione_playlist($id_canzone) {
        $modello_playlist = new Playlist($this->db);
        $playlist_utente = $modello_playlist->get_all_playlist($_SESSION['username']);

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
        $modello_playlist = new Playlist($this->db);
        $modello_playlist->insert_canzone_in_playlist($id_playlist, $id_canzone);
        header('Location: index.php?action=profilo');
    }

    public function rimuovi_canzone($id_playlist, $id_canzone) {
        $modello_playlist = new Playlist($this->db);
        $modello_playlist->delete_canzone_da_playlist($id_playlist, $id_canzone);
        header('Location: index.php?action=apri_playlist&id=' . $id_playlist);
    }

}



?>
