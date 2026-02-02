<?php
namespace App\Helpers;
use App\Core\Template;
use App\Models\PlaylistModel;
use App\Models\UserModel;
use App\Core\Auth;

class FavoriteBtnHelper
{
    static public function render($id_canzone, $base_class)
    {

        $preferiti_data = self::get_preferiti_data($id_canzone);
        $path = 'components/favoriteButton'; 
        $Template = new Template($path);
        $fav_active = $preferiti_data['is_active'] ? 'active' : '';
        $data = [
    'PREFERITI_CLASS'=> $base_class . ' ' . $fav_active,
    'ID_CANZONE'=> $id_canzone,
    'ID_PREFERITI'=> $preferiti_data['id'],
        ];

        $Template->set_dati_pagina($data);
        return $Template->get_pagina();
    
    }

    static public function get_preferiti_data($id_canzone)
    {
        $favData = [
            'id' => null,
            'is_active' => false
        ];
        if (!Auth::isUser()) {
            return $favData;
        }

        $Playlist = new PlaylistModel();
        $User = new UserModel() ;
        $id_user = $User->get_current_user()['id_utente'];
        $id_fav= $Playlist->get_preferiti_id($id_user);

        $fav_active = $Playlist->isInPlaylist($id_fav, $id_canzone);

        $favData['id'] = $id_fav;
        $favData['is_active'] = $fav_active;

        return $favData;

    }

}