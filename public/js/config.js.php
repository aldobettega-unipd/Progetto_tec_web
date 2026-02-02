<?php
header('Content-Type: application/javascript');
require_once __DIR__ . '/../../config.php';

echo "window.BASE_URL = '" . rtrim(BASE_URL, '/') . "';";
