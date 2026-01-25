# Funzionalità da implementare

## Layout
*Si intende il contorno comune a tutte le pagine: comprende Header, Footer, elementi di contorno e Backend generale.*

### Backend
- [ ] **Gestione del Breadcrumb:** capire la gerarchia delle pagine, non si puo` copiare l'url -> capire come inserire il breadcrumb dinamicamente con il php -> completare funzione sulla classe Helper

> **Facoltativo:**
> - [ ] Aggiungere una barra di ricerca direttamente nell header quando non si e' sulla home.

### Frontend
- [ ] **Link Header:** Capire come gestire i link nell header-> se sono sulla home voglio che si capisca anche dal link (posso ricliccarlo? basta una sottolinatura?)
- [ ] **Icone:** Sistemare icone pulsanti (per DarkMode e TornaSu) e icone link footer
- [ ] **Footer:** Capire cosa inserire nel Footer. Attenzione Copyright!
- [ ] **Meta Tag:** Controllare che ci siano tutti i meta tag nell'head.

> **Facoltativo:**
> - [ ] Aggiungere al pulsante Profilo nell'header l'icona dell'immagine profilo e/o lo username.
> - [ ] All' hover sul pulsante Login, far apparire anche il link alla pagine di registrazione.
> - [ ] Riformulare bene Logo e Nome sito nell'Header.
> - [ ] Aggiungere una barra di ricerca direttamente nell header quando non si e' sulla home che fa redirect su pagina di ricerca.

---

## Home
*Pagina Iniziale di benvenuto, serve ad accogliere l'utente e mostragli lo scopo del sito.*

### Backend
- [ ] **Proposte:** Funzione che ti restituisce le canzoni/artisti da mettere nella home: prende canzoni a caso? aggiungiamo al database una entry per le proposte e l'admin puo cambiarle?
- [ ] **Preferiti:** aggiunta del pulsante preferiti nelle card -> cuoricino toggle aggiunta/rimozione della canzoni alla playlist "Preferiti"
- [ ] **Ricerca:** Implementare la ricerca -> nella home il pulsante di ricerca e solo un redirect alla pagina di ricerca, gli passa come pararmetro GET la parola ricercata.

### Frontend
- [ ] **Card:** Aggiustare le Card: stessa dimensione anche se i testi sono lunghi e vanno a capo.
- [ ] **Pulsante Preferiti:** Aggiungere pulsante preferiti alle Card Canzoni.

> **Facoltativo:**
> - [ ] Aggiungere immagine di deafult per artisti senza immagine
> - [ ] Aggiungere immagine o texture diversa per le card canzoni, forse sono un po' vuote.
> - [ ] Aggiungere link all'artista sulle card Canzoni

---

## Pagina di Ricerca
*Pagine di ricerca generale a cui l'utente fa riferimneto per cercare una canzone: consente una ricerca avanzata.*

### Backend
- [ ] **Ricerca semplice:** Implementare la ricerca semplice canzone/artista con chiamta js a API php.
- [ ] **Suggerimenti:** implementare visualizzazione di contenuti suggeriti per schermata inziale (Artisti suggeriti, Canzoni ecc.)

> **Facoltativo:**
> - [ ] Implementare ricerca avanzata su altri parametri -> richiede aggiunta elementi nel db.

### Frontend
- [ ] **Stile:** Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito.
- [ ] **Barra di ricerca:** Barra di ricerca principale in alto + pulsante invio.
- [ ] **Caroselli:** visualizzazione contenuti iniziali su caroselli.
- [ ] **Lista:** Avviata la ricerca visualizzazione della risposta del db su lista.

> **Facoltativo:**
> - [ ] Risposta del db, divisa per artisti e canzoni.

---

## Pagina Artista
*Pagina del profilo di un artista: visualizza le informazioni (nome, foto, descrizione) e le su canzoni che sono nel db.*

### Frontend
- [ ] **Stile:** Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito.
- [ ] **Carosello:** Visualizzare le canzoni come carosello.
- [ ] **Card:** Card canzoni solita: pulsante di apertura e toggle aggiunta/rimozione preferiti

---

## Pagina Canzone
*Pagina di visualizzazione della canzone: contiene tutte le informazioni relative alla canzone. Si possono eseguire operazioni di: Visualizzazione, Aggiunta/Rimozione da Preferiti, aggiunta rimozione da Playlist. Eviterei una foto per ogni canzone, magari una di deafult o una texture carina.*

### Backend
- [ ] **Playlist:** Visualizzazione lista delle playlist in cui e presente la canzone
- [ ] **API:** Implementare chiamate api per aggiunta/ rimozione a playlist.
- [ ] **Testo:** Visualizzazione del testo della canzone con Accordi -> gestire la formattazione da db a html

> **Facoltativo:**
> - [ ] Visualizzazione canzoni dello stesso autore/ suggerimenti
> - [ ] Aggiungere al db: accordi canzone per categorizzare anche sugli accordi
> - [ ] Aggiungere funzionalita di trasposizione accordi

### Frontend
- [ ] **Stile:** Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito.
- [ ] **Header:** Visualizzare titolo e autore (link) in alto.
- [ ] **Guest:** Se utente non loggato capire cosa fare con i pulsanti -> aggiungere msg di richiesta login (?)
- [ ] **Preferiti:** toggle cuoricino per funzionalita di aggiunta/rimozione da preferiti [se utente loggato].
- [ ] **Menu Playlist:** Pulsante agiunta rimozione da Playlist -> apre una lista di checkbox con tutte le playlist che si possono selezionare[se utente loggato].
- [ ] **Info:** Visualizzazione descrizione e altre info a destra o sotto.

> **Facoltativo:**
> - [ ] Implementare da js pulsante per autoscorrimento semplice.
> - [ ] Aggiungere link a video canzone.
> - [ ] Visualizzazione suggerimenti canzoni.

---

## Login/Register
*Pagine di registrazione dell'utente del database del server, standard.*

### Backend
- [ ] **Controllo Input:** Implementare controllo clientside su input inserito: -> riscontro live se lo username va bene. -> javascript + API php

### Frontend
- [ ] **Stile:** Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito.

---

## Profilo User
*La pagina deve gestire: username (unico per ogni utente -> va sempre fatto il controllo), fotoprofilo (puo scegliere da un set di foto predefinite), preferiti (lista canzoni), playlist (CRUD), eliminazione account.*

### Backend
- [ ] **Foto Profilo:** Aggiungere al db, inidicazioni per fotoprofilo: basta un id che indichi la foto selezionata
- [ ] **Modifica Info:** Implementare modifica Informazioni personali: Username e FotoProfilo -> tramite js e chiamata api php.
- [ ] **Preferiti/Playlist:** Operazioni di visualizzazione preferiti, aggiunta playlist -> implentare con chiamata API php, non redirect su altra pagina. Per la modifica si opera dalla pagina della plyalist (il profilo crea soltanto la playlist)

> **Facoltativo:**
> - [ ] Operazione di creazione playlist -> aggiungere controllo js su nome playlist (capire se vanno bene due playlist con nome uguale)
> - [ ] aggiungere anche qui la possibilita di eliminare la playlist
> - [ ] agiungere operazione di eliminazione account e tutti i dati.

### Frontend
- [ ] **Stile:** Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito.
- [ ] **Sezione Preferiti:** carosello di canzoni come implementato nelle altre sezioni
- [ ] **Sezione Playlist:** carosello di playlist o lista normale. da Valutare.

> **Facoltativo:**
> - [ ] Sulle card delle canzoni preferite aggiungere cuore da deselezionare per rimuovere la canzone dai preferiti. -> da capire su quando si aggiorna la lista pero`.
> - [ ] Sulle card delle playlist aggiungere pulsante per eliminazione playlist
> - [ ] Alert di conferma su eliminazione playlists e/o account.

---

## Playlist
*Pagina che gestisce una singola playlist di un utente: operazioni di visualizzazione, modifica (aggiunta eliminazione canzoni) e elimazione.*

### Backend
- [ ] **Ricerca:** Implementare la ricerca di canzoni da aggiungere (ricerca semplice solo canzoni/artisti).
- [ ] **Gestione Canzoni:** Implementare funzioni js di aggiunta/rimozione canzoni con chiamate API php.
- [ ] **Rimozione:** Verificare la rimozione playlist, o capire se implementarla come js + API php.

### Frontend
- [ ] **Stile:** Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito.
- [ ] **Immagini:** Capire anche per le playlist se vogliamo delle immagini di default.
- [ ] **Pulsante Aggiunta:** pulsante di agginta canzone che apre una barra di ricerca inPage
- [ ] **Ricerca in Page:** tramite carosello o lista? limitare le canzoni visualizzate
- [ ] **Lista Canzoni:** lista verticale -> eviteri il carosello
- [ ] **Card:** Card canzone con pulsante di apertura canzone e rimozione dalla playlist.

---

## Profilo Admin
*Pagina che getisce le operazioni dell'Admin.*
- [ ] gestione accounts: visualizzazione degli account e eliminazione
- [ ] gestione canzoni/artisti: aggiunta, modifica e rimozione artisti e canzoni.
*DA CAPIRE INTERAMENTE COME GESTIRLA*

---

## Pagine di Errore (404, 403, 500)
*Gestiscono la visualizzazione dell'errore.*

### Frontend
- [ ] **Stile:** Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito.
- [ ] **Contenuto:** Utilizzare immgini e testi consoni e comprensibili

---

## IN GENERALE PER TUTTE LE PAGINE

**CODICE:**
- Rimanere coerenti con lo stile dei nomi nel codice
- Seguire la struttura dei file nella directory: ogni file al suo posto

**STILE:**
- Controllare i Colori che seguano lo stile e la Palette utilizzata (occhio anche ai contrasti per l'accesibilita`):
- Impostare lo stile per la visualizzazione Dark (scelta dei colori):
- Impostare lo stile per la visualizzazione da Mobile con le @media query!

**ACCESSIBILITA`:**
- aiuti alla navigazione (nascosti per passare al contenuto)
- tabindex e accesskey per navigazione con tastiera
- aria-label su icone e elementi non testuali
- aria-hidden su elementi visivi non utili al lettore (es. icone link)
- lang="en" per elementi di lingua straniera
- seguire le indicazioni per i colori (controllare sempre)

---

### Note e Suggerimenti
- pensare al titolo/logo
- **Hero Image:** Photo by [Jacek Dylag](https://unsplash.com/@dylu) on Unsplash
- **Messaggi Errore:** Utilizzare gli attributi `data-*` per contenere i messaggi di errore: es
  ```html
  <input type="password" name="pin"
  required="required" aria-required="true"
  data-msg-required="Per favore, inserisci la tua password"
  data-msg-invalid="Formato non corretto" >
  ```
- utilizzare **tabindex** e **accesskey**!
- aggiungere aiuti alla navigazione!
- ridurre dimensioni immagine -> meglio **webp** o **svg** -> https://squoosh.app/
- per le **immagini profilo user** : https://www.svgfind.com/svg/10522978/acoustic-guitar
- per **icone generiche** se vogliamo cambiare: https://phosphoricons.com/