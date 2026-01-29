<?php

namespace App\Controllers\Api;

use App\Controllers\Base\ApiBaseController;
use App\Models\UserModel;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Core\Auth;

Class ApiAdminController extends ApiBaseController {

    public function delete_user() {
        if (!Auth::isLogged() || !Auth::isAdmin()) {
            $this->sendError("Accesso negato", 403);
            return;
        }

        $input = $this->getJsonInput();
        $username = $input['id'] ?? null;

        if (!$username) {
            $this->sendError("ID utente mancante", 400);
            return;
        }

        if ($username == $_SESSION['user']['username']) {
            $this->sendError("Non puoi eliminare il tuo stesso account amministratore", 400);
            return;
        }

        $userModel = new UserModel();

        if ($userModel->delete_user($username)) {
            $this->sendJson(['success' => true]);
        } else {
            $this->sendError("Errore durante l'eliminazione", 500);
        }
    }

    public function delete_canzone() {
        if (!Auth::isLogged() || !Auth::isAdmin()) {
            $this->sendError("Accesso negato", 403);
            return;
        }

        $input = $this->getJsonInput();
        $id_canzone = $input['id'] ?? null;

        if (!$id_canzone) {
            $this->sendError("ID canzone mancante", 400);
            return;
        }

        $canzoneModel = new CanzoneModel();

        if ($canzoneModel->delete_canzone($id_canzone)) {
            $this->sendJson(['success' => true]);
        } else {
            $this->sendError("Errore durante l'eliminazione", 500);
        }
    }


    public function delete_artista() {
        if (!Auth::isLogged() || !Auth::isAdmin()) {
            $this->sendError("Accesso negato", 403);
            return;
        }

        $input = $this->getJsonInput();
        $slug_artista = $input['id'] ?? null;

        if (!$slug_artista) {
            $this->sendError("Artista mancante", 400);
            return;
        }

        $artistaModel = new ArtistaModel();

        if ($artistaModel->delete_artista($slug_artista)) {
            $this->sendJson(['success' => true]);
        } else {
            $this->sendError("Errore durante l'eliminazione", 500);
        }
    }
}