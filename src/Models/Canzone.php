<?php
class Canzone {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function getById($nome) {
        $stmt = $this->db->prepare("SELECT * FROM canzone WHERE nome=?");
        $stmt->bind_param("s", $nome);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_assoc();  
    }

    public function getAll() {
        $result = $this->db->query("SELECT nome FROM canzone");
        return $result->fetch_all(MYSQLI_ASSOC);
    }
}