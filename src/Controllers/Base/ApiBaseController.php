<?php
namespace App\Controllers\Base;

use App\Core\Controller;

class ApiBaseController extends Controller {

    public function __construct() {
        header('Content-Type: application/json; charset=utf-8');
    }

    protected function sendJson($data) {
        echo json_encode($data);
        exit; 
    }

    protected function sendError($message, $code = 400) {
        http_response_code($code);
        echo json_encode(['error' => $message, 'status' => $code]);
        exit;
    }

    /**
     * Helper per leggere il body JSON inviato da JS (POST/PUT)
     * JS spesso manda dati come "raw body", non come $_POST classico form-data
     */
    protected function getJsonInput() {
        $input = json_decode(file_get_contents('php://input'), true);
        return $input ?? [];
    }
}