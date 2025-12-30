<?php

class Artista {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function get_dati_artista($artista) {
        $prepared_stmt = $this->db->prepare("SELECT nome AS nome_artista, descrizione FROM artista WHERE nome=?");
        $prepared_stmt->bind_param("s", $artista);
        $prepared_stmt->execute();
        $risultato_query = $prepared_stmt->get_result();
        $dati_artista = $risultato_query->fetch_assoc();  

        $risultato_query->free();
        $prepared_stmt->close();

        return $dati_artista;
    }

    public function cerca($artista) {
        $artista = "%$artista%";
        $prepared_stmt = $this->db->prepare("SELECT nome AS nome_artista FROM artista WHERE nome LIKE ?");
        $prepared_stmt->bind_param("s", $artista);
        $prepared_stmt->execute();

        $risultato_query = $prepared_stmt->get_result();
        $dati_ricerca = $risultato_query->fetch_all(MYSQLI_ASSOC);

        $prepared_stmt->close();
        $risultato_query->free();

        return $dati_ricerca;
    }

    public function get_all() {
        $risultato_query = $this->db->query("SELECT nome AS nome_artista FROM artista");
        $dati_artisti = $risultato_query->fetch_all(MYSQLI_ASSOC);
        
        $risultato_query->free();

        return $dati_artisti;
    }
}