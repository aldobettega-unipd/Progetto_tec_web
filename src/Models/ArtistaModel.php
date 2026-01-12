<?php
namespace App\Models;
use App\Core\Model;

class ArtistaModel extends Model {

    protected $table = 'artista';

    public function get_dati_artista($artista) {
        $sql = "SELECT nome AS nome_artista, descrizione AS descrizione_artista, slug AS slug_artista FROM artista WHERE nome=?";
        return $this->fetchOne($sql, [$artista]);
    }

    public function cerca($artista) {
        $artista = "%$artista%";
        $sql = "SELECT nome AS nome_artista FROM artista WHERE nome LIKE ?";
        return $this->fetchAll($sql, [$artista]);
    }
}