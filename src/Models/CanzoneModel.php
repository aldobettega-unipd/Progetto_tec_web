<?php
namespace App\Models;
use App\Core\Model;

class CanzoneModel extends Model {

        protected $table= "canzone";


    public function get_dati_canzone($canzone) {
        $sql = "SELECT c.*, a.slug_artista FROM artista a INNER JOIN canzone c ON a.nome_artista = c.autore_canzone WHERE c.slug_canzone = ?";
        return $this->fetchOne($sql, [$canzone]);
    }

    public function get_canzone_by_id($id) {
        $sql = "SELECT * FROM canzone WHERE id_canzone=?";
        return $this->fetchOne($sql, [$id]);
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

    public function cerca_canzoni_avanzata($testo, $lingua_selezionata, $accordi_selezionati) {
        // query avanzata che cerca canzoni che hanno la lingua selezionata e i cui accordi sono un
        // sottoinsieme degli accordi selezionati
        $params = [];

        $sql = "SELECT * FROM canzone WHERE titolo_canzone LIKE ?";
        $params[] = "%" . $testo . "%";

        if (!empty($lingua_selezionata)) {
            $sql .= " AND lingua_canzone = ?";
            $params[] = $lingua_selezionata;
        }

        if (!empty($accordi_selezionati) && is_array($accordi_selezionati)) {
            $placeholders = implode(',', array_fill(0, count($accordi_selezionati), '?'));
            $sql .= " AND id_canzone NOT IN 
                        (SELECT id_canzone FROM accordi_canzone WHERE accordo NOT IN ($placeholders))";
            
            foreach ($accordi_selezionati as $accordo) {
                $params[] = $accordo;
            }
        }        
        return $this->fetchAll($sql, $params);
    }



    public function get_artista($canzone){
        $sql = "SELECT a.* FROM artista a JOIN canzone c ON a.nome_artista = c.autore_canzone WHERE slug_canzone LIKE ?";
        return $this->fetchOne($sql, [$canzone]);
    }

    public function get_all_songs(){
        $sql = "SELECT * FROM canzone ORDER BY titolo_canzone";
        return $this->fetchAll($sql);
    }

    public function delete_canzone($id_canzone) {
        try {
            $sql = "DELETE FROM canzone WHERE id_canzone = ?";
            $this->query($sql, [$id_canzone]);
            return true;
        } catch (\PDOException $e) {
            error_log("Errore eliminazione canzone: " . $e->getMessage());
            return false;
        }
    }
    public function get_accordi($canzone){
        $sql = "SELECT accordo FROM accordi_canzone WHERE id_canzone = ?";
        return $this->fetchAll($sql, [$canzone]);

    }

    public function get_lingue_canzoni() {
        $sql = "SELECT DISTINCT lingua_canzone FROM canzone ORDER BY lingua_canzone";
        return $this->fetchAll($sql);
    }

    public function get_accordi_canzoni() {
        $sql = "SELECT DISTINCT accordo FROM accordi_canzone ORDER BY accordo";
        return $this->fetchAll($sql);
    }

    public function get_playlist($username, $id_canzone) {
        $sql = "SELECT * FROM playlist p JOIN canzoni_playlist cp ON p.id_playlist = cp.playlist WHERE p.id_username = ? AND cp.canzone = ? ORDER BY nome_playlist";
        return $this->fetchAll($sql, [$username, $id_canzone]);
    }

    public function update_canzone($id, $dati_aggiornati) {
        try {
            $sql = "UPDATE canzone SET 
                    titolo_canzone = ?,
                    autore_canzone = ?,
                    lingua_canzone = ?,
                    testo_canzone = ?,
                    slug_canzone = ?
                WHERE id_canzone = ?
                ";

            $params = [
                $dati_aggiornati['titolo_canzone'],
                $dati_aggiornati['autore_canzone'],
                $dati_aggiornati['lingua_canzone'],
                $dati_aggiornati['testo_canzone'],
                $dati_aggiornati['slug_canzone'],
                $id
            ];

            $this->query($sql, $params);
        } catch(\PDOException $e) {
            error_log("Errore aggiornamento canzone: " . $e->getMessage());
            return false;
        }
        
    }
}