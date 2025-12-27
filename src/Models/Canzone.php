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
        return $risultato_query->fetch_assoc();
    }

    public function getAll() {
        $risultato_query = $this->db->query("SELECT nome FROM canzone");
        return $risultato_query->fetch_all(MYSQLI_ASSOC);
    }
}