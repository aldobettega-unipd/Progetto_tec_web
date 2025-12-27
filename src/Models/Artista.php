<?php

class Artista {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function get_dati_artista($artista) {
        $prepared_stmt = $this->db->prepare("SELECT nome, descrizione FROM artista WHERE nome=?");
        $prepared_stmt->bind_param("s", $artista);
        $prepared_stmt->execute();
        $risultato_query = $prepared_stmt->get_result();
        return $risultato_query->fetch_assoc();  
    }

    public function getAll() {
        $risultato_query = $this->db->query("SELECT nome FROM artista");
        return $risultato_query->fetch_all(MYSQLI_ASSOC);
    }
}