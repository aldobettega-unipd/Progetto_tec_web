<?php
namespace App\Helpers;

class ChordParser {

    /**
     * Trasforma testo [Am]Testo in HTML semantico e accessibile.
     */
    public static function render($testo) {
        // Escaping base per sicurezza
        $testo = htmlspecialchars($testo, ENT_QUOTES, 'UTF-8');
        
        // Divido in righe
        $lines = explode("\n", $testo);
        $html = '';

        foreach ($lines as $line) {
            // Se la riga è vuota o ha solo spazi, metto uno spazio verticale
            if (trim($line) === '') { 
                $html .= '<div class="song-line empty-line">&nbsp;</div>'; 
                continue; 
            }

            $html .= '<div class="song-line">';

            // REGEX: Cattura gruppi composti da:
            // 1. (Opzionale) Un accordo tra parentesi quadre: \[ (.*?) \]
            // 2. (Opzionale) Tutto il testo che segue finché non trova un'altra parentesi: ([^\[]*)
            $pattern = '/(?:\[(.*?)\])?([^\[]*)/';
            
            preg_match_all($pattern, $line, $matches, PREG_SET_ORDER);

            foreach ($matches as $match) {
                // $match[0] è l'intera stringa matchata
                // $match[1] è il contenuto dell'accordo (es. "Am")
                // $match[2] è il testo della sillaba (es. "Siamo ")

                $rawChord = $match[1] ?? '';
                $lyric = $match[2] ?? '';

                // Se entrambi sono vuoti (fine riga strana), salta
                if (empty($rawChord) && empty($lyric)) {
                    continue;
                }

                $html .= '<span class="chord-group">';
                
                // 1. ACCORDO
                if ($rawChord) {
                    // aria-label serve per far leggere "Accordo Do" invece di "Ci"
                    $html .= '<span class="chord" aria-label="Accordo ' . $rawChord . '">' . $rawChord . '</span>';
                } else {
                    // Spacer invisibile per mantenere l'allineamento se necessario
                    $html .= '<span class="chord spacer" aria-hidden="true">&nbsp;</span>';
                }

                // 2. TESTO (LYRIC)
                // Se c'è testo, lo stampo. white-space: pre nel CSS gestirà gli spazi finali.
                $html .= '<span class="lyric">' . $lyric . '</span>';
                
                $html .= '</span>'; // Chiudo chord-group
            }

            $html .= '</div>'; // Chiudo song-line
        }

        return $html;
    }
}