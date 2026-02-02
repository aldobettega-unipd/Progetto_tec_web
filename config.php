<?php
// config.php

// Le variabili sono già disponibili perché Docker Compose le passa come environment
define('DB_HOST', getenv('DB_HOST') ?: 'localhost');
define('DB_USER', getenv('DB_USER') ?: 'msanguin');
define('DB_PASSWORD', getenv('DB_PASSWORD') ?: 'thooYeefu6aiveih');
define('DB_NAME', getenv('DB_NAME') ?: 'msanguin');
define('DB_CHAR', 'utf8mb4');
define('BASE_URL','');