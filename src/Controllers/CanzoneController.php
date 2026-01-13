<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;

class CanzoneController extends Controller {

    public function view_canzone($slug_canzone) {
        $canzone = new CanzoneModel();
        $dati_canzone = $canzone->get_dati_canzone($slug_canzone);
        
        $this->render('canzonePage', $dati_canzone);
    }
}