<?php
namespace App\Models;
use App\Core\Model;

class ArtistaModel extends Model {

    protected $table = 'artista';

    public function get_dati_artista($artista) {
        $sql = "SELECT nome_artista, descrizione_artista, slug_artista FROM artista WHERE slug_artista=?";
        return $this->fetchOne($sql, [$artista]);
    }

    public function cerca($artista) {
        $artista = "%$artista%";
        $sql = "SELECT nome_artista FROM artista WHERE nome_artista LIKE ?";
        return $this->fetchAll($sql, [$artista]);
    }
    public function get_canzoni($artista){
        $sql = "SELECT c.* FROM canzone c JOIN artista a ON a.nome_artista = c.autore_canzone WHERE slug_artista LIKE ?";
        return $this->fetchAll($sql, [$artista]);
    }
}