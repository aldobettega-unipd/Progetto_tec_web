<?php

class Utente {
    private $db;

    public function __construct($db) {
        $this->db = $db;    
    }

    public function cerca_username($username_input) {
        $username = $this->db->real_escape_string($username_input);
        $query = "SELECT * FROM utente WHERE username = '$username'";
        $risultato_query = $this->db->query($query);
        return $risultato_query->fetch_assoc();
    }
}



?>