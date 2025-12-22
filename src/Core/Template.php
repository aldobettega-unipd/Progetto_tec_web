<?php
// Questa classe si limita seplicemente a sostituire i placeholder del html con i dati presi dal Controller

class Template {
    private $contenuto;

    public function __construct($filePath) {
        if (file_exists($filePath)) {
            $this->contenuto = file_get_contents($filePath);
        } else {
            $this->contenuto = "Errore: File template non trovato.";
        }
    }

    public function inserisciDatiPagina($arrayDati) {
        if (!is_array($arrayDati)) {
            return;
        }

        foreach ($arrayDati as $key => $value) {
            $this->contenuto = str_replace("[$key]", $value ?? '', $this->contenuto);
        }
    }

    public function render() {
        return $this->contenuto;
    }
}