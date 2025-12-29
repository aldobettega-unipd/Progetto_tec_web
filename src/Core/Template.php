<?php
// Questa classe si limita seplicemente a sostituire i placeholder dell' html con i dati presi dal Controller

class Template {
    private $contenuto;

    public function __construct($filePath) {
        if (file_exists($filePath)) {
            $this->contenuto = file_get_contents($filePath);
        } else {
            $this->contenuto = "Errore: File template non trovato.";
        }
    }

    public function setDatiPagina($array_assoc_dati) {
        if (!is_array($array_assoc_dati)) {
            return;
        }

        foreach ($array_assoc_dati as $chiave => $valore) {
            $this->contenuto = str_replace("[$chiave]", $valore ?? '', $this->contenuto);
        }
    }

    public function getPagina() {
        $contenuto_pulito = preg_replace('/\[[^\]]+\]/', '', $this->contenuto);  // rimuove placeholder non sostituiti
        return $contenuto_pulito;
    }
}