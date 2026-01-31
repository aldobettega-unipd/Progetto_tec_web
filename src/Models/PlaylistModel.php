<?php
namespace App\Models;
use App\Core\Model;

class PlaylistModel extends Model {

    protected $table = "playlist";

     public function get_dati_playlist($id_playlist) {
        $sql = "SELECT * FROM playlist WHERE id_playlist = ?";
        return $this->fetchOne($sql, [$id_playlist]);
    }

    public function get_user_playlist($username){
        $sql = "SELECT * FROM playlist WHERE username = ?";
        return $this->fetchAll($sql, [$username]);
    }

    public function get_preferiti_id($username) {
        $sql = "SELECT id_playlist FROM playlist WHERE username = ? AND nome_playlist = 'Preferiti'";
        return $this->fetchOne($sql, [$username])['id_playlist'];
    }


    public function insert_playlist($nome_playlist, $username) {
            $sql = "INSERT INTO playlist (nome_playlist, username) VALUES (?, ?)";
            return $this->query($sql, [$nome_playlist, $username]);
    }

    public function get_canzoni_playlist($id_playlist) {
        $sql = "SELECT p.nome_playlist, c.* FROM playlist p JOIN canzoni_playlist cp ON p.id_playlist = cp.playlist JOIN canzone c ON cp.canzone = c.id_canzone WHERE p.id_playlist = ?";
        return $this->fetchAll($sql, [$id_playlist]) ?? [];
    }


    public function delete_playlist($id_playlist) {

        $sql = "DELETE FROM playlist WHERE id_playlist = ?";
        return $this->query($sql, [$id_playlist]);

    }

    public function add_song_to_playlist($playlistId, $songId) {
        // Usa INSERT IGNORE se vuoi evitare errori su duplicati, 
        // oppure gestisci l'eccezione nel controller
        $sql = "INSERT INTO canzoni_playlist (playlist, canzone) VALUES (?, ?)";
        try {
            $this->query($sql, [$playlistId, $songId]);
            return true;
        } catch (\PDOException $e) {
            // Errore 23000 = Duplicate entry (già presente)
            error_log("ERRORE AGGIUNTA CANZONE: " . $e->getMessage());
            return false;
        }
    }

    public function delete_song_from_playlist($playlistId, $songId) {
    $sql = "DELETE FROM canzoni_playlist WHERE playlist = ? AND canzone = ?";
    try {
        $this->query($sql, [$playlistId, $songId]);
        return true;
    } catch (\PDOException $e) {
        error_log("ERRORE DELETE SONG: " . $e->getMessage());
        return false;
    }
}

    public function is_playlist_owner($playlistId, $username) {
        $sql = "SELECT 1 FROM playlist WHERE id_playlist = ? AND username = ?";
        return (bool) $this->fetchOne($sql, [$playlistId, $username]);
    }

    public function isInPlaylist($id_playlist, $id_canzone) {
        $sql = "SELECT 1 FROM canzoni_playlist WHERE playlist = ? AND canzone = ?";
        return (bool) $this->fetchOne($sql, [$id_playlist, $id_canzone]);
    }

}


?>