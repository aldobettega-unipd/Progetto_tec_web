<?php
namespace App\Controllers;

use App\Core\Controller;
use App\Models\UserModel;
use App\Models\PlaylistModel;
use App\Helpers\CarouselHelper;

Class UserController extends Controller{
    private $User;

    public function __construct(){
        $this->User = new UserModel();
    }

    public function view_register(){
        $this->require_guest();
        $this->page_title = "Crea un account";
        $this->page_description = "Registrati per accedere a tutte le funzionalita` di EasyGuitar.";

        $this->render('user/register', "Crea un account");
    }

    public function register(){
        $username = $this->post('username');
        $password = $this->post('password');

        if(!$username || !$password){
            $this->redirect('/register');
        }



        if($this->User->insert_user($username, $password)){
            $this->redirect('/login');
        } else {
            $_SESSION['flash_error'] = "Username gia` in uso"; //implementare controllo instantaeno in frontend con js
            $this->redirect('/register');
        }
    }

    public function view_login(){
        $this->require_guest();
        $this->page_title = "Accedi al tuo account";
        $this->page_description = "Accedi al tuo account per gestire le tue playlist e scoprire nuova musica.";
        $this->render('user/login');
    }

    public function login() {
        $username = $this->post('username');
        $password = $this->post('password');

        $user = $this->User->find_user($username);

        if ($user && password_verify($password, $user['hash_password'])) {
            session_regenerate_id(true);

            $_SESSION['user'] = [
                'username' => $user['username'],
                'is_admin' => (bool)$user['is_admin']
            ];
            
            
            $this->redirect('/'); 

        } else {
            http_response_code(401);
            $_SESSION['flash_error'] = "Username o password errati!";
            $this->redirect('/login');
        }
    }

    public function logout(){
        session_unset();
        session_destroy();
        $this->redirect('/login');
    }

    public function view_profile($username){

        $user = $this->User->find_user($username);
        if (!$user) {

            $this->abort(404, "Ci dispiace, l'utente #$username non esiste nel nostro database.");
        }
        

        if(!$user['is_admin']) {

            $Playlist = new PlaylistModel();
            $user_playlists = $Playlist->get_user_playlist($username);
            error_log("questa e` la lista delle playlists " . print_r(['ciao'], true));
            $user["LISTA_PLAYLIST"] = CarouselHelper::carousel($user_playlists, 'playlistCard');

            $this->page_title = "Profilo Utente: {$user['username']}";
            $this->page_description = "Visualizza il profilo di {$user['username']} e le sue playlist create.";

            $this->render('user/profilo', $user);
        }else{

            $this->page_title = "Profilo Admin: {$user['username']}";
            $this->page_description = "Visualizza il profilo admin di {$user['username']}";


            $this->render('user/admin', $user);
        }
        
    }


}