<?php
namespace App\Models;
use App\Core\Model;

class CanzoneModel extends Model {
    private $db;
    private $table;

    public function __construct($db) {
        $this->db = $db;
        $this->table = "canzone";
    }

    public function get_dati_canzone($canzone) {
        $sql = "SELECT id AS id_canzone, nome AS nome_canzone, artista AS nome_artista, descrizione, testo_canzone FROM canzone WHERE nome=?";
        return $this->query($sql, [$canzone])->fetch();
    }

    public function cerca($canzone) {
        $canzone = "%$canzone%";
        $sql = "SELECT nome AS nome_canzone FROM canzone WHERE nome LIKE ?";
        return $this->query($sql, $canzone)->fetch();        
    }
}