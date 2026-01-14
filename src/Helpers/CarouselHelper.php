<?php
namespace App\Helpers; // <--- FONDAMENTALE

use App\Core\Template;

class CarouselHelper {

    public static function carousel($items, $cardTemplateName) {

        $html = "";
        $path = 'components/' . $cardTemplateName; 

        if (empty($items)) {
            return "nessun elemento trovato"; 
        }

        foreach ($items as $item) {
            $template = new Template($path);
            $template->set_dati_pagina((array)$item);
            $html .= $template->get_pagina();
            
        }

        return $html;
    }
}