<?php

namespace App\Controllers;

use App\Core\Controller;
use App\Core\Auth;
use App\Core\Template;
use App\Models\UserModel;
use App\Models\CanzoneModel;
use App\Models\ArtistaModel;
use App\Helpers\ListHelper;
use App\Helpers\BreadcrumbHelper;


class AdminController extends Controller
{
    private $Admin;

    public function __construct()
    {
        $this->Admin = new UserModel();
        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
    }

    public function view_profile_admin()
    {

        $admin = $this->Admin->get_current_user();
        if (!$admin) {
            $this->abort(404, "Utente non trovato.");
        }

        BreadcrumbHelper::add('Profilo');
        $data = $admin;

        $data['FOTO_PROFILO'] = $admin['foto_profilo'] ?? '1';

        $this->page_title = "Profilo Admin: {$admin['username']}";
        $this->page_description = "Profilo amministrativo di {$admin['username']} - visualizza e gestisci le impostazioni dell'account amministratore.";
        $this->scriptPathList[] = 'admin';
        $this->render('admin/admin', $data);
    }

    public function view_gestisci_account()
    {
        BreadcrumbHelper::add('gestione-account');
        $utenti_base_list = $this->Admin->get_all_base_user();
        
        // Colleghiamo al template userRow
        $lista_html = ListHelper::render($utenti_base_list, 'admin/userRow'); 

        $this->page_title = "Gestisci Utenti";
        $this->page_description = "Gestisci gli utenti registrati nel sistema.";
        $this->scriptPathList[] = 'admin'; // Carica admin.js

        $this->render('admin/users', [
            'LISTA_UTENTI' => $lista_html,
        ]);
    }

    public function view_gestisci_contenuti()
    {
        BreadcrumbHelper::add('gestione-contenuti');
        $canzoneModel = new CanzoneModel();
        $lista_canzoni = $canzoneModel->get_all_songs();
        $lista_html_canzoni = ListHelper::render($lista_canzoni, 'admin/canzoneRow');

        $artistaModel = new ArtistaModel();
        $lista_artisti = $artistaModel->get_all_artisti();
        $lista_html_artisti = ListHelper::render($lista_artisti, 'admin/artistaRow');

        $this->page_title = "Gestisci Contenuti";
        $this->page_description = "Gestisci canzoni e artisti.";
        $this->scriptPathList[] = 'admin';

        $this->render('admin/content', [
            'LISTA_CANZONI' => $lista_html_canzoni,
            'LISTA_ARTISTI' => $lista_html_artisti
        ]);
    }

    
    public function view_add_item($type)
    {

        $views = [
            'canzoni' => 'admin/formCanzone',
            'artisti' => 'admin/formArtista'
        ];

        if (!array_key_exists($type, $views)) {
            $this->abort(404, "Il tipo di contenuto '$type' non è gestito.");
        }

        $this->page_title = "Aggiungi Contenuto";
        $this->page_description = "Aggiungi una nuova canzone o artista al database.";
        $this->scriptPathList[] = 'admin';

        $this->render($views[$type], [
            'ERROR_MSG' => '',
            'USERNAME' => $_SESSION['user']['username']
        ]);
    }

    public function save_canzone()
    {

        $titolo = $_POST['titolo'] ?? '';
        $slug_canzone = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $titolo)));

        $dati_canzone = [
            'titolo_canzone' => $titolo,
            'autore_canzone' => $_POST['autore'] ?? '',
            'lingua_canzone' => $_POST['lingua'] ?? '',
            'testo_canzone' => $_POST['testo'] ?? '',
            'slug_canzone' => $slug_canzone
        ];

        $artistaModel = new ArtistaModel();
        $artistaEsistente = $artistaModel->find_artista_by_name($dati_canzone['autore_canzone']);

        if (!$artistaEsistente) {
            return $this->render('admin/formCanzone', [
                'ERROR_MSG' => "Errore: L'artista '{$dati_canzone['autore_canzone']}' non esiste nel database.",
                'USERNAME' => $_SESSION['user']['username']
            ]);
        }

        $canzoneModel = new CanzoneModel();

        if ($canzoneModel->insert($dati_canzone)) {
            $this->redirect('/admin/gestione-contenuti');
        } else {
            return $this->render('admin/formCanzone', [
                'ERROR_MSG' => "Errore Database: Impossibile inserire la canzone.",
                'USERNAME' => $_SESSION['user']['username']
            ]);
        }
    }


    public function save_artista()
    {
        $nome = $_POST['nome'] ?? '';

        $slug_generato = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $nome)));
        $slug_generato = substr($slug_generato, 0, 30);

        $dati_artista = [
            'nome_artista' => $nome,
            'descrizione_artista' => $_POST['descrizione'] ?? '',
            'slug_artista' => $slug_generato
        ];

        $artistaModel = new ArtistaModel();

        if ($artistaModel->find_artista_by_name($dati_artista['nome_artista'])) {
            return $this->render('admin/formArtista', [
                'ERROR_MSG' => "Errore: L'artista '{$dati_artista['nome_artista']}' esiste già.",
                'USERNAME' => $_SESSION['user']['username']
            ]);
        }

        if ($artistaModel->insert($dati_artista)) {
            $this->redirect('/admin/gestione-contenuti');
        } else {
            return $this->render('admin/formArtista', [
                'ERROR_MSG' => "Errore Database: Impossibile creare l'artista.",
                'USERNAME' => $_SESSION['user']['username']
            ]);
        }
    }


}