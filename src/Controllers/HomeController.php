<?php

class HomeController {
    
    public function index() {
        // Dati da passare alla view (in futuro dal database)
        $title = 'EasyGuitar - Home';
        $proposte = []; // Qui metterai le canzoni proposte
        
        // Carica la view
        require_once __DIR__ . '/../Views/pages/home.php';
    }
}