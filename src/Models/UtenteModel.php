<?php
namespace App\Models;
use App\Core\Model;

class Utente extends Model {
    private $db;
    private $table;

    public function __construct($db) {
        $this->db = $db; 
        $this->table = "utente";
    }

    public function find_user($username) {
        $sql = "SELECT * FROM utente WHERE username = ?";
        return $this->query($sql, [$username])->fetch();
    }

    public function insert_user($username, $password) {
        $hash = password_hash($password, PASSWORD_DEFAULT);
        try {
            $sql = "INSERT INTO utente (username, hash_password, is_admin) VALUES (?, ?, 0)";
            $this->query($sql, [$username, $hash]);
            return true;
        } catch (\PDOException $e) {
            if ($e->getCode() == 23000 ) {
            return false;
            }
            throw $e;
        }
    }
}



?>