<?php

namespace App\Controllers\Api;

use App\Controllers\Base\ApiBaseController;
use App\Models\UserModel;
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
}