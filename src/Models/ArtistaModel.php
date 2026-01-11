<?php
namespace App\Models;
use App\Core\Model;

class ArtistaModel extends Model {
    private $db;
    private $table;

    public function __construct($db) {
        $this->db = $db;
        $this->table = "artista"
    }

    public function get_dati_artista($artista) {
        $sql = "SELECT nome AS nome_artista, descrizione FROM artista WHERE nome=?";
        return $this->query($sql, [$artista])->fetch();
    }

    public function cerca($artista) {
        $artista = "%$artista%";
        $sql = "SELECT nome AS nome_artista FROM artista WHERE nome LIKE ?";
        return $this->query($sql, [$artista])->fetch();
    }
}