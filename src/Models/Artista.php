<?php
// Model di artista: si occupa di connettersi al db e comunicare con lui con la query, poi prepara i dati in un
// formato pronto per il Controller
class Artista {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function getById($nome) {
        $stmt = $this->db->prepare("SELECT nome, descrizione FROM artista WHERE nome=?");
        $stmt->bind_param("s", $nome);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_assoc();  
    }
}