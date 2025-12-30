<?php

require_once __DIR__ . '/../Models/Playlist.php';

class PlaylistController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function crea_playlist($nome_playlist, $username) {
        $modello_playlist = new Playlist($this->db);
        $modello_playlist->insert_playlist($nome_playlist, $username);
        header('Location: index.php?action=profilo');
    }

    public function visualizza_playlist($id) {
        $modello_playlist = new Playlist($this->db);
        $canzoni_playlist = $modello_playlist->get_canzoni_playlist($id);

        $risultato_ricerca = $modello_playlist->get_nome_playlist($id);
        $nome_playlist = $risultato_ricerca['nome'] ?? 'Playlist sconosciuta';
        
        $canzoni_HTML = "";
        foreach ($canzoni_playlist as $canzone) {
            $template_card = new Template(__DIR__ . '/../Views/components/canzoneCard.html');
            $template_card->set_dati_pagina($canzone);
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

        header('Location: index.php?action=profilo');
    }
}



?>
