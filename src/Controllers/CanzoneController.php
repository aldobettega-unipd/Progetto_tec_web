<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Models\CanzoneModel;

class CanzoneController extends Controller {
    private $Canzone;

    public function __construct(){
        $this->Canzone = new CanzoneModel();
    }

    public function view_canzone($slug_canzone) {
        
        $dati_canzone = $this->Canzone->get_dati_canzone($slug_canzone);
        
        $this->render('canzonePage', $dati_canzone);
    }
}