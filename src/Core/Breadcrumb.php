<?php
namespace App\Core;

class Breadcrumb
{
    private static ?string $routePattern = null;
    private static array $params = [];

    // chiamato dal Router
    public static function setRoute(string $pattern, array $params): void
    {
        self::$routePattern = $pattern;
        self::$params = $params;
    }

    // chiamato dal Template / Controller
    public static function build(): string
    {
        if (!self::$routePattern) {
            return '';
        }

        $map = [
            '/search' => 'Cerca',
            '/login' => 'Login',
            '/register' => 'Registrati',
            '/artisti/{slug_artista:alphanum}' => '{slug_artista}',
            '/canzoni/{slug_canzone:alphanum}' => '{slug_canzone}',
            '/profilo/{username:alphanum}' => 'Profilo',
            '/profilo/{username:alphanum}/playlist/{id_playlist:num}' => 'Playlist {id_playlist}',
        ];

        $html = '<nav class="breadcrumb">';
        $html .= '<a href="/">Home</a>';

        $segments = explode('/', trim(self::$routePattern, '/'));
        $current = '';

        foreach ($segments as $segment) {
            $current .= '/' . $segment;

            if (!isset($map[$current])) {
                continue;
            }

            $url = $current;
            $label = $map[$current];

            // sostituisce {param} e {param:...} con il valore reale
            foreach (self::$params as $key => $value) {
                $url = str_replace(['{' . $key . '}', '{' . $key . ':alphanum}'], $value, $url);
                $label = str_replace(['{' . $key . '}', '{' . $key . ':alphanum}'], $value, $label);
            }

            $html .= ' <span>/</span> ';
            
            if ($segment === end($segments)) {
                $html .= '<span>' . $label . '</span>';
            } else {
                $html .= '<a href="' . $url . '">' . $label . '</a>';
            }
        }

        $html .= '</nav>';

        return $html;
    }
}
