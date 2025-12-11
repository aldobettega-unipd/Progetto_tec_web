<?php
// config.php

// Le variabili sono già disponibili perché Docker Compose le passa come environment
define('DB_HOST', getenv('DB_HOST') ?: 'db');
define('DB_USER', getenv('DB_USER') ?: 'user');
define('DB_PASSWORD', getenv('DB_PASSWORD') ?: 'password');
define('DB_NAME', getenv('DB_NAME') ?: 'miosito');

// Connessione al database
try {
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    
    if ($conn->connect_error) {
        throw new Exception("Connessione fallita: " . $conn->connect_error);
    }
    
    $conn->set_charset("utf8mb4");
    
} catch (Exception $e) {
    die("Errore database: " . $e->getMessage());
}