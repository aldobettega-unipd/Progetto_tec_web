<?php
namespace App\Helpers;

use App\Core\Template;
use App\Core\Auth;
use App\Helpers\FavoriteBtnHelper;

class CarouselHelper {

    public static function carousel($items, $cardTemplateName) {

        $html = "";
        $path = 'components/' . $cardTemplateName; 

        if (empty($items)) {
            return "nessun elemento trovato"; 
        }
        
        foreach ($items as $item) {
            $template = new Template($path);
            if($cardTemplateName == "canzoneCard" && Auth::isUser()) {
                $id_canzone = $item['id_canzone'];
                $favBtn= FavoriteBtnHelper::render($id_canzone, 'btn-favorite in-card');
                $data = array_merge($item, ["PULSANTE_PREFERITI" => $favBtn]);
            }else{
                $data = $item;
            }

            $template->set_dati_pagina((array)$data);

            $html .= $template->get_pagina();
            
        }

        return $html;
    }

}