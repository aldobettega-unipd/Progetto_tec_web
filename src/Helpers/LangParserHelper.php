<?php
namespace App\Helpers;

class LangParserHelper
{

    public static function formatta_lingua($testo)
    {
    if (empty($testo)) return "";

    // Regex spiegata:
    // \{         -> Cerca la parentesi graffa aperta
    // ([a-z]{2}) -> Gruppo 1: Cerca 2 lettere (es. 'en', 'it', 'fr')
    // :          -> Cerca i due punti
    // ([^}]+)    -> Gruppo 2: Prende tutto ciò che NON è una graffa chiusa
    // \}         -> Cerca la graffa chiusa
    $pattern = '/\{([a-z]{2}):([^}]+)\}/i';
    
    // Sostituzione:
    // $1 è il primo gruppo (la lingua)
    // $2 è il secondo gruppo (il testo)
    $replacement = '<span lang="$1">$2</span>';

    return preg_replace($pattern, $replacement, $testo);

    }
    
}