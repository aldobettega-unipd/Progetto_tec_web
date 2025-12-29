<?php

class Utente {
    private $db;

    public function __construct($db) {
        $this->db = $db;    
    }

    public function cerca_username($username) {
        $prepared_stmt = $this->db->prepare("SELECT * FROM utente WHERE username = ?");
        $prepared_stmt->bind_param("s", $username);
        $prepared_stmt->execute();

        $risultato_query = $prepared_stmt->get_result();
        $dati_utente = $risultato_query->fetch_assoc(); 

        $risultato_query->free();
        $prepared_stmt->close();

        return $dati_utente;
    }

    public function crea_utente($username, $password) {
        if (empty($this->cerca_username($username))) {
            $prepared_stmt = $this->db->prepare("INSERT INTO utente (username, hash_password) VALUES (?, ?)");
            $prepared_stmt->bind_param("ss", $username, $password);
            $prepared_stmt->execute();
            $prepared_stmt->close();
            return true;
        } else {
            return false;
        }
    }
}



?>