// =============================================================================
//  CONFIGURAZIONE VARIABILI
// =============================================================================
#let titolo-progetto = "EasyGuitar - Accordi accessibili"
#let corso = "TECNOLOGIE WEB"
#let anno-accademico = "2025/2026"
#let universita = "UNIVERSITÀ DEGLI STUDI DI PADOVA"
#let dipartimento = "DIPARTIMENTO DI MATEMATICA"
#let corso-laurea = "LAUREA TRIENNALE IN INFORMATICA"

#let studenti = (
  (nome: "Enrique Hernandez Gris", matricola: "2169844"),
  (nome: "Marco Sanguin", matricola: "2103121"),
  (nome: "Luca Slongo", matricola: "2111009"),
  (nome: "Aldo Bettega", matricola: "2101087"),
)

// =============================================================================
//  IMPOSTAZIONI GLOBALI
// =============================================================================
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  numbering: "1",
  header: context {
    if counter(page).get().first() > 1 {
      align(left, smallcaps(titolo-progetto))
      line(length: 100%, stroke: 0.5pt)
    }
  },
  footer: context {
    if counter(page).get().first() > 1 {
      align(center, counter(page).display("1"))
    }
  }
)

#set text(
  font: "New Computer Modern", // O "Linux Libertine"
  size: 12pt,
  lang: "it"
)

#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

// Stile blocchi codice
#show raw.where(block: true): block.with(
  fill: luma(245),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)

// =============================================================================
//  FRONTESPIZIO (COPERTINA)
// =============================================================================
#align(center + horizon)[
  
  // LOGO (Decommenta se hai il file)
  #image("/Relazione/img/unipd.png", width: 40%)
  #v(1cm)
  
  #text(size: 14pt, smallcaps(universita)) \
  #v(0.5em)
  #text(size: 12pt, smallcaps(dipartimento)) \
  #v(0.5em)
  #text(size: 14pt, weight: "bold", smallcaps(corso-laurea)) \
  
  #v(3em)
  
  #text(size: 12pt, smallcaps(corso))
  
  #v(2em)
  #line(length: 100%, stroke: 1pt)
  #v(0.5em)
  
  // TITOLO GRANDE
  #text(size: 22pt, weight: "bold")[#titolo-progetto]
  
  #v(0.5em)
  #line(length: 100%, stroke: 1pt)
  
  #v(3fr) // Spinge i nomi verso il basso ma non troppo
  
  // GRIGLIA STUDENTI (Layout 2 colonne per 4 persone)
  #text(size: 12pt, weight: "bold")[Componenti del gruppo:]
  #v(1em)
  
  #grid(
    columns: (1fr, 1fr),
    row-gutter: 2em,
    align: center,
    // Generiamo i blocchi per ogni studente
    ..studenti.map(s => [
      #text(weight: "bold")[#s.nome] \
      Matricola: #s.matricola
    ])
  )
  
  #v(2fr)
  
  #text(size: 12pt)[Anno Accademico #anno-accademico]
]

#pagebreak()

// =============================================================================
//  INDICE
// =============================================================================
#show outline.entry: it => {
  v(12pt, weak: true)
  it
}
#outline(title: "Indice", indent: auto)
#pagebreak()

// =============================================================================
//  CONTENUTO RELAZIONE
// =============================================================================

= Introduzione

= Analisi dei Requisiti
== Target di Utenza
== Funzionalità

= Architettura e Progettazione
== Pattern MVC
== Struttura delle Directory
== Database
== Design e UX

= Implementazione Back-End (PHP)
== Routing
== Gestione dei dati
== Autenticazione
== API Interne

= Implementazione Front-End (HTML/CSS/JS)
== Validazione Form
== AJAX e Fetch
== Gestione Modali

= Accessibilità
== Navigazione
== Colori

= Test e Validazione
== Strumenti usati
== Test manuali

= Organizzazione del gruppo
== Suddivisione dei compiti
== Metodologia di lavoro

= Conclusione e sviluppi futuri
== Cosa abbiamo imparato
== Possibili miglioramenti