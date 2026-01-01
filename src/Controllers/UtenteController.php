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

        $modello_playlist = new Playlist($this->db);
        $playlist_utente = $modello_playlist->get_all_playlist($username) ?? [];

        $playlist_HTML = "";

        foreach($playlist_utente as $playlist) {
            $template_card = new Template(__DIR__ . "/../Views/components/playlistCard.html");
            $template_card->set_dati_pagina([
                'id' => $playlist['id'],
                'nome_playlist' => $playlist['nome_playlist'],
                'testo_azione' => "apri playlist",
                'link_azione' => "index.php?action=apri_playlist&id=" . $playlist['id']
            ]);
            $playlist_HTML .= $template_card->get_pagina();
        }


        $profilo_template = new Template(__DIR__ . '/../Views/pages/userPage.html');
        $profilo_template->set_dati_pagina([
            'username' => htmlspecialchars($username),
            'lista_playlist' => $playlist_HTML
        ]);

        return $profilo_template->get_pagina();
    }
}


?>