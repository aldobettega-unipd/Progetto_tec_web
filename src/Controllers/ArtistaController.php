<?php

require_once __DIR__ . '/../../config.php';
require_once __DIR__ . '/../Models/Artista.php';

class ArtistaController {

    public function index() {

        $artistaHTML = file_get_contents(
            __DIR__ . '/../Views/pages/artistaPage.html'
        );

        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }

        $model = new Artista();
        $artista = $model->getById(1);

        $output = str_replace(
            '[Nome]',
            htmlspecialchars($artista['nome']),
            $artistaHTML
        );

        echo $output;
    }
}
