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

            // 2. Aggiunge i dati di contesto
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


    public static function costruisciListaCanzoni($dati_raggruppati)
    {
        $html_finale = '<div class="classic-index">';

        foreach ($dati_raggruppati as $lettera => $lista) {


            // Iniziamo la sezione della lettera
            // HEREDOC: Tutto tra <<<HTML e HTML; viene trattato come stringa
            $html_finale .= <<<HTML
            <section class="letter-block" aria-labelledby="heading-{$lettera}">
                <h2 id="heading-{$lettera}" class="letter-title">{$lettera}</h2>
                <ul class="plain-list">
HTML;

            // Ciclo interno per le canzoni di questa lettera
            foreach ($lista as $canzone) {
                // Sanificazione dati DB (FONDAMENTALE)
                $titolo = htmlspecialchars($canzone['titolo_canzone']);
                $autore = htmlspecialchars($canzone['autore_canzone']);
                $slug = htmlspecialchars($canzone['slug_canzone']);

                // Aggiungo la riga della lista (li)
                $html_finale .= <<<HTML
                    <li>
                        <a href="/canzoni/{$slug}">
                            <strong>{$titolo}</strong>
                            <span class="artist-ref">- {$autore}</span>
                        </a>
                    </li>
                    HTML;
            }

            // Chiudo la lista e la sezione
            $html_finale .= <<<HTML
                </ul>
            </section>
            HTML;
        }

        $html_finale .= '</div>'; // Chiudo il contenitore principale

        return $html_finale;
    }

    public static function costruisciListaArtisti($dati_raggruppati)
    {
        $html_finale = '<div class="classic-index">';

        foreach ($dati_raggruppati as $lettera => $lista) {

            $html_finale .= <<<HTML
            <section class="letter-block" aria-labelledby="heading-{$lettera}">
                <h2 id="heading-{$lettera}" class="letter-title">{$lettera}</h2>
                <ul class="plain-list">
HTML;

            foreach ($lista as $artista) {
                $name = htmlspecialchars($artista['nome_artista']);
                $slug = htmlspecialchars($artista['slug_artista']);

                // Aggiungo la riga della lista (li)
                $html_finale .= <<<HTML
                    <li>
                        <a href="/artisti/{$slug}">
                            <strong>{$name}</strong>
                        </a>
                    </li>
                    HTML;
            }

            // Chiudo la lista e la sezione
            $html_finale .= <<<HTML
                </ul>
            </section>
            HTML;
        }

        $html_finale .= '</div>'; // Chiudo il contenitore principale

        return $html_finale;
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
