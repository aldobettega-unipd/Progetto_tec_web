<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;

class CanzoneController extends Controller {

    public function view_canzone_page($nome_canzone) {
        $canzone = new CanzoneModel();
        $dati_canzone = $canzone->get_dati_canzone($nome_canzone);

        $this->render('canzone', $dati_canzone);
    }
}