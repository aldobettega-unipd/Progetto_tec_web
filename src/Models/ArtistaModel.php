<?php
namespace App\Models;
use App\Core\Model;

class ArtistaModel extends Model {

    protected $table = 'artista';

    public function get_dati_artista($artista) {
        $sql = "SELECT * FROM artista WHERE slug_artista=?";
        return $this->fetchOne($sql, [$artista]);
    }

public function cerca_artisti($testo) {
    // Usiamo LOCATE per trovare la posizione della sottostringa
    // Ordiniamo prima per posizione (più piccola = più rilevante)
    // e poi alfabeticamente per i casi di parità
    $sql = "SELECT *, LOCATE(?, nome_artista) as posizione 
            FROM artista 
            WHERE nome_artista LIKE ? 
            ORDER BY posizione ASC, nome_artista ASC 
            LIMIT 10";
            
    $param = "%" . $testo . "%";
    
    // Passiamo $testo per LOCATE e $param per il LIKE
    return $this->fetchAll($sql, [$testo, $param]);
}

    public function find_artista_by_name($nome_artista) {
        $sql = "SELECT * FROM artista WHERE nome_artista = ?";
        return $this->fetchOne($sql, [$nome_artista]);
    }

    public function get_canzoni($artista){ /*qua si puo cambiare con l'id_artista*/
        $sql = "SELECT c.* FROM canzone c JOIN artista a ON a.nome_artista = c.autore_canzone WHERE slug_artista LIKE ? ORDER BY c.titolo_canzone";
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

    public function update_artista($old_slug, $dati_aggiornati) {
        try {
            $sql = "UPDATE artista SET 
                    nome_artista = ?,
                    descrizione_artista = ?,
                    slug_artista = ?,
                    lingua_artista = ?
                    WHERE slug_artista = ?";

            $params = [
                $dati_aggiornati['nome_artista'],
                $dati_aggiornati['descrizione_artista'],
                $dati_aggiornati['slug_artista'],
                $dati_aggiornati['lingua_artista'],
                $old_slug
            ];

            $this->query($sql, $params);
            return true;
        } catch (\PDOException $e) {
            error_log("Errore aggiornamento artista: " . $e->getMessage());
            return false;
        }
    }
}