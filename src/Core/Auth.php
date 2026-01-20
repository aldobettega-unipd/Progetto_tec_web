<?php
namespace App\Core;

class Auth {

    public static function isLogged() {
        return isset($_SESSION['user']);
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

    public static function getMenuLinks() {
        if (self::isLogged()) {
            $user = self::getUser();
            return '<li><a class="btn-login" href="/profilo/' . $user['username'] . '">Profilo ' . $user['username'] . '</a></li>';
        } else {
            return '<li><a class="btn-login" href="/login">Login</a></li>';
        }
    }

}