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
        BreadcrumbHelper::add('Home', BASE_URL . '/');
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
        BreadcrumbHelper::add('Profilo', '/admin');
        BreadcrumbHelper::add('Gestione Utenti');
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
        BreadcrumbHelper::add('Profilo', '/admin');
        BreadcrumbHelper::add('Gestione Contenuti');
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

        
        $optionsLingua = $this->generateLanguageOptions(); 

        $placeholders = [
            'ERROR_MSG' => '',
            'VISIBILITY_ERROR' => 'hidden',
            'FORM_ACTION' => BASE_URL . "/admin/{$type}/save",
            'TITOLO_PAGINA' => ($type === 'canzoni') ? 'Aggiungi Canzone' : 'Aggiungi Artista',
            'ID_VAL' => '', 
            
            'OPTIONS_LINGUA' => $optionsLingua, 
            
            'NOME_VAL' => '', 
            'DESCRIZIONE_VAL' => '',
            'TITOLO_VAL' => '',
            'AUTORE_VAL' => '',
            'LINGUA_VAL' => '',
            'TESTO_VAL' => '',
            'USERNAME' => $_SESSION['user']['username']
        ];

        $this->page_title = "Aggiungi Contenuto";
        $this->scriptPathList[] = 'admin';

        $this->render($views[$type], $placeholders);
    }

    public function view_edit_artista($slug)
    {
        $artistaModel = new ArtistaModel();
        $artista = $artistaModel->get_dati_artista($slug);

        if (!$artista) {
            $this->abort(404, "Artista non trovato");
        }

        $this->page_title = "Modifica Artista";
        $this->scriptPathList[] = 'admin';

        $optionsLingua = $this->generateLanguageOptions($artista['lingua_artista'] ?? '');

        $this->render('admin/formArtista', [
            'TITOLO_PAGINA' => 'Modifica Artista',
            'FORM_ACTION' => BASE_URL . '/admin/artisti/update',
            'ERROR_MSG' => '',
            'VISIBILITY_ERROR' => 'hidden',
            
            'ID_VAL' => $artista['slug_artista'],
            'NOME_VAL' => $artista['nome_artista'],
            'DESCRIZIONE_VAL' => $artista['descrizione_artista'],
            'OPTIONS_LINGUA' => $optionsLingua,
            
            'USERNAME' => $_SESSION['user']['username']
        ]);
    }

    public function update_artista()
    {
        $old_slug = $_POST['id'] ?? '';
        $nome = $_POST['nome'] ?? '';
        $descrizione = $_POST['descrizione'] ?? '';

       // Rigenera slug perchè il nome potrebbe essere cambiato.
        $new_slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $nome)));

        $dati_aggiornati = [
            'nome_artista' => $nome,
            'descrizione_artista' => $descrizione,
            'slug_artista' => $new_slug,
            'lingua_artista' => $_POST['lingua'] ?? ''
        ];

        $artistaModel = new ArtistaModel();
        
        if ($artistaModel->update_artista($old_slug, $dati_aggiornati)) {
            $this->redirect(BASE_URL . '/admin/gestione-contenuti');
        } else {
            // Errore -> viene ricaricato il form così l'admin non perde i dati
            $optionsLingua = $this->generateLanguageOptions($_POST['lingua'] ?? '');
                $this->render('admin/formArtista', [
                'TITOLO_PAGINA' => 'Modifica Artista',
                'FORM_ACTION' => BASE_URL . '/admin/artisti/update',
                'ERROR_MSG' => 'Errore durante l\'aggiornamento (Nome duplicato?)',
                'VISIBILITY_ERROR' => '',
                'ID_VAL' => $old_slug,
                'NOME_VAL' => $nome,
                'OPTIONS_LINGUA' => $optionsLingua,
                'DESCRIZIONE_VAL' => $descrizione,
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
            'slug_artista' => $slug_generato,
            'lingua_artista' => $_POST['lingua'] ?? ''
        ];

        $artistaModel = new ArtistaModel();

        if ($artistaModel->find_artista_by_name($dati_artista['nome_artista'])) {
            return $this->render('admin/formArtista', [
                'ERROR_MSG' => "Errore: L'artista '{$dati_artista['nome_artista']}' esiste già.",
                'USERNAME' => $_SESSION['user']['username']
            ]);
        }

        if ($artistaModel->insert($dati_artista)) {
            $this->redirect(BASE_URL . '/admin/gestione-contenuti');
        } else {
            return $this->render('admin/formArtista', [
                'ERROR_MSG' => "Errore Database: Impossibile creare l'artista.",
                'USERNAME' => $_SESSION['user']['username']
            ]);
        }
    }

    public function view_edit_canzone($id)
    {
        $canzoneModel = new CanzoneModel();
        $canzone = $canzoneModel->get_canzone_by_id($id); 

        if (!$canzone) {
            $this->abort(404, "Canzone non trovata");
        }

        $this->page_title = "Modifica Canzone";
        $this->scriptPathList[] = 'admin';

        $optionsLingua = $this->generateLanguageOptions($canzone['lingua_canzone']);

        $this->render('admin/formCanzone', [
            'TITOLO_PAGINA' => 'Modifica Canzone',
            'FORM_ACTION' => BASE_URL . '/admin/canzoni/update',
            'ERROR_MSG' => '',
            'VISIBILITY_ERROR' => 'hidden',
            
            'ID_VAL' => $canzone['id_canzone'], 
            'TITOLO_VAL' => $canzone['titolo_canzone'],
            'AUTORE_VAL' => $canzone['autore_canzone'],
            'OPTIONS_LINGUA' => $optionsLingua,
            'TESTO_VAL' => $canzone['testo_canzone'],
            
            'USERNAME' => $_SESSION['user']['username']
        ]);
    }

    public function update_canzone()
    {
        $id = $_POST['id'] ?? null;
        $titolo = $_POST['titolo'] ?? '';
        $autore = $_POST['autore'] ?? '';
        $lingua = $_POST['lingua'] ?? '';
        $testo = $_POST['testo'] ?? '';

        $artistaModel = new ArtistaModel();
        if (!$artistaModel->find_artista_by_name($autore)) {
            
            $optionsLingua = $this->generateLanguageOptions($lingua);

            return $this->render('admin/formCanzone', [
                'TITOLO_PAGINA' => 'Modifica Canzone',
                'FORM_ACTION' => BASE_URL . '/admin/canzoni/update',
                'ERROR_MSG' => "Errore: L'artista '$autore' non esiste.",
                'VISIBILITY_ERROR' => '',
                
                'ID_VAL' => $id,
                'TITOLO_VAL' => $titolo,
                'AUTORE_VAL' => $autore,
                'OPTIONS_LINGUA' => $optionsLingua,
                'TESTO_VAL' => $testo,
                'USERNAME' => $_SESSION['user']['username']
            ]);
        }

        $slug_canzone = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $titolo)));
        
        $dati = [
            'titolo_canzone' => $titolo,
            'autore_canzone' => $autore,
            'lingua_canzone' => $lingua,
            'testo_canzone' => $testo,
            'slug_canzone' => $slug_canzone
        ];

        $canzoneModel = new CanzoneModel();
        
        if ($canzoneModel->update_canzone($id, $dati)) {
            $this->redirect(BASE_URL . '/admin/gestione-contenuti');
        } else {
            $this->abort(500, "Errore durante l'aggiornamento della canzone.");
        }
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
            $this->redirect(BASE_URL . '/admin/gestione-contenuti');
        } else {
            return $this->render('admin/formCanzone', [
                'ERROR_MSG' => "Errore Database: Impossibile inserire la canzone.",
                'USERNAME' => $_SESSION['user']['username']
            ]);
        }
    }

    private function generateLanguageOptions($selectedLang = null) {
        $lingue = ['IT', 'EN', 'FR', 'ES']; 
        
        $options = '';

        foreach ($lingue as $lang) {
            $selected = ($selectedLang && strtoupper($selectedLang) == $lang) ? 'selected' : '';
            $options .= "<option value=\"{$lang}\" {$selected}>{$lang}</option>";
        }

        return $options;
    }


}