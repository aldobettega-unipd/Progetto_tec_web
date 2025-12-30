<?php
class Canzone {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function get_dati_canzone($canzone) {
        $prepared_stmt = $this->db->prepare("SELECT * FROM canzone WHERE nome=?");
        $prepared_stmt->bind_param("s", $canzone);
        $prepared_stmt->execute();
        $risultato_query = $prepared_stmt->get_result();
        $dati_canzone = $risultato_query->fetch_assoc();

        $risultato_query->free();
        $prepared_stmt->close();

        return $dati_canzone;
    }

    public function getAll() {
        $risultato_query = $this->db->query("SELECT nome AS nome_canzone FROM canzone");
        $dati_canzoni = $risultato_query->fetch_all(MYSQLI_ASSOC);

        $risultato_query->free();

        return $dati_canzoni;
    }

    public function cerca($canzone) {
        $canzone = "%$canzone%";
        $prepared_stmt = $this->db->prepare("SELECT * FROM canzone WHERE nome LIKE ?");
        $prepared_stmt->bind_param("s", $canzone);
        $prepared_stmt->execute();
        
        $risultato_query = $prepared_stmt->get_result();
        $dati_ricerca = $risultato_query->fetch_all(MYSQLI_ASSOC);

        $risultato_query->free();
        $prepared_stmt->close();

        return $dati_ricerca;
    }
}