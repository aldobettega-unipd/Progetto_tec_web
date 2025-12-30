<?php

require_once __DIR__ . '/../Models/Playlist.php';

class UtenteController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function visualizza_profilo() {
        if (!isset($_SESSION['username'])) {
            header('Location: index.php?action=login');
            exit;
        }
        $username = $_SESSION['username'];

        $modelloPlaylist = new Playlist($this->db);
        $playlist_utente = $modelloPlaylist->get_all_playlist($username) ?? [];

        $playlistHTML = "";

        foreach($playlist_utente as $playlist) {
            $templateCard = new Template(__DIR__ . "/../Views/pages/playlistCard.html");
            $templateCard->setDatiPagina($playlist);
            $playlistHTML .= $templateCard->getPagina();
        }


        $profiloTemplate = new Template(__DIR__ . '/../Views/pages/userPage.html');
        $profiloTemplate->setDatiPagina([
            'username' => htmlspecialchars($username),
            'lista_playlist' => $playlistHTML
        ]);

        return $profiloTemplate->getPagina();
    }
}


?>