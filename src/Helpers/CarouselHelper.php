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

            $langAttr = '';
            $linguaTrovata = '';
            if (isset($item['lingua_canzone'])) {
                $linguaTrovata = $item['lingua_canzone'];
            } elseif (isset($item['lingua_artista'])) {
                $linguaTrovata = $item['lingua_artista'];
            }
            // il sito è in italiano, quindi non viene messo lang it
            if (!empty($linguaTrovata)) {
                $linguaLower = strtolower($linguaTrovata);
                if ($linguaLower !== 'it') {
                    $langAttr = 'lang="' . htmlspecialchars($linguaLower) . '"';
                }
            }
            $data['LANG_ATTR'] = $langAttr;

            $template->set_dati_pagina((array)$data);

            $html .= $template->get_pagina();
            
        }

        return $html;
    }

}