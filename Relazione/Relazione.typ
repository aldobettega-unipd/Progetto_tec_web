// =============================================================================
//  CONFIGURAZIONE VARIABILI
// =============================================================================
#let titolo-progetto = "EasyGuitar - Accordi accessibili"
#let corso = "TECNOLOGIE WEB"
#let anno-accademico = "2025/2026"
#let universita = "UNIVERSITÀ DEGLI STUDI DI PADOVA"
#let dipartimento = "DIPARTIMENTO DI MATEMATICA"
#let corso-laurea = "LAUREA TRIENNALE IN INFORMATICA"

// (La variabile studenti è stata rimossa dal frontespizio ma la lasciamo qui se servisse altrove)
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
  },
)

#set text(
  font: "New Computer Modern", // O "Linux Libertine"
  size: 12pt,
  lang: "it",
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

  // LOGO
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

  #v(3fr) 

  // --- SEZIONE CREDENZIALI E CONTATTI (SOSTITUISCE IL GRUPPO) ---
  #text(size: 12pt, weight: "bold")[Informazioni di Accesso e Contatto:]
  #v(1em)

  #align(center)[
    #grid(
      columns: (auto, auto),
      align: (right + horizon, left + horizon), // Allinea etichette a dx e valori a sx
      column-gutter: 1.5em,
      row-gutter: 1em,

      [*Utente Amministratore:*], [username: `admin`, password: `admin`],
      [*Utente Base:*],           [username: `user`,  password: `user`],
      [*Indirizzo Sito:*],        [#link("http://localhost:8000")[http://tecweb.studenti.math.unipd.it/msanguin]],
      [*Referente:*],             [#link("mailto:aldo.bettega@studenti.unipd.it")[aldo.bettega\@studenti.unipd.it]]
    )
  ]
  // ---------------------------------------------------------------

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

Nel vasto panorama del web, la ricerca di risorse musicali — in particolare raccolte di testi e accordi per chitarra — è paradossalmente diventata un'esperienza spiacevole e poco accessibile. Le piattaforme esistenti, pur essendo ricche di contenuti, sono spesso caratterizzate da interfacce obsolete, sature di pubblicità invasiva, pop-up aggressivi e una scarsa attenzione alla leggibilità, rendendo la pratica strumentale davanti allo schermo un'operazione faticosa.

Da questa analisi critica nasce l'idea di *EasyGuitar*: un progetto sviluppato con l'intento preciso di offrire una valida alternativa, accessibile e tecnicamente curata, alle raccolte commerciali attuali.

L'obiettivo primario è stato quello di riportare al centro l'esperienza dell'utente musicista. EasyGuitar è stato concepito non come un semplice archivio dati, ma come uno strumento pensato per chi suona: un "leggio digitale" pulito, immediato e privo di distrazioni.

Il sito si propone di rendere la pratica musicale non solo possibile, ma piacevole e inclusiva. Ogni scelta progettuale — dal contrasto cromatico ottimizzato per la lettura (con supporto alla Dark Mode per le esibizioni in ambienti poco illuminati) alla navigazione semplificata per l'uso con tecnologie assistive — è stata guidata dalla volontà di abbattere le barriere digitali.

Sviluppato nell'ambito del corso di Tecnologie Web, EasyGuitar dimostra come l'applicazione rigorosa degli standard di accessibilità (WCAG) e una solida architettura tecnica possano convivere per creare un prodotto che risponde alle reali necessità di un appassionato di musica.

= Analisi dei Requisiti

== Overview

L’analisi dei requisiti è stata condotta attraverso un confronto diretto con Marco Sanguin, componente del gruppo e ideatore del sito, nonchè appassionato chitarrista. Grazie alla sua esperienza personale come musicista, è emersa l’importanza di progettare una pagina dedicata alle canzoni che fosse pulita, chiara e piacevole alla vista. In particolare, sono stati individuati come requisiti fondamentali la presenza di un sistema di autoscroll regolabile e una modalità di visualizzazione degli accordi pensata per rispondere alle reali esigenze di un musicista durante l’esecuzione.

== Analisi dell'Utenza (Target)
L'analisi ha identificato come target primario non il neofita alla ricerca di tutorial didattici, bensì il *chitarrista appassionato* e competente. Questo profilo di utenza possiede già le competenze tecniche per l'esecuzione e considera il sito web come un supporto strumentale (un "leggio digitale") piuttosto che educativo.

Le necessità fondamentali di questo utente sono:

- *Immediatezza ("Suonare subito"):* L'utente desidera ridurre al minimo il tempo che intercorre tra il pensiero di una canzone e la sua esecuzione. La struttura del sito deve abbattere i tempi di caricamento e navigazione.
- *Interfaccia "Smart":* La pagina deve essere intuitiva e priva di distrazioni cognitive. La navigazione deve fluire naturale, permettendo di trovare testi e accordi velocemente, anche durante una sessione di pratica o una performance informale.

In sintesi, EasyGuitar risponde all'esigenza di un utente che vuole concentrarsi sulla musica e non sulla tecnologia che la veicola.

== Dettaglio delle Funzionalità

Di seguito viene riportata la disamina delle funzionalità implementate, suddivise per tipologia di attore che interagisce con il sistema.

=== Funzionalità del Visitatore (Accesso Pubblico)
Il sistema garantisce l'accesso immediato al catalogo anche agli utenti non autenticati. Questa scelta elimina le barriere all'ingresso, permettendo la consultazione rapida delle risorse musicali senza obbligo di registrazione.

+ *Consultazione del Catalogo*
  - *Indice Artisti:* Elenco completo e ordinato alfabeticamente di tutti gli interpreti censiti in piattaforma.
  - *Scheda Artista:* Pagina di dettaglio monografica (raggiungibile da Home, Ricerca o Indice) che aggrega la biografia dell'autore e presenta il carosello interattivo di tutti i brani correlati disponibili.
  - *Indice Canzoni:* Repertorio completo dei brani ordinati alfabeticamente, che funge da punto di accesso diretto alle pagine di esecuzione.
+ *Esperienza di Esecuzione (Player)*
  - *Visualizzazione Ottimizzata:* Layout responsive studiato per garantire la massima leggibilità di testi e accordi su qualsiasi dispositivo (Desktop/Mobile), con supporto nativo alla Dark Mode per performance in ambienti scarsamente illuminati.
  - *Autoscroll Adattivo:* Funzionalità di scorrimento automatico della pagina, con velocità regolabile millimetricamente dall'utente, progettata per consentire l'esecuzione strumentale senza la necessità di staccare le mani dallo strumento per scorrere la pagina.

+ *Ricerca Avanzata*
  - *Interfaccia a Tab:* Suddivisione logica dei risultati tra "Artisti" e "Canzoni" per disambiguare rapidamente l'intento di ricerca e migliorare l'usabilità.
  - *Filtri per Competenza:* Sistema di filtraggio avanzato per Lingua e Accordi. In particolare, il filtro accordi permette all'utente di selezionare il proprio bagaglio di conoscenze (es. "Conosco solo DO, RE, SOL") e ottenere come risultato solo i brani eseguibili con quel set specifico, configurandosi come un potente strumento didattico.

+ *Strumenti di Navigazione*
  - *Global Navigation Bar:* Menu principale situato nell'header, persistente e responsive, che evidenzia visivamente la sezione corrente.
  - *Breadcrumb Dinamica:* Elemento di orientamento gerarchico che permette all'utente di comprendere la propria posizione nella struttura del sito e risalire facilmente ai livelli superiori.
  - *Footer:* Area di navigazione secondaria contenente collegamenti rapidi alle sezioni di servizio e link di utilità.


=== Funzionalità dell'Utente Registrato
L'utente registrato eredita tutte le funzionalità pubbliche e accede a strumenti di gestione personale. Questo profilo permette di salvare e organizzare i contenuti, trasformando la semplice consultazione in un'esperienza di studio personalizzata.

+ *Accesso e Personalizzazione*
  - *Autenticazione:* Sistema di registrazione e login sicuro tramite credenziali personali.
  - *Gestione Profilo:* Personalizzazione dell'identità utente tramite selezione dell'avatar da un set predefinito di immagini tematiche.
  - *Gestione Raccolte:* Creazione, modifica ed eliminazione di playlist personalizzate per organizzare le sessioni di studio o le scalette.

+ *Operatività sulle Playlist*
  - *Consultazione:* Pagina dedicata per la visualizzazione e l'ordinamento dei brani contenuti nelle playlist.
  - *Aggiunta Rapida:* Implementazione di un modale di ricerca interno alla pagina playlist che permette l'aggiunta immediata di nuovi contenuti tramite query testuale, senza ricaricare la pagina (AJAX).
  - *Editing:* Rimozione intuitiva e immediata dei brani dalle liste.

+ *Sistema dei Preferiti*
  - *Playlist Persistente:* Una raccolta speciale di sistema, non eliminabile, dedicata all'archiviazione rapida dei brani di maggiore interesse.
  - *Accessibilità Trasversale:* L'azione di aggiunta/rimozione dai preferiti (icona "cuore") è disponibile in ogni punto dell'interfaccia: dalle card di anteprima (Home, Risultati di ricerca) alla pagina di dettaglio della singola canzone.


=== Funzionalità Amministratore (Back-office)
L'amministratore è la figura garante della qualità e dell'integrità dei contenuti della piattaforma. A differenza dell'utente standard, dispone di un accesso privilegiato a una *Dashboard Gestionale* che centralizza le operazioni di manutenzione.

+ *Gestione del Catalogo (CRUD)*
  L'amministratore ha pieno controllo sulle entità Artista e Canzone attraverso operazioni di Create, Read, Update e Delete:
  - *Cura degli Artisti:* Possibilità di inserire nuovi interpreti o aggiornare le biografie e i dettagli di quelli esistenti tramite form validati lato server.
  - *Editing dei Brani:* Interfaccia avanzata per l'inserimento e la modifica di testi e accordi. Il form di creazione è progettato per strutturare i dati in modo che siano correttamente interpretabili dal player (es. riconoscimento automatico degli accordi).
  - *Manutenzione:* Rimozione immediata di contenuti errati o non conformi agli standard qualitativi della piattaforma.

+ *Moderazione dell'Utenza*
  - *Monitoraggio:* Visualizzazione tabellare della lista completa degli iscritti alla piattaforma.
  - *Revoca Accesso:* Funzionalità di eliminazione degli account utente.


= Architettura e Progettazione

L'architettura del sistema è stata definita con l'obiettivo di garantire modularità, manutenibilità e sicurezza. Questa decisione didattica ha permesso di avere il pieno controllo sul ciclo di vita della richiesta HTTP e di implementare manualmente i pattern architetturali fondamentali.

== Pattern MVC (Model-View-Controller)
Il cuore dell'applicazione è basato sul pattern architetturale MVC, che garantisce la netta separazione delle responsabilità:

- *Model (Modello):* Gestisce la logica di business e l'interazione con il database. Ogni entità (es. `Utente`, `Canzone`, `Artista`, `Playlist`) possiede una classe dedicata che astrae le operazioni SQL, restituendo oggetti o array di dati pronti per l'elaborazione.
- *View (Vista):* Si occupa esclusivamente della logica di presentazione. I file di vista ricevono i dati dal Controller e generano l'HTML finale da inviare al client. Non contengono logica di accesso ai dati, garantendo pulizia nel codice di frontend.
- *Controller:* Agisce da intermediario. Riceve l'input dell'utente (tramite il Router), invoca i metodi del Model per recuperare o modificare i dati e seleziona la View appropriata per la risposta, costruendola adeguatamente tramite dei placeholder.

Un componente fondamentale di questa architettura è il *Router Custom*. Invece di mappare ogni pagina a un singolo file PHP (es. `playlist.php`), tutte le richieste vengono convogliate a un unico *entry point* (`index.php`) che analizza l'URL, instanzia il Controller corretto ed esegue l'azione richiesta. Questo permette di avere URL "parlanti" (es. `/artista/nome-artista`) e una gestione centralizzata degli errori (404).

== Struttura delle Directory
La struttura del progetto riflette la separazione logica del pattern MVC, mantenendo isolato il codice sorgente (`src`) dalle risorse accessibili pubblicamente (`public`).

#block(
  fill: luma(245),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
  [
    ```text
├── public
│   ├── css
│   ├── img
│   ├── index.php
│   └── js
└── src
    ├── Controllers
    │   ├── Api
    │   └── Base
    ├── Core
    ├── Exceptions
    ├── Helpers
    ├── Models
    └── Views
        ├── components
        ├── layouts
        └── pages 

    ```
  ]
)

== Database
La persistenza dei dati è gestita tramite **MySQL**, configurato con il charset `utf8mb4` per garantire il pieno supporto ai caratteri internazionali e speciali, essenziali in un catalogo musicale multilingua.

Lo schema è stato progettato per ottimizzare le relazioni e la navigazione:

- *Gestione Utenti (`utente`):* I ruoli sono definiti tramite un flag booleano `is_admin` (0 per utenti, 1 per amministratori). La sicurezza è garantita dal campo `hash_password` e la personalizzazione avviene tramite `foto_profilo` (riferimento a un set predefinito di avatar).
- *Contenuti e Routing (`artista`, `canzone`):* Entrambe le tabelle includono un campo `slug` (`slug_artista`, `slug_canzone`) utilizzato per generare URL leggibili ("SEO-friendly") e puliti, gestiti dal Router custom. La relazione tra canzoni e artisti prevede vincoli di integrità referenziale (`ON DELETE CASCADE`).
- *Relazioni Molti-a-Molti:*
  - *Playlist (`canzoni_playlist`):* Tabella di giunzione che collega `playlist` e `canzone`, permettendo a una canzone di appartenere a più raccolte e viceversa.
  - *Filtri Accordi (`accordi_canzone`):* Gli accordi non sono salvati come semplice testo nella canzone, ma normalizzati in questa tabella. Ciò consente di eseguire query complesse per filtrare i brani in base agli accordi specifici che l'utente sa suonare.

Di seguito viene mostrato lo schema relazionale del database:
  #image("/Relazione/img/schema_db.jpeg", width: 100%)


== Design e UX (User Experience)
Il design dell'interfaccia è stato guidato dal principio *"Mobile First"*, considerando che il caso d'uso tipico prevede l'utente con lo strumento in braccio e il dispositivo (spesso smartphone o tablet) posizionato su un leggio o sulle gambe.

- *Dark Mode Funzionale:* La modalità scura non è solo una scelta estetica, ma un requisito funzionale per ridurre l'affaticamento visivo e il consumo energetico durante sessioni prolungate. La preferenza viene salvata nel `LocalStorage` del browser per garantire la persistenza tra le visite.
- *Feedback Immediato:* Ogni azione critica (aggiunta ai preferiti, eliminazione playlist) è accompagnata da feedback visivi (toast notification o cambio di stato delle icone) e semantici (aggiornamenti ARIA) per confermare l'avvenuta operazione senza interrompere il flusso di navigazione.
- *Performance Percepita:* L'uso di chiamate asincrone (AJAX) per la ricerca nei modali evita il ricaricamento completo della pagina, mantenendo l'interfaccia reattiva e "app-like".

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
