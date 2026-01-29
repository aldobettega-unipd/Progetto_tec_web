<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Core\Template;
use App\Models\UserModel;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Helpers\ListHelper;
use App\Helpers\BreadcrumbHelper;


Class AdminController extends Controller {
    private $Admin;

    public function __construct(){
        $this->Admin = new UserModel();
        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
    }

    public function view_gestisci_account() {
        $utenti_base_list = $this->Admin->get_all_base_user();
        $lista_html = ListHelper::render($utenti_base_list, 'genericListItem', 'utente', [
            'NAME_ITEM' => 'username',
            'ID_ITEM' => 'username'
        ]);
        
        $this->render('user/gestioneAccount', [
            'LISTA_UTENTI' => $lista_html,
        ]);
    }

    public function view_gestisci_contenuti() {
        $canzoneModel = new CanzoneModel();
        $lista_canzoni = $canzoneModel->get_all_songs();
        $lista_html_canzoni = ListHelper::render($lista_canzoni, 'genericListItem', 'canzone', [
            'NAME_ITEM' => 'titolo_canzone',
            'ID_ITEM' => 'id_canzone'
        ]);

        $artistaModel = new ArtistaModel();
        $lista_artisti = $artistaModel->get_all_artisti();
        $lista_html_artisti = ListHelper::render($lista_artisti, 'genericListItem', 'artista', [
            'NAME_ITEM' => 'nome_artista',
            'ID_ITEM' => 'id_artista'
        ]);

        $this->render('user/gestioneContenuti', [
            'LISTA_CANZONI' => $lista_html_canzoni,
            'LISTA_ARTISTI' => $lista_html_artisti
        ]);
    }
}






?>