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

            $langCanzone = '';
            $langArtista = '';
            
            if (!empty($item['lingua_canzone'])) {
                $lingua = strtolower($item['lingua_canzone']);
                if ($lingua !== 'it') $langCanzone = 'lang="' . htmlspecialchars($lingua) . '"';
            }

            if (!empty($item['lingua_artista'])) {
                $lingua = strtolower($item['lingua_artista']);
                if ($lingua !== 'it') $langArtista = 'lang="' . htmlspecialchars($lingua) . '"';
            }

            $data['LANG_CANZONE'] = $langCanzone;
            $data['LANG_ARTISTA'] = $langArtista;

            // per artista card che ha solo artista
            if(isset($item['lingua_artista']) && !isset($item['titolo_canzone'])) {
                 $data['LANG_ATTR'] = $langArtista;
            }

            $template->set_dati_pagina((array)$data);

            $html .= $template->get_pagina(true);
            
        }

        return $html;
    }

}