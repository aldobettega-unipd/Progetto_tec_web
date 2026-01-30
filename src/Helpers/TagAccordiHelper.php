<?php
namespace App\Helpers;

class TagAccordiHelper {
    
    public static function generaTags($accordi) {
        if (!$accordi) return '';
        $html = '<div class="chord-tag-list">';
        
        foreach ($accordi as $accordo) {
            if ($accordo === '') continue;
            $html .= '<span class="chord-tag">';
            $html .= htmlspecialchars($accordo, ENT_QUOTES, 'UTF-8');
            $html .= '</span>';
        }
        
        $html .= '</div>';
        
        return $html;
    }
}