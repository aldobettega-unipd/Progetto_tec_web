<?php
namespace App\Models;
use App\Core\Model;

class CanzoneModel extends Model {

        protected $table= "canzone";


    public function get_dati_canzone($canzone) {
        $sql = "SELECT id AS id_canzone, nome AS nome_canzone, artista AS nome_artista, descrizione AS descrizione_canzone, testo_canzone, slug AS slug_canzone FROM canzone WHERE nome=?";
        return $this->fetchOne($sql, [$canzone]);
    }

    public function cerca($canzone) {
        $canzone = "%$canzone%";
        $sql = "SELECT nome AS nome_canzone FROM canzone WHERE nome LIKE ?";
        return $this->fetchAll($sql, $canzone);        
    }
}