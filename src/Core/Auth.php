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
            return '<a href="/admin/' . $user['username'] . '">Admin</a>';
        } elseif (self::isUser()) {
            $user = self::getUser();
            return '<a href="/profilo/' . $user['username'] . '">Profilo</a>';
        } else {
            return '<a href="/login">Login</a>';
        }
    }

    public static function getFooterLinks() {
        if (self::isAdmin()) {
            $user = self::getUser();
            return '<a href="/admin/' . $user['username'] . '">Admin</a>' . '
            <a href="/logout">Logout</a>';
        }elseif (self::isLogged()) {
            $user = self::getUser();
            return '<a href="/profilo/' . $user['username'] . '">Profilo</a>' . '
            <a href="/logout">Logout</a>';
        } else {
            return '<a href="/login">Login</a>' . '
            <a href="/register">Registrati</a>';
        }
    }
}