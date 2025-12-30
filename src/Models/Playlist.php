<?php

class Playlist {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function insert_playlist($nome_playlist, $nome_utente) {
        $prepared_stmt = $this->db->prepare("INSERT INTO playlist (nome, username) VALUES (?, ?)");
        $prepared_stmt->bind_param("ss", $nome_playlist, $nome_utente);
        $prepared_stmt->execute();
        
        $prepared_stmt->close(); 
    }

    public function get_all_playlist($username) {
        $prepared_stmt = $this->db->prepare("SELECT nome FROM playlist WHERE username=?");
        $prepared_stmt->bind_param("s", $username);
        $prepared_stmt->execute();
        $risultato_query = $prepared_stmt->get_result();

        $dati_playlist = $risultato_query->fetch_all(MYSQLI_ASSOC);
        
        $risultato_query->free();
        $prepared_stmt->close();

        return $dati_playlist;
    }
}


?>