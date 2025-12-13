<?php

class HomeController {
    
    public function index() {
        
        $title = 'EasyGuitar - Home';
        $proposte = [];
        
        
        require_once __DIR__ . '/../Views/pages/home.php';
    }
}