<?php
namespace App\Models;
use App\Core\Model;

class CanzoneModel extends Model {

        protected $table= "canzone";


    public function get_dati_canzone($canzone) {
        $sql = "SELECT c.*, a.slug_artista FROM artista a INNER JOIN canzone c ON a.nome_artista = c.autore_canzone WHERE c.slug_canzone = ?";
        return $this->fetchOne($sql, [$canzone]);
    }

    public function cerca($canzone) {
        $canzone = "%$canzone%";
        $sql = "SELECT titolo_canzone FROM canzone WHERE titolo_canzone LIKE ?";
        return $this->fetchAll($sql, [$canzone]);        
    }

}