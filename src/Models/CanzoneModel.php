<?php
namespace App\Models;
use App\Core\Model;

class CanzoneModel extends Model {

        protected $table= "canzone";


    public function get_dati_canzone($canzone) {
        $sql = "SELECT c.*, a.slug_artista FROM artista a INNER JOIN canzone c ON a.nome_artista = c.autore_canzone WHERE c.slug_canzone = ?";
        return $this->fetchOne($sql, [$canzone]);
    }

    public function cerca_titolo($canzone) {
        $canzone = "%$canzone%";
        $sql = "SELECT titolo_canzone FROM canzone WHERE titolo_canzone LIKE ?";
        return $this->fetchAll($sql, [$canzone]);        
    }

    public function cerca_canzoni($testo) {
        
        $sql = "SELECT id_canzone, titolo_canzone, autore_canzone, slug_canzone 
                FROM canzone 
                WHERE titolo_canzone LIKE ? 
                LIMIT 10"; // Limitiamo per performance
                
        $param = "%" . $testo . "%";
        return $this->fetchAll($sql, [$param]);
    }

    public function get_artista($canzone){
        $sql = "SELECT a.* FROM artista a JOIN canzone c ON a.nome_artista = c.autore_canzone WHERE slug_canzone LIKE ?";
        return $this->fetchOne($sql, [$canzone]);
    }

    public function get_all_songs(){
        $sql = "SELECT * FROM canzone ORDER BY titolo_canzone";
        return $this->fetchAll($sql);
    }

}