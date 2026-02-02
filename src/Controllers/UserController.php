<?php
namespace App\Controllers;

use App\Core\Controller;
use App\Models\UserModel;
use App\Models\PlaylistModel;
use App\Helpers\CarouselHelper;
use App\Helpers\BreadcrumbHelper;
use App\Helpers\ListHelper;
use App\Core\Auth;

class UserController extends Controller
{
    private $User;

    public function __construct()
    {
        $this->User = new UserModel();
        BreadcrumbHelper::reset();
        BreadcrumbHelper::add('Home', '/');
    }

    public function view_register()
    {
        $this->require_guest();
        $this->page_title = "Crea un account";
        $this->page_description = "Registrati per accedere a tutte le funzionalita` di EasyGuitar.";

        BreadcrumbHelper::add('Registrati');
        $redirect = $_GET['redirect'] ?? '/profilo';
        $this->render('user/register', ["REDIRECT_TO"=>$redirect]);
    }

    public function register()
    {
        $username = $this->post('username');
        $password = $this->post('password');

        if (!$username || !$password) {
            $this->redirect('/register');
        }



        if ($this->User->insert_user($username, $password)) {
            $this->login();
        } else {
            $_SESSION['flash_error'] = "Username gia` in uso"; //implementare controllo instantaeno in frontend con js
            $this->redirect('/register');
        }
    }

    public function view_login()
    {
        $this->require_guest();
        $this->page_title = "Accedi al tuo account";
        $this->page_description = "Accedi al tuo account per gestire le tue playlist e scoprire nuova musica.";
        BreadcrumbHelper::add('Accedi');
        $redirect = $_GET['redirect'] ?? '/profilo';
        $this->render('user/login', ["REDIRECT_TO"=>$redirect]);
    }

    public function login()
    {
        $username = $this->post('username');
        $password = $this->post('password');

        $redirect_to = $this->post('redirect_to');

        $user = $this->User->find_user($username);

        if ($user && password_verify($password, $user['hash_password'])) {
            session_regenerate_id(true);

            $_SESSION['user'] = [
                'username' => $user['username'],
                'is_admin' => (bool) $user['is_admin']
            ];

            $this->redirect($redirect_to);

        } else {
            http_response_code(401);
            $_SESSION['flash_error'] = "Username o password errati!";
            $this->redirect('/login');
        }
    }

    public function logout()
    {
        session_unset();
        session_destroy();
        $this->redirect('/login');
    }

    public function view_profile()
    {
        $user = $this->User->get_current_user();
        if (!$user) {
            $this->abort(404, "Utente non trovato.");
        }

        BreadcrumbHelper::add('Profilo');


        $Playlist = new PlaylistModel();
        $user_playlists = $Playlist->get_user_playlist($user['id_utente']);

        $data = $user;
        $data["LISTA_PLAYLIST"] = ListHelper::render(
            $user_playlists,
            'playlistRow',
            ['USERNAME' => $user['username']]
        );
        $data['FOTO_PROFILO'] = $user['foto_profilo'] ?? '1';

        $this->page_title = "Profilo Utente: {$user['username']}";
        $this->page_description = "Profilo di {$user['username']} - visualizza le playlist create e i preferiti.";
        $this->scriptPathList[] = 'profile';
        $this->render('user/profilo', $data);
    }

}