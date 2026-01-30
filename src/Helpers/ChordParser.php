<?php
namespace App\Helpers;

class ChordParser
{

    public static function render($testo, $lingua='it')
    {
        $testo = htmlspecialchars($testo, ENT_QUOTES, 'UTF-8');
        $lines = preg_split('/\R/', $testo);
        $html = '';

        foreach ($lines as $line) {
            if (trim($line) === '') {
                $html .= '<div class="song-line empty-line">&nbsp;</div>';
                continue;
            }
            $is_chorded = (strpos($line, '[') !== false);

            $html .= '<div class="song-line">';

            $pattern = '/(?:\[(.*?)\])?([^\[]*)/';
            preg_match_all($pattern, $line, $matches, PREG_SET_ORDER);

            foreach ($matches as $match) {

                $chord = $match[1] ?? '';
                $lyric = $match[2] ?? '';
                if ($chord === '' && $lyric === '') {
                    continue;
                }
                $isInstrumental = preg_match('/^\s*$/u', $lyric) || $lyric === '&nbsp;';

                // 2. Assegnazione classe
                $extraClass = $isInstrumental ? ' instrumental' : '';

                $html .= '<span class="chord-group' . $extraClass . '">';


                // --- RENDER ACCORDO ---
                if ($chord !== '') {
                    // 1. Calcoliamo la versione parlata "umana"
                    $labelAccessibile = self::trasformaPerLettura($chord);

                    // 2. Inseriamo l'aria-label.
                    // Lo screen reader leggerà SOLO l'aria-label, ignorando il testo visivo interno.
                    $html .= '<span class="chord" data-val="' . $chord . '" aria-label="Accordo ' . $labelAccessibile . '">';
                    $html .= $chord; // Questo lo vede l'occhio, ma lo screen reader legge l'aria-label
                    $html .= '</span>';
                } else {
                    $html .= '<span class="chord spacer" aria-hidden="true">&nbsp;</span>';
                }

                // --- RENDER TESTO ---
                if ($isInstrumental) {
                    if($is_chorded){
                        $html .= '<span class="lyric" aria-hidden="true">&nbsp;</span>';
                    } else {
                        $html .= '<span class="lyric" aria-hidden="true"></span>';
                    }
                } else {
                    $html .= '<span class="lyric" lang="' . $lingua . '">' . $lyric . '</span>';
                }
                $html .= '</span>';
            }

            $html .= '</div>';
        }

        return $html;
    }

    private static function trasformaPerLettura($accordo)
    {

        $dizionario = [
            '/' => ' con basso ',
            '#' => ' diesis ',
            'b' => ' bemolle ',
            'maj7' => ' maggiore settima',
            'maj' => ' maggiore',
            'min' => ' minore',
            'dim' => ' diminuito',
            'm' => ' minore',
            'aug' => ' aumentato',
            'sus4' => ' sospeso quarta',
            'sus2' => ' sospeso seconda',
            'sus' => ' sospeso',
            'add9' => ' aggiunta nona',
            '7+' => ' settima maggiore',
            '7' => ' settima',
            '9' => ' nona',
            '4' => ' quarta',
            '2' => ' seconda',
            '6' => ' sesta',
            '3' => ' terza',
            '5' => ' quinta',
            '+' => ' aumentato'
        ];

        $parlato = strtr($accordo, $dizionario);
        return trim(preg_replace('/\s+/', ' ', $parlato));
    }
}