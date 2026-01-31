<?php
namespace App\Controllers\Api;

use App\Controllers\Base\ApiBaseController;
use App\Models\PlaylistModel;
use App\Models\User;
use App\Core\Auth; 
use App\Models\UserModel;// Assumendo tu abbia la classe Auth

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

        $Playlist = new PlaylistModel();

        $User = new UserModel();
        $id_username = $User->get_current_user()['id_utente'];

        // 3. Verifica sicurezza: La playlist appartiene all'utente loggato?
        // (Opzionale ma consigliato: devi implementare is_owner nel model)
        if (!$Playlist->is_playlist_owner($playlistId, $id_username)) {
             $this->sendError("Non puoi modificare questa playlist", 403);
        }

        // 4. Prova ad aggiungere
        try {
            $success = $Playlist->add_song_to_playlist($playlistId, $songId);
            if ($success) {
                $this->sendJson(['success' => true, 'message' => 'Canzone aggiunta!']);
            } else {
                $this->sendError("Impossibile aggiungere (forse è già presente?)", 409);
            }
        } catch (\Exception $e) {
            $this->sendError("Errore server: " . $e->getMessage(), 500);
        }
    }

    public function delete() {
        if (!Auth::isLogged()) {
            $this->sendError("Devi essere loggato", 401);
            return;
        }

        $input = $this->getJsonInput();
        $id_playlist = $input['id_playlist'] ?? null;
       
        $User = new UserModel();
        $id_username = $User->get_current_user()['id_utente'];

        if (!$id_playlist) {
            $this->sendError("ID Playlist mancante", 400);
            return;
        }

        $Playlist  = new PlaylistModel();

        // 1. Sicurezza: Controlla che la playlist appartenga all'utente
        if (!$Playlist ->is_playlist_owner($id_playlist, $id_username)) {
            $this->sendError("Non hai i permessi per eliminare questa playlist", 403);
            return;
        }

        // 2. Protezione: Non eliminare la playlist "Preferiti" di default
        // (Opzionale, ma consigliato se gestisci i preferiti come playlist)
        $dati = $Playlist ->get_dati_playlist($id_playlist);
        if ($dati && $dati['nome_playlist'] === 'Preferiti') {
             $this->sendError("Non puoi eliminare la playlist Preferiti", 403);
             return;
        }

        // 3. Eliminazione
        if ($Playlist ->delete_playlist($id_playlist)) {
            $this->sendJson(['success' => true]);
        } else {
            $this->sendError("Errore del server durante l'eliminazione", 500);
        }
    }
}