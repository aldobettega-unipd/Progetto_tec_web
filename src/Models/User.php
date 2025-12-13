<?php
class User {
    private $conn;
    private $id;
    public $email;

    public function verifyCredential($email, $password) {
        $sql = "SELECT id, email, password_hash FROM * WHERE email = ?";

        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ss", $username, $username);
        $stmt->execute();
        $result = $stmt->get_result();
    }
}

