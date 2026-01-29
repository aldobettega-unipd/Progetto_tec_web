<?php
namespace App\Models;
use App\Core\Model;

class ArtistaModel extends Model {

    protected $table = 'artista';

    public function get_dati_artista($artista) {
        $sql = "SELECT nome_artista, descrizione_artista, slug_artista FROM artista WHERE slug_artista=?";
        return $this->fetchOne($sql, [$artista]);
    }

    public function cerca_artisti($testo) {
        $sql = "SELECT * FROM artista WHERE nome_artista LIKE ? LIMIT 10";
        $param = "%" . $testo . "%";
        return $this->fetchAll($sql, [$param]);
    }
    public function get_canzoni($artista){
        $sql = "SELECT c.* FROM canzone c JOIN artista a ON a.nome_artista = c.autore_canzone WHERE slug_artista LIKE ?";
        return $this->fetchAll($sql, [$artista]);
    }

    public function get_all_artisti(){
        $sql = "SELECT * FROM artista ORDER BY nome_artista";
        return $this->fetchAll($sql);
    }

    public function delete_artista($slug_artista) {
        try {
            $sql = "DELETE FROM artista WHERE slug_artista = ?";
            $this->query($sql, [$slug_artista]);
            return true;
        } catch (\PDOException $e) {
            error_log("Errore eliminazione canzone: " . $e->getMessage());
            return false;
        }
    }
}