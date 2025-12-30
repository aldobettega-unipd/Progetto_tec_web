<?php

class RicercaController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function esegui_ricerca() {
        $termine = $_POST['ricerca'];
        $risultati_HTML = '';

        if ($termine !== '') {
            $modello_canzone = new Canzone($this->db);
            $canzoni_trovate = $modello_canzone->cerca($termine);

            foreach($canzoni_trovate as $canzone) {
                $template = new Template(__DIR__ . "/../Views/components/canzoneCard.html");
                $template->set_dati_pagina($canzone);
                $risultati_HTML .= $template->get_pagina();
            }

            $modello_artista = new Artista($this->db);
            $artisti_trovati = $modello_artista->cerca($termine);

            foreach($artisti_trovati as $artista) {
                $template = new Template(__DIR__ . "/../Views/components/artistaCard.html");
                $template->set_dati_pagina($artista);
                $risultati_HTML.= $template->get_pagina();
            }
        }

        $template = new Template(__DIR__ . "/../Views/components/risultatiRicerca.html");
        $template->set_dati_pagina([
            'termine' => htmlspecialchars($termine),
            'risultati_ricerca' => $risultati_HTML ?: "Nessun risultato trovato."
        ]);

        return $template->get_pagina();
    }
}