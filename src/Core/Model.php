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
        try{
        $stmt = $this->db->prepare($sql);
        $stmt->execute($params);
        return $stmt;
        } catch(\PDOException $e){
            die("Error in query: " . $e->getMessage());
        }
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
