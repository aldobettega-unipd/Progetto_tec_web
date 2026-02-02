<?php
namespace App\Helpers;

class TextHelper {

    public static function parseLanguageTags($text, $applyNl2br = false) {
        if (empty($text)) return "";

        // Regex: Cerca {xx}contenuto{/xx} dove xx sono 2 lettere (es. en, fr, es)
        // La 's' finale permette al punto (.) di includere anche i ritorni a capo se necessario
        $pattern = '/\{([a-zA-Z]{2})\}(.*?)\{\/\1\}/s';
        
        $replacement = '<span lang="$1">$2</span>';
        
        $processedText = preg_replace($pattern, $replacement, $text);

        if ($applyNl2br) {
            return nl2br($processedText);
        }
        
        return $processedText;
    }
}