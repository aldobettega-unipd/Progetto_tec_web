<?php
namespace App\Helpers;

class FormHelper {

    public static function createRadios($data, $name, $selected = '') {
        $html = '';
        
        foreach ($data as $value) {
            $safe_val = htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
            $checked = ($value == $selected) ? 'checked' : '';
            
            $unique_id = htmlspecialchars($name . '_' . $index, ENT_QUOTES, 'UTF-8');
            $html .= "<div class='radio-item'>
                        <input type='radio' id='{$unique_id}' name='{$name}' value='{$safe_val}' {$checked}>
                        <label for='{$unique_id}'>{$safe_val}</label>
                      </div>";
        }
        return $html;
    }

    public static function createCheckboxes($data, $name, $selected = []) {
        $html = '';
        
        if (!is_array($selected)) $selected = [];

        foreach ($data as $value) {
            $safe_val = htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
            $is_checked = in_array($value, $selected) ? 'checked' : '';

            $clean_name = str_replace(['[', ']'], '', $name);
            $unique_id = htmlspecialchars($clean_name . '_' . $index, ENT_QUOTES, 'UTF-8');
            
            $html .= "<div class='checkbox-item'>
                        <label>
                            <input type='checkbox' name='{$name}' value='{$safe_val}' {$is_checked}>
                            {$safe_val}
                        </label>
                      </div>";
        }
        return $html;
    }
}