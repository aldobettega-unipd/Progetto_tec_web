<?php

require_once __DIR__ . '/../Models/Playlist.php';

class PlaylistController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function crea_playlist($nome_playlist, $username) {
        $modelloPlaylist = new Playlist($this->db);
        $modelloPlaylist->insert_playlist($nome_playlist, $username);
        header('Location: index.php?action=profilo');
    }

    public function visualizza_playlist($id) {
        $modelloPlaylist = new Playlist($this->db);
        $canzoni_playlist = $modelloPlaylist->get_canzoni_playlist($id);

        $risultato_ricerca = $modelloPlaylist->get_nome_playlist($id);
        $nome_playlist = $risultato_ricerca['nome'] ?? 'Playlist sconosciuta';
        
        $canzoniHTML = "";
        foreach ($canzoni_playlist as $canzone) {
            $templateCard = new Template(__DIR__ . '/../Views/components/canzoneCard.html');
            $templateCard->setDatiPagina($canzone);
            $canzoniHTML .= $templateCard->getPagina();
        }

        $playlistTemplate = new Template(__DIR__ . '/../Views/pages/playlistPage.html');
        $playlistTemplate->setDatiPagina([
            'id' => $id,
            'nome_playlist' =>$nome_playlist,
            'lista_canzoni' => $canzoniHTML ?: "<p>Nessuna canzone in questa playlist.</p>",
        ]);

        return $playlistTemplate->getPagina();
    }

    public function elimina_playlist($id_playlist) {
        $modelloPlaylist = new Playlist($this->db);
        $modelloPlaylist->delete_playlist($id_playlist);

        header('Location: index.php?action=profilo');
    }
}



?>
