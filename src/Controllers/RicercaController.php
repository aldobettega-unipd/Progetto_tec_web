<?php

class RicercaController {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function esegui_ricerca() {
        $termine = $_POST['ricerca'];
        $risultatiHTML = '';

        if ($termine !== '') {
            $modelloCanzone = new Canzone($this->db);
            $canzoni_trovate = $modelloCanzone->cerca($termine);

            foreach($canzoni_trovate as $canzone) {
                $template = new Template(__DIR__ . "/../Views/pages/canzoneCard.html");
                $template->setDatiPagina($canzone);
                $risultatiHTML .= $template->getPagina();
            }

            $modelloArtista = new Artista($this->db);
            $artisti_trovati = $modelloArtista->cerca($termine);

            foreach($artisti_trovati as $artista) {
                $template = new Template(__DIR__ . "/../Views/pages/artistaCard.html");
                $template->setDatiPagina($artista);
                $risultatiHTML.= $template->getPagina();
            }
        }

        $template = new Template(__DIR__ . "/../Views/pages/risultatiRicerca.html");
        $template->setDatiPagina([
            'termine' => htmlspecialchars($termine),
            'risultati_ricerca' => $risultatiHTML ?: "Nessun risultato trovato."
        ]);

        return $template->getPagina();
    }
}