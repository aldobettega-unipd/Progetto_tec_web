<?php

namespace App\Controllers\Api;

use App\Controllers\Base\ApiBaseController;
use App\Models\UserModel;
use App\Core\Auth;

Class ApiUserController extends ApiBaseController {

    public function update_photo() {
        if (!Auth::isLogged()) {
            $this->sendError("Accesso negato", 403);
            return;
        }
        $input = $this->getJsonInput();
        $id_foto = $input['id_foto'] ?? null;

        if (!$id_foto || !in_array($id_foto, range(1, 10))) {
            $this->sendError("Foto non valida. Scegli tra quelle disponibili.", 400);
            return;
        }

        $User = new UserModel();
        $id_user = $User->get_current_user()['username'];
        if ($User->update_foto($id_foto, $id_user)) {
            $_SESSION['user']['foto_profilo'] = $id_foto;
            $this->sendJson(['success' => true]);
        } else {
            $this->sendError("Errore durante l'aggiornamento", 500);
        }
    }
}