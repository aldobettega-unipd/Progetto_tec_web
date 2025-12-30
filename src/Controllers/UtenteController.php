<?php

class UtenteController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function visualizza_profilo() {
        if (!isset($_SESSION['username'])) {
            header('Location: index.php?action=login');
            exit;
        }
        $username = $_SESSION['username'];

        $template = new Template(__DIR__ . '/../Views/pages/userPage.html');
        $template->setDatiPagina([
            'username' => htmlspecialchars($username)
        ]);

        return $template->getPagina();
    }
}


?>