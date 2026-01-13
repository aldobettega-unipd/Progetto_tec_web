<?php 
namespace App\Core;

use App\Core\Database;

abstract class Model{

    protected $db;
    protected $table;

    public function __construct(){
        $this->db = Database::getInstance();
    }

    protected function query($sql, $params = []){
        $stmt = $this->db->prepare($sql);
        $stmt->execute($params);
        return $stmt;

    }


    protected function fetchOne($sql, $params = []) {
        return $this->query($sql, $params)->fetch();
    }


    protected function fetchAll($sql, $params = []) {
        return $this->query($sql, $params)->fetchAll();
    }



    public function get_all(){
        $sql = "SELECT * FROM " . $this->table;
        return $this->fetchAll($sql);
    }

}
