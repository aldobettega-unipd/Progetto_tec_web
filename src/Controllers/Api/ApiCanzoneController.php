<?php
namespace App\Controllers\Api;

use App\Controllers\Base\ApiBaseController;
use App\Models\CanzoneModel;
use App\Models\PlaylistModel;

class ApiCanzoneController extends ApiBaseController {

    public function search() {

        $query = $_GET['q'] ?? '';
        $playlistId = $_GET['playlist_id'] ?? null;

        if (strlen($query) < 2) {
            // Se la query è troppo corta, restituisci array vuoto
            $this->sendJson([]); 
        }

        $canzoneModel = new CanzoneModel();
        $risultati = $canzoneModel->cerca_canzoni($query);

        if ($playlistId) {
            $playlistModel = new PlaylistModel();
            
            // Passiamo i risultati per riferimento (&$canzone) per modificarli
            foreach ($risultati as &$canzone) {
                $isPresent = $playlistModel->isInPlaylist($playlistId, $canzone['id_canzone']);
                $canzone['gia_presente'] = $isPresent; 
            }
        }

        $this->sendJson($risultati);
    }
}