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
    }
}



?>