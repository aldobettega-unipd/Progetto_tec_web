<?php
namespace App\Helpers;

class FormHelper {

    /**
     * Genera una lista di Radio Buttons
     * @param array $data Array di valori (es. ['Italiano', 'Inglese'])
     * @param string $name Il 'name' dell'input (es. 'lingua')
     * @param string $selected Il valore attualmente selezionato
     */
    public static function createRadios($data, $name, $selected = '') {
        $html = '';
        
        foreach ($data as $value) {
            $safe_val = htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
            // Check se è selezionato
            $checked = ($value == $selected) ? 'checked' : '';
            
            // Creiamo un wrapper per tenere input e label insieme
            $html .= "<div class='radio-item'>
                        <label>
                            <input type='radio' name='{$name}' value='{$safe_val}' {$checked}>
                            {$safe_val}
                        </label>
                      </div>";
        }
        return $html;
    }

    /**
     * Genera una lista di Checkbox
     * @param array $data Array di valori (es. ['Do', 'Re', 'Mi'])
     * @param string $name Il 'name' dell'input (es. 'accordi[]') - NOTA LE QUADRE!
     * @param array $selected Array dei valori selezionati
     */
    public static function createCheckboxes($data, $name, $selected = []) {
        $html = '';
        
        // Assicuriamoci che selected sia un array
        if (!is_array($selected)) $selected = [];

        foreach ($data as $value) {
            $safe_val = htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
            // Check se il valore è nell'array dei selezionati
            $is_checked = in_array($value, $selected) ? 'checked' : '';
            
            $html .= "<div class='checkbox-item'>
                        <label>
                            <input type='checkbox' name='{$name}' value='{$safe_val}' {$is_checked}>
                            {$safe_val}
                        </label>
                      </div>";
        }
        return $html;
    }
    
    // Puoi rimuovere createOptions se non lo usi più altrove
}