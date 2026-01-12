<?php
namespace App\Models;
use App\Core\Model;

class PlaylistModel extends Model {

    protected $table = "playlist";


    public function insert_playlist($nome_playlist, $nome_utente) {
        // TODO: aggiungere controlli di lunghezza input
        // TODO: creare playlistException
        try {
            $sql = "INSERT INTO playlist (nome, username) VALUES (?, ?)";
            $this->query($sql, [$nome_playlist, $nome_utente]);
        } catch (\PDOException $e) {
            error_log("Errore nell'inserimento della playlist: " . $e->getMessage());
            throw new Exception("Impossibile creare la playlist in questo momento");
        }
    }

    public function delete_playlist($id_playlist) {
        try {
            $sql = "DELETE FROM playlist WHERE id = ?";
            $this->query($sql, [$id_playlist]);
        } catch (\PDOException $e) {
            error_log("Errore nell'eliminazione della playlist: " . $e->getMessage());
            throw new Exception("Impossibile eliminare la playlist in questo momento");
        }
    }

    public function get_canzoni_playlist($id_playlist) {
        $sql = "SELECT p.nome AS nome_playlist, c.nome AS nome_canzone, c.id AS id_canzone FROM playlist p JOIN canzoni_playlist cp ON p.id = cp.playlist JOIN canzone c ON cp.canzone = c.id WHERE p.id = ?";
        return $this->fetchAll($sql, [$id_playlist]);
    }

    public function get_nome_playlist($id_playlist) {
        $sql = "SELECT nome AS nome_playlist FROM playlist WHERE id = ?";
        return $this->fetchOne($sql, [$id_playlist]);
    }

    public function insert_canzone_in_playlist($id_playlist, $id_canzone) {
        try {
            $sql = "INSERT INTO canzoni_playlist (playlist, canzone) VALUES (?, ?)";
            $this->query($sql, [$id_playlist, $id_canzone]);
        } catch (\PDOException $e) {
            error_log("Errore nell'inserimento della canzone: " . $e->getmessage());
            throw new Exception("Impossibile inserire la canzone in questo momento");
        }
    }

    public function delete_canzone_da_playlist($id_playlist, $id_canzone) {
        try {
            $sql = "DELETE FROM canzoni_playlist WHERE playlist = ? AND canzone = ?";
            $this->query($sql, [$id_playlist, $id_canzone]);
        } catch (\PDOException $e) {
            error_log("Errore nella rimozione della canzone: " . $e->getMessage());
            throw new Exception("Impossibile rimuovere la canzone dalla playlist in questo momento");
        }   
    }
}


?>