<?php
namespace App\Controllers;

use App\Core\Controller;
use App\Models\UserModel;

Class UserController extends Controller{



    public function view_register(){
        $error = $_SESSION['flash_error'] ?? null;
        unset($_SESSION['flash_error']);

        $this->render('user/register', ['FLASH_ERROR' => $error]);
    }

    public function register(){
        $username = $this->post('username');
        $password = $this->post('password');

        if(!$username || !$password){
            $this->redirect('/register');
        }

        $model = new UserModel();

        if($model->insert_user($username, $password)){
            $this->redirect('/login');
        } else {
            $_SESSION['flash_error'] = "Username gia` in uso"; //implementare controllo instantaeno in frontend con js
            $this->redirect('/register');
        }
    }

    public function view_login(){
        $error = $_SESSION['flash_error'] ?? null;
        unset($_SESSION['flash_error']);

        $this->render('user/login', ['FLASH_ERROR' => $error]);
    }

    public function login() {
        $username = $this->post('username');
        $password = $this->post('password');

        $model = new UserModel();
        $user = $model->find_user($username);

        if ($user && password_verify($password, $user['hash_password'])) {
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
        $this->require_owner($username);

        $model = new UserModel();
        $user = $model->find_user($username);

        if(!$user['user']['is_admin']) {
            $this->render('user/profilo', $user);
        }else{
            $this->render('user/admin', $user);
        }
        
    }


}