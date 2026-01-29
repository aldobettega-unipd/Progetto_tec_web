<?php
namespace App\Helpers;

use App\Core\Template;

class ListHelper {

    public static function render($items, $templateName, $type, $mapping = []) {
        $html = "";
        $path = 'components/' . $templateName; 

        if (empty($items)) {
            return "<div style='text-align:center; padding:20px; color:#666;'>Lista vuota</div>"; 
        }

        foreach ($items as $item) {
            $template = new Template($path);
            
            $data = [];
            foreach ($item as $key => $value) {
                $data[strtoupper($key)] = $value;
            }
            $data['TYPE'] = $type;

            foreach ($mapping as $placeholder => $dbField) {
                if (isset($item[$dbField])) {
                    $data[$placeholder] = $item[$dbField];
                }
            }

            $template->set_dati_pagina($data);
            
            $html .= $template->get_pagina();
        }

        return $html;
    }
}