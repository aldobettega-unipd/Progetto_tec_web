<?php
namespace App\Helpers;

use App\Core\Template;

class ListHelper {

    public static function render($items, $templateName) {
        $html = "";
        $path = 'components/' . $templateName; 

        if (empty($items)) {
            return "<div style='text-align:center; padding:20px; color:#666;'>Nessuna canzone in questa playlist.</div>"; 
        }

        foreach ($items as $item) {
            $template = new Template($path);
            
            // TRUCCO FONDAMENTALE:
            // Convertiamo le chiavi del DB (es. titolo_canzone) in MAIUSCOLO (es. TITOLO_CANZONE)
            // così coincidono con i placeholder ##TITOLO_CANZONE## dell'HTML
            $data = [];
            foreach ($item as $key => $value) {
                $data[strtoupper($key)] = $value;
            }

            // Aggiungiamo eventuali dati extra se servono
            $template->set_dati_pagina($data);
            
            $html .= $template->get_pagina();
        }

        return $html;
    }
}