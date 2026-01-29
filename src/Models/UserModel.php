<?php
namespace App\Models;
use App\Core\Model;

class UserModel extends Model {
    protected $table = 'utente';


    public function find_user($username) {
        $sql = "SELECT * FROM utente WHERE username = ?";
        return $this->fetchOne($sql, [$username]);
    }

    public function insert_user($username, $password, $admin = 0) {
        $hash = password_hash($password, PASSWORD_DEFAULT);
        try {
            $sql = "INSERT INTO utente (username, hash_password, is_admin) VALUES (?, ?, ?)";
            $this->query($sql, [$username, $hash, $admin]);
            return true;
        } catch (\PDOException $e) {
            if ($e->getCode() == 23000 ) {
            return false;
            }
            throw $e;
        }
    }

    public function get_all_base_user() {
        $sql = "SELECT * FROM utente WHERE is_admin = 0 ORDER BY username";
        return $this->fetchAll($sql);
    }
}



?>