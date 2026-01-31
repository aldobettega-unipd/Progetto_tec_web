<?php
namespace App\Models;
use App\Core\Model;
use App\Core\Auth;

class UserModel extends Model {
    protected $table = 'utente';



    public function find_user($username) {
        $sql = "SELECT * FROM utente WHERE username = ?";
        return $this->fetchOne($sql, [$username]);
    }

    public function get_current_user() {
        $username = Auth::getUser()['username'];
        return $this->find_user($username);
    }

    public function get_all_base_user() {
        $sql = "SELECT * FROM utente WHERE is_admin = 0 ORDER BY username";
        return $this->fetchAll($sql);
    }

    public function insert_user($username, $password, $admin = 0) {
        $hash = password_hash($password, PASSWORD_DEFAULT);
        try {
            $sql = "INSERT INTO utente (username, hash_password, is_admin) VALUES (?, ?, ?)";
            $this->query($sql, [$username, $hash, $admin]);
            $lastId = $this->db->lastInsertId();
            if(!$admin){
                $sql2 = "INSERT INTO playlist (nome_playlist, id_username) VALUES (?, ?)";
                $this->query($sql2, ["Preferiti", $lastId]);
            }
            return true;
        } catch (\PDOException $e) {
            if ($e->getCode() == 23000 ) {
            return false;
            }
            throw $e;
        }
    }

    public function delete_user($username) {
        try {
            $sql = "DELETE FROM utente WHERE username = ?";
            $this->query($sql, [$username]);
            return true;
        } catch (\PDOException $e) {
            error_log("Errore eliminazione utente: " . $e->getMessage());
            return false;
        }
    }

    public function update_foto($id_foto, $username) {
        try {
            $sql = "UPDATE utente SET foto_profilo = ? WHERE username = ?";
            $this->query($sql, [$id_foto, $username]);
            return true;
        } catch (\PDOException $e) {
            error_log("Errore nella modifica della foto profilo: " . $e->getMessage());
            return false;
        }
    }
}