<?php
namespace App\Controllers\Api;

use App\Controllers\Base\ApiBaseController;
use App\Models\PlaylistModel;
use App\Core\Auth; // Assumendo tu abbia la classe Auth

class ApiPlaylistController extends ApiBaseController {

    public function add_song() {
        // 1. Sicurezza: Solo chi è loggato può aggiungere
        if (!Auth::isLogged()) {
            $this->sendError("Non autorizzato", 401);
        }

        // 2. Leggi i dati inviati (Body JSON)
        $input = $this->getJsonInput();
        $playlistId = $input['playlist_id'] ?? null;
        $songId = $input['song_id'] ?? null;

        if (!$playlistId || !$songId) {
            $this->sendError("Dati mancanti (playlist_id o song_id)", 400);
        }

        $model = new PlaylistModel();

        // 3. Verifica sicurezza: La playlist appartiene all'utente loggato?
        // (Opzionale ma consigliato: devi implementare is_owner nel model)
        if (!$model->is_playlist_owner($playlistId, Auth::user()['username'])) {
             $this->sendError("Non puoi modificare questa playlist", 403);
        }

        // 4. Prova ad aggiungere
        try {
            $success = $model->add_song_to_playlist($playlistId, $songId);
            if ($success) {
                $this->sendJson(['success' => true, 'message' => 'Canzone aggiunta!']);
            } else {
                $this->sendError("Impossibile aggiungere (forse è già presente?)", 409);
            }
        } catch (\Exception $e) {
            $this->sendError("Errore server: " . $e->getMessage(), 500);
        }
    }
}