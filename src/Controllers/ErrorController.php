<?php
namespace App\Controllers;
use App\Core\Controller;

Class ErrorController extends Controller {

    public function index($code, $view){
        http_response_code($code);
        $this->render('errors/' . $view );
    }
}