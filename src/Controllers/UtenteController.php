<?php
namespace App\Controllers;

use App\Core\Controller;
use App\Models\UserModel;

Class UserController extends Controller{

    public function view_register_form(){
        $this->render('user/register');
    }

    public function register(){
        $username = $this->post('username');
        $password = $this->post('password');

        if(!$username || !$password){
            $this->redirect('/register?error=empty_field');
        }

        $model = new UserModel();

        if($model->insert_user($username, $password)){
            $this->redirect('/login?msg=registrato');
        } else {
            $this->redirect('/register?error=existing_username');
        }
    }

    public function view_login(){
        $error = $_SESSION['flash_error'] ?? null;
        unset($_SESSION['flash_error']);

        $this->render('user/login', ['errore' => $error]);
    }

    public function login() {
        $username = $this->post('username');
        $password = $this->post('password');

        $model = new UserModel();
        $user = $model->find_user($username);

        if ($user && password_verify($password, $user['hash_password'])) {
            $_SESSION['user_username'] = $user['username'];
            $_SESSION['is_admin'] = (bool)$user['is_admin'];
            
            $this->redirect('/?msg=benvenuto'); 

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
        $this->require_owner($username);

        $model = new UserModel();
        $user = $model->find_user($username);

        if(!$user['is_admin']) {
            $this->render('user/profilo', $user);
        }else{
            $this->render('user/admin', $user);
        }
        
    }


}