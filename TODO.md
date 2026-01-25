Funzionalità da implementare:

Layout:
  Si intende il contorno comune a tutte le pagine: comprende Header, Footer, elementi di contorno e Backend generale. 
	Backend:
	1. Gestione del Breadcrumb -> capire la gerarchia delle pagine, non si puo` copiare l'url -> capire come inserire il breadcrumb dinamicamente con il php -> completare funzione sulla classe Helper 
	Facoltativo:
	2. Aggiungere una barra di ricerca direttamente nell header quando non si e' sulla home.
  
	Frontend:
  1. Capire come gestire i link nell header-> se sono sulla home voglio che si capisca anche dal link (posso ricliccarlo? basta una sottolinatura?)
	2. Sistemare icone pulsanti (per DarkMode e TornaSu) e icone link footer
	3. Capire cosa inserire nel Footer. Attenzione Copyright!
  4. Controllare che ci siano tutti i meta tag nell'head.
	Facoltativo:
  5. Aggiungere al pulsante Profilo nell'header l'icona dell'immagine profilo e/o lo username.
	6. All' hover sul pulsante Login, far apparire anche il link alla pagine di registrazione. 
	7. Riformulare bene Logo e Nome sito nell'Header.
	8. Aggiungere una barra di ricerca direttamente nell header quando non si e' sulla home che fa redirect su pagina di ricerca.

  ---
 
Home:
  Pagina Iniziale di benvenuto, serve ad accogliere l'utente e mostragli lo scopo del sito.
  Backend:
    1. Funzione che ti restituisce le canzoni/artisti da mettere nella home: prende canzoni a caso? aggiungiamo al database una entry per le proposte e l'admin puo cambiarle?
    2. aggiunta del pulsante preferiti nelle card -> cuoricino toggle aggiunta/rimozione della canzoni alla playlist "Preferiti"
    3. Implementare la ricerca -> nella home il pulsante di ricerca e solo un redirect alla pagina di ricerca, gli passa come pararmetro GET la parola ricercata.
  Frontend:
    1. Aggiustare le Card: stessa dimensione anche se i testi sono lunghi e vanno a capo.
    2. Aggiungere pulsante preferiti alle Card Canzoni.
    Facoltativo:
    3. Aggiungere immagine di deafult per artisti senza immagine
    4. Aggiungere immagine o texture diversa per le card canzoni, forse sono un po' vuote.
    5. Aggiungere link all'artista sulle card Canzoni

    ---

Pagina di Ricerca:
  Pagine di ricerca generale a cui l'utente fa riferimneto per cercare una canzone: consente una ricerca avanzata.
  Backend:
    1. Implementare la ricerca semplice canzone/artista con chiamta js a API php. 
    2. implementare visualizzazione di contenuti suggeriti per schermata inziale (Artisti suggeriti, Canzoni ecc.)
    Facoltativo:
    1. Implementare ricerca avanzata su altri parametri -> richiede aggiunta elementi nel db.
  Frontend:
    1. Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito. 
    2. Barra di ricerca principale in alto + pulsante invio.
    3. visualizzazione contenuti iniziali su caroselli.
    4. Avviata la ricerca visualizzazione della risposta del db su lista.
    Facoltativo:
    5. Risposta del db, divisa per artisti e canzoni.

    ---

Pagina Artista:
  Pagina del profilo di un artista: visualizza le informazioni (nome, foto, descrizione) e le su canzoni che sono nel db.
  Backend: 
    -
  Frontend:
    1. Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito. 
    2. Visualizzare le canzoni come carosello.
    3. Card canzoni solita: pulsante di apertura e toggle aggiunta/rimozione preferiti

---

Pagina Canzone:
  Pagina di visualizzazione della canzone: contiene tutte le informazioni relative alla canzone.
  Si possono eseguire operazioni di: Visualizzazione, Aggiunta/Rimozione da Preferiti, aggiunta rimozione da Playlist. 
  Eviterei una foto per ogni canzone, magari una di deafult o una texture carina.
  Backend:
    1. Visualizzazione lista delle playlist in cui e presente la canzone
    2. Implementare chiamate api per aggiunta/ rimozione a playlist.
    3. Visualizzazione del testo della canzone con Accordi -> gestire la formattazione da db a html
    Facoltativo:
    4. Visualizzazione canzoni dello stesso autore/ suggerimenti
    5. Aggiungere al db: accordi canzone per categorizzare anche sugli accordi
    6. Aggiungere funzionalita di trasposizione accordi 

  Frontend:
    1. Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito.
    2. Visualizzare titolo e autore (link) in alto.
    3.Se utente non loggato capire cosa fare con i pulsanti -> aggiungere msg di richiesta login (?)
    4. toggle cuoricino per funzionalita di aggiunta/rimozione da preferiti [se utente loggato].
    5. Pulsante agiunta rimozione da Playlist -> apre una lista di checkbox con tutte le playlist che si possono selezionare[se utente loggato].
    6. Visualizzazione descrizione e altre info a destra o sotto. 
    Facoltativo:
    7. Implementare da js pulsante per autoscorrimento semplice.
    8. Aggiungere link a video canzone.
    9. Visualizzazione suggerimenti canzoni.



    
---


Login/Register:
  Pagine di registrazione dell'utente del database del server, standard.
  Backend:
    1. Implementare controllo clientside su input inserito: -> riscontro live se lo username va bene. -> javascript + API php

  Frontend:
    1. Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito. 

    ---

Profilo User:
  la pagina deve gestire: 
    - username: unico per ogni utente -> va sempre fatto il controllo
    - fotoprofilo: puo scegliere da un set di foto predefinite (da scegliere, possibilmente che rappresentino chitarre diverse possibilmente colorate: un idea: icone chitarre [https://www.svgfind.com/svg/10522978/acoustic-guitar])
    - preferiti: lista di canzoni che ci piacciono: lato backend viene gestita come una normale playlist (non si puo rimuovere)
    - playlist: operazioni CRUD: creazione, viualizzazione, modifica, eliminazione.
    - eliminazione account

  Backend: 
    1. Aggiungere al db, inidicazioni per fotoprofilo: basta un id che indichi la foto selezionata
    2. Implementare modifica Informazioni personali: Username e FotoProfilo -> tramite js e chiamata api php.
    3. Operazioni di visualizzazione preferiti, aggiunta playlist -> implentare con chiamata API php, non redirect su altra pagina. Per la modifica si opera dalla pagina della plyalist (il profilo crea soltanto la playlist)
    Facoltativo:
    4. Operazione di creazione playlist -> aggiungere controllo js su nome playlist (capire se vanno bene due playlist con nome uguale)
    5. aggiungere anche qui la possibilita di eliminare la playlist
    6. agiungere operazione di eliminazione account e tutti i dati.

  Frontend:
    1. Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito. 
    2. sezione Preferiti: carosello di canzoni come implementato nelle altre sezioni
    3. sezione Playlist: carosello di playlist o lista normale. da Valutare.
    Facoltativo:
    1. Sulle card delle canzoni preferite aggiungere cuore da deselezionare per rimuovere la canzone dai preferiti. -> da capire su quando si aggiorna la lista pero`.
    2. Sulle card delle playlist aggiungere pulsante per eliminazione playlist
    3. Alert di conferma su eliminazione playlists e/o account.

    ---

Playlist:
  pagina che gestisce una singola playlist di un utente: operazioni di visualizzazione, modifica (aggiunta eliminazione canzoni) e elimazione. playlist
  Backend:
    1. Implementare la ricerca di canzoni da aggiungere (ricerca semplice solo canzoni/artisti).
    2. Implementare funzioni js di aggiunta/rimozione canzoni con chiamate API php.
    3. Verificare la rimozione playlist, o capire se implementarla come js + API php.
  Frontend:
    1. Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito. 
    2. Capire anche per le playlist se vogliamo delle immagini di default.
    3. pulsante di agginta canzone che apre una barra di ricerca inPage
    4. Ricerca in Page, tramite carosello o lista? limitare le canzoni visualizzate
    5. Lista canzoni verticale -> eviteri il carosello
    6. Card canzone con pulsante di apertura canzone e rimozione dalla playlist.


Profilo Admin:
  Pagina che getisce le operazioni dell'Admin:
    -gestione accounts: visualizzazione degli account e eliminazione
    -gestione canzoni/artisti: aggiunta, modifica e rimozione artisti e canzoni.
DA CAPIRE INTERAMENTE COME GESTIRLA

Pagine di Errore (404, 403, 500):
  gestiscono la visualizzazione dell'errore.
  Fronend:
  1. Impostare lo stile generale della pagina -> seguire le convenzioni e lo stile generale del sito. 
  2. Utilizzare immgini e testi consoni e comprensibili


IN GENERALE PER TUTTE LE PAGINE:
  CODICE:
  - Rimanere coerenti con lo stile dei nomi nel codice
  - Seguire la struttura dei file nella directory: ogni file al suo posto

  STILE:
  - Controllare i Colori che seguano lo stile e la Palette utilizzata (occhio anche ai contrasti per l'accesibilita`):
  - Impostare lo stile per la visualizzazione Dark (scelta dei colori):
  - Impostare lo stile per la visualizzazione da Mobile con le @media query!
  
  ACCESSIBILITA`:
  - aiuti alla navigazione (nascosti per passare al contenuto)
  - tabindex e accesskey per navigazione con tastiera
  - aria-label su icone e elementi non testuali
  - aria-hidden su elementi visivi non utili al lettore (es. icone link)
  - lang="en" per elementi di lingua straniera
  - seguire le indicazioni per i colori (controllare sempre)
  

per le immagini profilo user : https://www.svgfind.com/svg/10522978/acoustic-guitar
per icone generiche se vogliamo cambiare: https://phosphoricons.com/

Note e Suggerimenti:
- pensare al titolo/logo
- for the hero image: Photo by <a href="https://unsplash.com/@dylu?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Jacek Dylag</a> on <a href="https://unsplash.com/photos/photo-of-brown-gutiar-fret-ZHr2TzM1-hk?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
      
 -Utilizzare gli attributi data-* per contenere i messaggi di errore: es
'''<input type="password" name="pin"
required="required" aria-required="true"
data-msg-required="Per favore, inserisci la tua
password"
data-msg-invalid="Formato non corretto" >
'''
- utilizzare tabindex e accesskey!
- aggiungere aiuti alla navigazione!
- ridurre dimensioni immagine -> meglio webp o svg -> https://squoosh.app/
- per le immagini profilo user : https://www.svgfind.com/svg/10522978/acoustic-guitar
- per icone generiche se vogliamo cambiare: https://phosphoricons.com/
