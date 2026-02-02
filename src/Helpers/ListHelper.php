<?php
namespace App\Helpers;

use App\Core\Template;

class ListHelper
{
    public static function render($items, $templateName, $context = []) {

        $html = "";
        $path = 'components/' . $templateName; 

        if (empty($items)) {
            return "<div class='empty-message'>Nessun elemento trovato</div>"; 
        }

        foreach ($items as $item) {
            $template = new Template($path);
            $data = [];

            foreach ((array)$item as $key => $value) {
                $data[strtoupper($key)] = $value;
            }

            $langCanzoneAttr = '';
            $langArtistaAttr = '';

            if (!empty($item['lingua_canzone'])) {
                $l = strtolower($item['lingua_canzone']);
                if ($l !== 'it') $langCanzoneAttr = 'lang="' . htmlspecialchars($l) . '"';
            }

            if (!empty($item['lingua_artista'])) {
                $l = strtolower($item['lingua_artista']);
                if ($l !== 'it') $langArtistaAttr = 'lang="' . htmlspecialchars($l) . '"';
            }

            $data['LANG_CANZONE'] = $langCanzoneAttr;
            $data['LANG_ARTISTA'] = $langArtistaAttr;

            if (isset($item['nome_artista']) && !isset($item['titolo_canzone'])) {
                 $data['LANG_ATTR'] = $langArtistaAttr;
            }

            foreach ($context as $key => $value) {
                $data[strtoupper($key)] = $value;
            }

            $template->set_dati_pagina($data);
            $html .= $template->get_pagina();
        }

        return $html;
    }



    public static function groupByIndex($items, $key) {
        $grouped = [];

        $accenti = [
            'À'=>'A', 'Á'=>'A', 'Â'=>'A', 'Ä'=>'A',
            'È'=>'E', 'É'=>'E', 'Ê'=>'E', 'Ë'=>'E',
            'Ì'=>'I', 'Í'=>'I', 'Î'=>'I', 'Ï'=>'I',
            'Ò'=>'O', 'Ó'=>'O', 'Ô'=>'O', 'Ö'=>'O',
            'Ù'=>'U', 'Ú'=>'U', 'Û'=>'U', 'Ü'=>'U',
            'à'=>'A', 'á'=>'A', 'è'=>'E', 'é'=>'E',
            'ì'=>'I', 'í'=>'I', 'ò'=>'O', 'ó'=>'O',
            'ù'=>'U', 'ú'=>'U'
        ];

        foreach ($items as $item) {
            $char = mb_substr($item[$key], 0, 1, 'UTF-8');
            $cleanChar = strtr($char, $accenti);
            $firstChar = mb_strtoupper($cleanChar, 'UTF-8');
            if (!preg_match('/^[A-Z]$/', $firstChar)) {
                $firstChar = '#';
            }
            $grouped[$firstChar][] = $item;
        }

        ksort($grouped);

        /* Opzionale: Se vuoi che '#' sia alla fine invece che all'inizio
        if (isset($grouped['#'])) {
            $hashGroup = $grouped['#'];
            unset($grouped['#']);
            $grouped['#'] = $hashGroup;
        }*/
        
        return $grouped;
    }


    
    // Costruisce la lista HTML per la pagina "Tutte le Canzoni" (A-Z)
    public static function costruisciListaCanzoni($groupedItems) {
        $html = '<div class="classic-index">';

        foreach ($groupedItems as $letter => $items) {
            $html .= '<div class="letter-block">';
            $html .= '<h2>' . htmlspecialchars($letter) . '</h2>';
            $html .= '<ul class="plain-list">';

            foreach ($items as $item) {

                $langAttrCanzone = '';
                if (!empty($item['lingua_canzone'])) {
                    $l = strtolower($item['lingua_canzone']);
                    if ($l !== 'it') {
                        $langAttrCanzone = 'lang="' . htmlspecialchars($l) . '"';
                    }
                }

                $langAttrArtista = '';
                if (!empty($item['lingua_artista'])) {
                    $l = strtolower($item['lingua_artista']);
                    if ($l !== 'it') {
                        $langAttrArtista = 'lang="' . htmlspecialchars($l) . '"';
                    }
                }

                $url = '/canzoni/' . $item['slug_canzone'];
                $titolo = htmlspecialchars($item['titolo_canzone']);
                $autore = htmlspecialchars($item['autore_canzone']);

                $html .= '<li>';
                $html .= '<a href="' . $url . '">';
                
                // Applica attributo Canzone
                $html .= '<strong class="entry-name" ' . $langAttrCanzone . '>' . $titolo . '</strong>';
                
                // Applica attributo Artista
                $html .= '<span class="artist-inline" ' . $langAttrArtista .  '> - ' . $autore . '</span>';
                
                $html .= '</a>';
                $html .= '</li>';
            }

            $html .= '</ul>';
            $html .= '</div>'; 
        }

        $html .= '</div>'; 
        return $html;
    }


    public static function costruisciListaArtisti($groupedItems) {
        $html = '<div class="classic-index">';

        foreach ($groupedItems as $letter => $items) {
            $html .= '<div class="letter-block">';
            $html .= '<h2>' . htmlspecialchars($letter) . '</h2>';
            $html .= '<ul class="plain-list">';

            foreach ($items as $item) {
                $langAttr = '';
                
                if (!empty($item['lingua_artista'])) {
                    $l = strtolower($item['lingua_artista']);
                    if ($l !== 'it') {
                        $langAttr = 'lang="' . htmlspecialchars($l) . '"';
                    }
                }

                $url = '/artisti/' . $item['slug_artista'];
                $nome = htmlspecialchars($item['nome_artista']);

                $html .= '<li>';
                $html .= '<a href="' . $url . '">';
                $html .= '<strong class="entry-name" ' . $langAttr . '>' . $nome . '</strong>';
                $html .= '</a>';
                $html .= '</li>';
            }

            $html .= '</ul>';
            $html .= '</div>';
        }

        $html .= '</div>';
        return $html;
    }

    
    public static function playlistChecklist($playlists) {
        $html = '<ul class="playlist-checklist">';

        // Caso: Nessuna playlist trovata
        if (empty($playlists)) {
            // Usiamo una classe CSS per stilizzare il messaggio vuoto invece dell'inline style
            $html .= '<li class="empty-message">Nessuna playlist creata</li>';
            $html .= '</ul>';
            return $html;
        }

        // Ciclo sui dati
        // $id è la chiave dell'array (es. 1)
        // $dati è l'array valore (es. ['Rock Anni 70', true])
        foreach ($playlists as $id => $dati) {
            
            // Estrapoliamo i dati posizionali
            $nome = $dati[0] ?? 'Senza Nome'; // Indice 0: Nome
            $isChecked = !empty($dati[1]);    // Indice 1: Checked (bool o int)
            
            // Sanitizzazione nome per sicurezza HTML
            $nomeSafe = htmlspecialchars($nome, ENT_QUOTES, 'UTF-8');
            
            // Attributo checked
            $checkedAttr = $isChecked ? 'checked' : '';

            $html .= '<li>';
            $html .= '    <label class="checkbox-container">';
            
            // Input checkbox con value = ID
            $html .= '        <input type="checkbox" value="' . $id . '" ' . $checkedAttr . '>';
            
            // Il quadrato personalizzato (checkmark)
            $html .= '        <span class="checkmark"></span>';
            
            // Il nome della playlist con l'attributo data-id-playlist
            $html .= '        <span class="playlist-name" data-id-playlist="' . $id . '">' . $nomeSafe . '</span>';
            
            $html .= '    </label>';
            $html .= '</li>';
        }

        $html .= '</ul>';

        return $html;
    }

    
}
