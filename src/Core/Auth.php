<?php
namespace App\Core;

class Auth {

    public static function isLogged() {
        return isset($_SESSION['user']);
    }

    public static function isUser() {
        return self::isLogged() && empty($_SESSION['user']['is_admin']);
    }

    public static function isAdmin() {
        if (!self::isLogged()) return false;
        return !empty($_SESSION['user']['is_admin']);
    }

    public static function isOwner($username) {
        if (!self::isLogged()) return false;
        return $_SESSION['user']['username'] === $username;
    }

    public static function getUser() {
        return $_SESSION['user'] ?? null;
    }

    public static function getHeaderLinks() {
        if (self::isAdmin()) {
            $user = self::getUser();

            return '<a href="##BASE_URL##/admin" lang="en">Admin</a>';

        } elseif (self::isUser()) {
            $user = self::getUser();
            return '<a href="##BASE_URL##/profilo'. '">Profilo</a>';
        } else {

            return '<a href="##BASE_URL##/login" lang="en">Login</a>';
        }
    }

    public static function getFooterLinks() {
        if (self::isAdmin()) {
            return 
            '<a href="##BASE_URL##/admin" lang="en"><span class="icon" aria-hidden="true"><img src="##BASE_URL##/img/icone/admin.webp" alt=""></span>Admin</a>' . 
            '<a href="##BASE_URL##/logout" lang="en"><span class="icon" aria-hidden="true"><img src="##BASE_URL##/img/icone/logout.webp" alt=""></span>Logout</a>';
        
        } elseif (self::isLogged()) {
            return 
            '<a href="##BASE_URL##/profilo"><span class="icon" aria-hidden="true"><img src="##BASE_URL##/img/icone/user.webp" alt=""></span>Profilo</a>' . 
            '<a href="##BASE_URL##/logout" lang="en"><span class="icon" aria-hidden="true"><img src="##BASE_URL##/img/icone/logout.webp" alt=""></span>Logout</a>';
        
        } else {
            return 
            '<a href="##BASE_URL##/login" lang="en"><span class="icon" aria-hidden="true"><img src="##BASE_URL##/img/icone/login.webp" alt=""></span>Login</a>' . 
            '<a href="##BASE_URL##/register"><span class="icon" aria-hidden="true"><img src="##BASE_URL##/img/icone/register.webp" alt=""></span>Registrati</a>';
        }
    }
}