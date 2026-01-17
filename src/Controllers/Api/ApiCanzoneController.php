<?php
namespace App\Controllers\Api;

use App\Controllers\Base\ApiBaseController;
use App\Models\CanzoneModel;

class ApiCanzoneController extends ApiBaseController {

    public function search() {
        // 1. Leggi il parametro dalla query string (es. ?q=albachiara)
        // Usiamo $_GET perché è una ricerca
        $query = $_GET['q'] ?? '';

        if (strlen($query) < 2) {
            // Se la query è troppo corta, restituisci array vuoto o errore
            $this->sendJson([]); 
        }

        // 2. Chiama il Model
        $model = new CanzoneModel();
        $risultati = $model->cerca_canzoni($query);

        // 3. Rispondi in JSON
        $this->sendJson($risultati);
    }
}