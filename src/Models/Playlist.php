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

    public function delete_playlist($id_playlist) {
        $prepared_stmt = $this->db->prepare("DELETE FROM playlist WHERE id = ?");
        $prepared_stmt->bind_param("i", $id_playlist);
        $prepared_stmt->execute();

        $prepared_stmt->close();
    }

    public function get_all_playlist($username) {
        $prepared_stmt = $this->db->prepare("SELECT id, nome AS nome_playlist FROM playlist WHERE username=?");
        $prepared_stmt->bind_param("s", $username);
        $prepared_stmt->execute();
        $risultato_query = $prepared_stmt->get_result();

        $dati_playlist = $risultato_query->fetch_all(MYSQLI_ASSOC);
        
        $risultato_query->free();
        $prepared_stmt->close();

        return $dati_playlist;
    }

    public function get_canzoni_playlist($id_playlist) {
        $prepared_stmt = $this->db->prepare("SELECT p.nome AS nome_playlist, c.nome AS nome_canzone, c.id AS id_canzone FROM playlist p JOIN canzoni_playlist cp ON p.id = cp.playlist JOIN canzone c ON cp.canzone = c.id WHERE p.id = ?");
        $prepared_stmt->bind_param("i", $id_playlist);
        $prepared_stmt->execute();
        $risultato_query = $prepared_stmt->get_result();
        $canzoni_playlist = $risultato_query->fetch_all(MYSQLI_ASSOC);
 
        $risultato_query->free();
        $prepared_stmt->close();

        return $canzoni_playlist;
    }

    public function get_nome_playlist($id_playlist) {
        $prepared_stmt = $this->db->prepare("SELECT nome AS nome_playlist FROM playlist WHERE id = ?");
        $prepared_stmt->bind_param("i", $id_playlist);
        $prepared_stmt->execute();
        $risultato_query = $prepared_stmt->get_result();
        $nome_playlist = $risultato_query->fetch_assoc();

        $risultato_query->free();
        $prepared_stmt->close();

        return $nome_playlist;
    }

    public function insert_canzone_in_playlist($id_playlist, $id_canzone) {
        $prepared_stmt = $this->db->prepare("INSERT INTO canzoni_playlist (playlist, canzone) VALUES (?, ?)");
        $prepared_stmt->bind_param("ii", $id_playlist, $id_canzone);
        $prepared_stmt->execute();
        
        $prepared_stmt->close();
    }

    public function delete_canzone_da_playlist($id_playlist, $id_canzone) {
        $prepared_stmt = $this->db->prepare("DELETE FROM canzoni_playlist WHERE playlist = ? AND canzone = ?");
        $prepared_stmt->bind_param("ii", $id_playlist, $id_canzone);
        $prepared_stmt->execute();
        
        $prepared_stmt->close();
    }
}


?>