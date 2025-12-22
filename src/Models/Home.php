<?php

class Home {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    /*public function getById($nome) {
        $stmt = $this->db->prepare("SELECT nome, descrizione FROM  WHERE ");
        $stmt->bind_param("s", $nome);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_assoc();
    }*/
}