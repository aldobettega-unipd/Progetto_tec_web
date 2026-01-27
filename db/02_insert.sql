SET NAMES 'utf8mb4';

INSERT INTO 
    utente (username, hash_password, is_admin)
VALUES  
    ('user', '$2y$10$uTaqNIQT9daDazTcWp3OxO0Id2UBScdueolLEZ//vKVx48sU7jxWG', 0),
    ('admin', '$2y$10$sBFFBR7FIDX/CfZi1rwAP.vP8BZXVU3yyT1c.j6so1xgDQgQ.Nl8q', 1);

INSERT INTO
    artista (nome_artista, descrizione_artista, slug_artista)
VALUES
    (
        "Zucchero",
        "Zucchero Fornaciari uno dei pi importanti cantautori italiani. Ha unito blues, rock e soul alla tradizione melodica italiana, creando uno stile riconoscibile. Artista internazionale, ha collaborato con grandi musicisti e portato la musica italiana sui palchi di tutto il mondo con successo, passione e una voce inconfondibile potente elegante",
        "zucchero"
    ),
    (
        "Red Hot Chili Peppers",
        "I Red Hot Chili Peppers sono leggende indiscusse del funk-rock californiano. Nati a Los Angeles, fondono l'energia del punk con groove funky e melodie alternative. Guidati dal carisma di Anthony Kiedis e dal basso virtuoso di Flea, hanno segnato la storia della musica con album iconici come Blood Sugar Sex Magik e Californication",
        "red_hot_chili_peppers"
    ),
    (
        "Linkin Park",
        "I Linkin Park sono una band rock statunitense nata negli anni Novanta, famosa per aver unito rock, rap ed elettronica. Con album come Hybrid Theory e Meteora hanno segnato una generazione. La loro musica affronta emozioni profonde, conflitti interiori e cambiamento",
        "linkin_park"
    ),
      (
        "Guns N' Roses",
        "I Guns N' Roses sono un gruppo hard rock statunitense formatosi a Hollywood , Los Angeles , nella zona di Sunset Strip , nel 1985. Fu fondato dal cantante e pianista Axl Rose e dal chitarrista Izzy Stradlin. I Guns N' Roses sono una delle rock band di maggior successo di tutti i tempi, con oltre cento milioni di dischi venduti. Sono considerati un'icona musicale mondiale e sono stati inseriti nella prestigiosa Rock and Roll Hall of Fame . Inoltre, la band è uno degli artisti più premiati, influenti e di impatto globale fino ad oggi. I Guns N' Roses sono anche considerati da molti una delle band più influenti della storia grazie alla loro immensa eredità musicale.",
        "guns_nroses"
    ),
      (
        "Oasis",
        "Gli Oasis sono un gruppo rock inglese formatosi a Manchester nel 1991. In precedenza , nel 1990, erano conosciuti come The Rain . Il gruppo era composto dal cantante Chris Hutton , dal chitarrista Paul Arthurs , dal bassista Paul McGuigan e dal batterista Tony McCarroll , a cui si unì poi nel 1991 Liam Gallagher alla voce. L'ultimo a unirsi al gruppo fu il fratello maggiore di Liam, Noel Gallagher (su richiesta del fratello), che assunse i ruoli di autore principale delle canzoni , chitarrista solista, frontman e corista.",
        "oasis"
    ),  
    (
        "Led Zeppelin",
        "I Led Zeppelin sono stati un gruppo rock britannico formato a Londra nel 1968 dal chitarrista Jimmy Page , ex membro degli Yardbirds . La band era composta da Jimmy Page alla chitarra, John Paul Jones al basso e alle tastiere, il cantante Robert Plant e John Bonham alla batteria. Sono considerati una delle band più importanti e influenti degli anni '70 e nella storia del rock.",
        "led_zeppelin"
    ),
     (
        "Metallica",
        "I Metallica sono un gruppo heavy metal statunitense formatosi nel 1981 a Los Angeles , sebbene abbia avuto sede a San Francisco per la maggior parte della sua carriera.È composto dal cantante e chitarrista ritmico James Hetfield , dal batterista Lars Ulrich , dal chitarrista solista Kirk Hammett e dal bassista Robert Trujillo . I Metallica sono considerati una delle band di maggior successo commerciale di tutti i tempi , avendo venduto oltre 125 milioni di album in tutto il mondo.",
        "metallica"
    ),
    (
        "Extremoduro",
        "Gli Extremoduro sono stati un gruppo rock spagnolo fondato da Roberto Iniesta nella città di Plasencia, in Estremadura , nel 1987 e rimasto attivo fino al suo scioglimento nel dicembre 2019.

        Loro stessi definirono il loro stile come rock trasgressivo , basato su uno stile hard rock aggressivo con testi espliciti che trattano temi terreni e marginali, come sesso, droga e amore, in contrasto con frequenti allusioni poetiche. Col tempo, la poesia arrivò a predominare ancora di più nei testi, mentre la composizione musicale divenne sempre più complessa strumentalmente.",
        "extremoduro"
    ),
    (
        "Aerosmith",
        "Gli Aerosmith sono un gruppo rock statunitense formatosi a Boston nel 1970. Sono composti da Steven Tyler (voce), Joe Perry (chitarra), Tom Hamilton (basso), Joey Kramer (batteria) e Brad Whitford (chitarra). 
        Conosciuti anche come The Bad Boys from Boston o Toxic Twins - un soprannome dato ai suoi due leader a causa della loro storia di tossicodipendenza - il loro suono ritmico aggressivo ha radici nel blues e ha contribuito a stabilire il suono dell'hard rock e del pop rock tra il 1981 e il 1990.",
        "aerosmith"
    );
    

INSERT INTO canzone (titolo_canzone, autore_canzone, testo_canzone, slug_canzone)
VALUES (
    "Un diavolo in me",
    "Zucchero",
    "I've got a devil in [MI7]me  [LA7]     [MI7]    [LA7]    

[MI7]    [LA7]     [MI7]    [LA7]    
[MI7]Gloria nell'[LA7]alto dei[MI7] cieli [LA7]    
[MI7]  ma non c'è [LA7]pace quag[MI7]giù    [LA7]    
[MI7]non ho bi[LA7]sogno di [MI7]veli   [LA7]    
[MI7]  sei già un [LA7]angelo [MI7]tu  

che accendi un [LA7]Diavolo in [MI7]me    [LA7]    
[MI7]  accendi un [LA7]Diavolo in [MI7]me    [LA7]    
[MI7]  perché c'è un [LA7]Diavolo in [MI7]me    [LA7]baby 
[MI7]  forse c'è un [LA7]Diavolo in [MI7]me!   [LA7]    

[MI7]Le strade [LA7]delle si[MI7]gnore [LA7]    
[MI7]  sono infi[LA7]nite lo [MI7]sai   [LA7]    
[MI7]anch'io ti [LA7]sono nel [MI7]cuore [LA7]    
[MI7]  e allora [LA7]cosa mi [MI7]fai 

accendi un [LA7]Diavolo in [MI7]me    [LA7]    
[MI7]  accendi un [LA7]Diavolo in [MI7]me    [LA7]    
[MI7]  perché c'è un [LA7]Diavolo in [MI7]me    [LA7]baby 
[MI7]  forse c'è un [LA7]Diavolo in [MI7]me!   [LA7]    

[MI7]T-R, saluta i tuoi   [LA7]O-U, e bacia i miei 
[MI7]B-L, che sensazione   [LA7]E... 
[MI7]T-R, spengo cicche   [LA7]O-U, tu accendi me 
[MI7]B-L-E, che confusione,   [LA7]I've got the Devil in me! 

[MI7]Dai che non [LA7]siamo dei [MI7]santi [LA7]    
[MI7]  le tenta[LA7]zioni del [MI7]suolo [LA7]    
[MI7]sono [LA7]cose pic[MI7]canti [LA7]    
[MI7]  belle da [LA7]prendere al [MI7]volo  [LA7]    

accendi un[LA7] Diavolo in[MI7] me   [LA7]    
[MI7]  accendi un [LA7]Diavolo in [MI7]me    [LA7]    
[MI7]  perché c'è un [LA7]Diavolo in [MI7]me    [LA7]baby 
[MI7]  forse c'è un [LA7]Diavolo in [MI7]me!   [LA7]    
Bridge:
MI   RE
[MI]     [RE]   
[MI7]T-R      [LA7]O-U 
[MI7]B-L      [LA7]E... 
[MI7]T-R      [LA7]O-U 
[MI7]B-L-E    [LA7]I've got the Devil in me! 

[MI7]Gloria nell'[LA7]alto dei[MI7] cieli [LA7]    
[MI7]  ma non c'è [LA7]pace quag[MI7]giù    [LA7]    
[MI7]è una ques[LA7]tione di [MI7]peli   [LA7]    
[MI7]  sei già un [LA7]angelo [MI7]tu  

che accendi un [LA7]Diavolo in [MI7]me    [LA7]    
[MI7]  accendi un [LA7]Diavolo in [MI7]me    [LA7]    
[MI7]  perché c'è un [LA7]Diavolo in [MI7]me    [LA7]baby 
[MI7]  forse c'è un [LA7]Diavolo in [MI7]me!   [LA7]    
Fine:
MI   RE
[MI]     [RE]",
    "un-diavolo-in-me"
),
    (
        "Can't stop",
        "Red Hot Chili Peppers",
        "Can't stop, addicted to the shindig Chop Top, he says I'm gonna win big Choose not a life of imitation Distant cousin to the reservation Defunkt, the pistol that you pay for This punk, the feelin' that you stay for In time, I want to be your best friend East Side love is living on the West End Knocked out, but boy, you better come to Don't die, you know, the truth is some do Go write your message on the pavement Burn so bright, I wonder what the wave meant White heat is screamin' in the jungle Complete the motion if you stumble Go ask the dust for any answers Come back strong with fifty belly dancers The world I love, the tears I drop To be part of the wave, can't stop Ever wonder if it's all for you? The world I love, the trains I hop To be part of the wave, can't stop Come and tell me when it's time to Sweetheart is bleeding in the snow cone So smart, she's leading me to ozone Music, the great communicator Use two sticks to make it in the nature I'll get you into penetration The gender of a generation The birth of every other nation Worth your weight, the gold of meditation This chapter's gonna be a close one Smoke rings, I know you're gonna blow one All on a spaceship, persevering Use my hands for everything but steering Can't stop the spirits when they need you Mop tops are happy when they feed you J. Butterfly is in the treetop Birds that blow the meaning into bebop The world I love, the tears I drop To be part of the wave, can't stop Ever wonder if it's all for you? The world I love, the trains I hop To be part of the wave, can't stop Come and tell me when it's time to Wait a minute, I'm passin' out, win or lose Just like you Far more shocking than anything I ever knew How about you? Ten more reasons why I need somebody new Just like you Far more shocking than anything I ever knew Right on cue Can't stop, addicted to the shindig Chop Top, he says I'm gonna win big Choose not a life of imitation Distant cousin to the reservation Defunkt, the pistol that you pay for This punk, the feelin' that you stay for In time, I want to be your best friend East Side love is living on the West End Knocked out, but boy, you better come to Don't die, you know, the truth is some do Go write your message on the pavement Burn so bright, I wonder what the wave meant Kick-start the golden generator Sweet talk but don't intimidate her Can't stop the gods from engineering Feel no need for any interfering Your image in the dictionary This life is more than ordinary Can I get two, maybe even three of these? Comin' from space to teach you of the Pleiades Can't stop the spirits when they need you This life is more than just a read-through",
        "cant_stop"   
    ),
    (
        "In the end",
        "Linkin Park",
        "It starts with one One thing, I don't know why It doesn't even matter how hard you try Keep that in mind, I designed this rhyme to explain in due time All I know time is a valuable thing Watch it fly by as the pendulum swings Watch it count down to the end of the day, the clock ticks life away It's so unreal, didn't look out below Watch the time go right out the window Tryna hold on, d-didn't even know I wasted it all just to watch you go I kept everything inside And even though I tried, it all fell apart What it meant to me will eventually be a memory of a time when I tried so hard and got so far But in the end, it doesn't even matter I had to fall to lose it all But in the end, it doesn't even matter One thing, I don't know why It doesn't even matter how hard you try Keep that in mind, I designed this rhyme to remind myself how I tried so hard In spite of the way you were mockin' me Actin' like I was part of your property Rememberin' all the times you fought with me I'm surprised it got so far Things aren't the way they were before You wouldn't even recognize me anymore Not that you knew me back then, but it all comes back to me in the end You kept everything inside And even though I tried, it all fell apart What it meant to me will eventually be a memory of a time when I tried so hard and got so far But in the end, it doesn't even matter I had to fall to lose it all But in the end, it doesn't even matter I've put my trust in you Pushed as far as I can go For all this, there's only one thing you should know I've put my trust in you Pushed as far as I can go For all this, there's only one thing you should know I tried so hard and got so far But in the end, it doesn't even matter I had to fall to lose it all But in the end, it doesn't even matter",
        "in_the_end"
    ),
        (
        "Otherside",
        "Red Hot Chili Peppers",
        "How long, how long will I slide?
        Well, separate my side
        I don't, I don't believe it's bad
        Slittin' my throat, it's all I ever
        I heard your voice through a photograph
        I thought it up and brought up the past
        Once you know you can never go back
        I gotta take it on the otherside
        Well, centuries are what it meant to me
        A cemetery where I marry the sea
        A stranger thing could never change my mind
        I gotta take it on the otherside
        Take it on the otherside
        Take it on, take it on
        How long, how long will I slide?
        A-separate my side
        I don't, I don't believe it's bad
        A-slittin' my throat, it's all I ever
        Pour my life into a paper cup
        The ashtray's full and I'm spillin' my guts
        She want to know am I still a slut?
        I gotta take it on the otherside
        A scarlet starlet and she's in my bed
        A candidate for the soulmate bled
        Mm, push the trigger and I pull the thread
        I gotta take it on the otherside
        Take it on the otherside
        Take it on, take it on
        How long, how long will I slide?
        Separate my side
        I don't, I don't believe it's bad
        A-slittin' my throat, it's all I ever
        Turn me on, take me for a hard ride
        Burn me out, leave me on the otherside
        I yell and tell it that it's not my friend
        I tear it down, I tear it down, and then it's born again
        How long, how long will I slide?
        Separate my side
        I don't, I don't believe it's bad
        A-slittin' my throat, it's all I ever had
        I don't, I don't believe it's bad
        A-slittin' my throat, is all I ever",
        "otherside"
    ),
        (
        "Knockin' On Heaven's Door",
        "Guns N' Roses",
        "
        [SOL]   Mamma [RE]take this badge off of [LAm]me  
        [SOL]   I can't [RE]use it any[DO]more 
        [SOL]   It's getting [RE]dark, too dark to [LAm]see 
        [SOL]   Feels like I'm [RE]knockin' on heaven's [DO]door. 

        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 

        [SOL]   Mamma [RE]wipe the blood from my [LAm]face 
        [SOL]   I'm sick and [RE]tired of the [DO]war 
        [SOL]   Got a [RE]feeling that's hard to [LAm]trace    
        [SOL]   I feel I'm [RE]knocking on heaven's [DO]door 

        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 

        [SOL]   Mama [RE]put my guns in the [LAm7]ground 
        [SOL]   I can't [RE]shoot them any[DO]more 
        [SOL]   That long black [RE]cloud is coming [LAm7]down 
        [SOL]   Feels like I'm [RE]knockin' on heaven's [DO]door. 

        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door ",
        "knockin_on_heavens_door"
    ),
        (
        "Stairway To Heaven",
        "Led Zeppelin",
        "There's a lady who's sure all that glitters is gold
        And she's buying a stairway to Heaven
        When she gets there she knows, if the stores are all closed
        With a word she can get what she came for
        Ooh, ooh, and she's buying a stairway to Heaven
        There's a sign on the wall, but she wants to be sure
        'Cause you know sometimes words have two meanings
        In a tree by the brook, there's a songbird who sings
        Sometimes all of our thoughts are misgiven
        Ooh, it makes me wonder
        Ooh, makes me wonder
        There's a feeling I get when I look to the West
        And my spirit is crying for leaving
        In my thoughts I have seen rings of smoke through the trees
        And the voices of those who stand looking
        Ooh, it makes me wonder
        Ooh, really makes me wonder
        And it's whispered that soon if we all call the tune
        Then the piper will lead us to reason
        And a new day will dawn for those who stand long
        And the forests will echo with laughter
        Oh-oh-oh-oh-whoa
        If there's a bustle in your hedgerow, don't be alarmed now
        It's just a spring clean for the May queen
        Yes, there are two paths you can go by, but in the long run
        There's still time to change the road you're on
        And it makes me wonder
        Ohh, whoa
        Your head is humming, and it won't go, in case you don't know
        The piper's calling you to join him
        Dear lady, can you hear the wind blow? And did you know
        Your stairway lies on the whispering wind?
        And as we wind on down the road
        Our shadows taller than our soul
        There walks a lady we all know
        Who shines white light and wants to show
        How everything still turns to gold
        And if you listen very hard
        The tune will come to you at last
        When all are one, and one is all
        To be a rock and not to roll
        And she's buying a stairway to Heaven",
        "stairway_to_heaven"
    ),
      (
        "Nothing Else Matters",
        "Metallica",
        "So close, no matter how far
        Couldn't be much more from the heart
        Forever trusting who we are
        And nothing else matters
        Never opened myself this way
        Life is ours, we live it our way
        All these words, I don't just say
        And nothing else matters
        Trust I seek and I find in you
        Every day for us something new
        Open mind for a different view
        And nothing else matters
        Never cared for what they do
        Never cared for what they know
        But I know
        So close, no matter how far
        It couldn't be much more from the heart
        Forever trusting who we are
        And nothing else matters
        Never cared for what they do
        Never cared for what they know
        But I know
        I never opened myself this way
        Life is ours, we live it our way
        All these words, I don't just say
        And nothing else matters
        Trust I seek and I find in you
        Every day for us something new
        Open mind for a different view
        And nothing else matters
        Never cared for what they say
        Never cared for games they play
        Never cared for what they do
        Never cared for what they know
        And I know, yeah, yeah
        So close, no matter how far
        Couldn't be much more from the heart
        Forever trusting who we are
        No, nothing else matters",
        "nothing_else_matters"
    ),
    (
        "Master Of Puppets",
        "Metallica",
        "End of passion play, crumbling away
        I'm your source of self-destruction
        Veins that pump with fear, sucking darkest clear
        Leading on your death's construction
        Taste me, you will see
        More is all you need
        Dedicated to
        How I'm killing you
        Come crawling faster (faster)
        Obey your master (master)
        Your life burns faster (faster)
        Obey your master, master
        Master of puppets, I'm pulling your strings
        Twisting your mind and smashing your dreams
        Blinded by me, you can't see a thing
        Just call my name 'cause I'll hear you scream
        Master, master
        Just call my name 'cause I'll hear you scream
        Master, master
        Needlework the way, never you betray
        Life of death becoming clearer
        Pain monopoly, ritual misery
        Chop your breakfast on a mirror
        Taste me, you will see
        More is all you need
        Dedicated to
        How I'm killing you
        Come crawling faster (faster)
        Obey your master (master)
        Your life burns faster (faster)
        Obey your master, master
        Master of puppets, I'm pulling your strings
        Twisting your mind and smashing your dreams
        Blinded by me, you can't see a thing
        Just call my name 'cause I'll hear you scream
        Master, master
        Just call my name 'cause I'll hear you scream
        Master, master
        (Master, master, master, master)
        Master, master, where's the dreams that I've been after?
        Master, master, you promised only lies
        Laughter, laughter, all I hear or see is laughter
        Laughter, laughter, laughing at my cries
        Fix me!
        Hell is worth all that, natural habitat
        Just a rhyme without a reason
        Never-ending maze, drift on numbered days
        Now your life is out of season
        I will occupy
        I will help you die
        I will run through you
        Now I rule you too
        Come crawling faster (faster)
        Obey your master (master)
        Your life burns faster (faster)
        Obey your master, master
        Master of puppets, I'm pulling your strings
        Twisting your mind and smashing your dreams
        Blinded by me, you can't see a thing
        Just call my name 'cause I'll hear you scream
        Master, master
        Just call my name 'cause I'll hear you scream
        Master, master",
        "master_of_puppets"
    ),
     (
        "Dulce Introducción al caos",
        "Extremoduro",
        "Cómo quieres que escriba una canción
        Si a tu lado no hay reivindicación
        La canción de que el tiempo no pasara
        Donde nunca pasa nada
        Una racha de viento nos visitó
        Y al árbol ni una rama se le agitó
        La canción de que el viento se parara
        Donde nunca pasa nada
        Un otoño el demonio se presentó
        Fue cuando el arbolito se deshojó
        La canción de que el tiempo se atrasara
        Donde nunca pasó nada
        Una racha de viento nos visitó
        Pero nuestra veleta ni se inmutó
        La canción de que el viento se parara
        Donde nunca pasa nada
        Mientras tanto pasan las horas
        Sueño que despierto a su vera
        Me pregunto si estará sola
        Y ardo dentro de una hoguera
        Cómo quieres que escriba una canción
        Si a tu lado he perdido la ambición
        La canción de que el tiempo no pasara
        Donde nunca pasa nada
        Se rompió la cadena que ataba el reloj a las horas
        Se paró el aguacero ahora somos flotando dos gotas
        Agarrado un momento a la cola del viento me siento mejor
        Me olvidé de poner en el suelo los pies y me siento mejor
        ¡Volar! ¡Volar!
        Una racha de viento nos visitó
        Y a nosotros ni el pelo se nos movió
        La canción de que el viento se parara
        Donde nunca pasa nada
        Ya no queda una piedra en pie
        Porque el viento lo derribó
        ¡No! No hay esa canción
        Ya no queda nada de ayer
        Porque el viento se lo llevó
        ¡No! No hay esa canción
        Ya no queda una piedra en pie
        Porque el viento lo derribó
        ¡No! No hay esa canción
        Ya no queda nada de ayer
        Porque el viento se lo llevó
        ¡No! No hay esa canción",
        "dulce_introduccion_al_caos"
    ),
     (
        "La Vereda De La Puerta De Atras",
        "Extremoduro",
        "Si no fuera porque hice colocado
        El camino de tu espera, me habría desconectado
        Condenado a mirarte desde fuera
        Y dejar que te tocara el Sol
        Y si fuera mi vida una escalera
        Me la he pasado entera buscando el siguiente escalón
        Convencido que estás en el tejado
        Esperando a ver si llego yo
        Y dejar de lado la vereda de la puerta de atrás
        Por donde te vi marchar
        Como una regadera que la hierba hace que vuelva a brotar
        Y ahora es todo campo ya
        Sus soldados son flores de madera
        Y mi ejército no tiene banderas, solo un corazón
        Condenado a vivir entre maleza
        Sembrando flores de algodón
        Si me espera la muerte traicionera
        Y antes de repartirme del todo, me veo en un cajón
        Que me entierren con la picha por fuera
        Pa' que se la coma un ratón
        Y muere a todas horas gente dentro de mi televisor
        Quiero oír alguna canción
        Que no hable de sandeces y que diga que no sobra el amor
        Y que empiece en sí, no en no
        Y dejar de lado la vereda de la puerta de atrás
        Por donde te vi marchar
        Como una regadera que la hierba hace que vuelva a brotar
        Y ahora es todo campo ya
        Dices que a veces no comprendes qué dice mi voz
        ¿Cómo quieres que esté dentro de tu ombligo?
        Si entre los dedos se me escapa volando una flor
        Y ella solita va marcando el camino
        Dices que a veces no comprendes qué dice mi voz
        ¿Cómo quieres que yo sepa lo que digo?
        Si entre los dedos se me escapa volando una flor
        Y yo la dejo que me marque el camino",
        "la_vereda_de_la_puerta_de_atras"
    ),
     (
        "I Dont Want To Miss A Thing",
        "Aerosmith",
        "I could stay awake just to hear you breathing
        Watch you smile while you are sleeping
        While you're far away and dreaming
        I could spend my life in this sweet surrender
        I could stay lost in this moment forever
        Where a moment spent with you is a moment I treasure
        Don't wanna close my eyes
        I don't wanna to fall asleep
        'Cause I'd miss you baby
        And I don't wanna miss a thing
        'Cause even when I dream of you (even when I dream)
        The sweetest dream would never do
        I'd still miss you baby
        And I don't wanna miss a thing
        Lying close to you, feeling your heart beating
        And I'm wondering what you're dreaming
        Wondering if it's me you're seeing
        Then I kiss your eyes
        And thank God we're together
        And I just wanna stay with you in this moment forever
        Forever and ever
        I don't wanna close my eyes
        I don't wanna to fall asleep
        'Cause I'd miss you baby
        And I don't wanna miss a thing
        'Cause even when I dream of you (even when I dream)
        The sweetest dream will never do
        I'd still miss you baby
        And I don't wanna miss a thing
        I don't wanna miss one smile
        And I don't wanna miss one kiss
        And I just wanna be with you
        Right here with you, just like this
        And I just wanna hold you close
        I feel your heart so close to mine
        And just stay here in this moment
        For all the rest of time
        Yeah, yeah, yeah, yeah, yeah
        Don't wanna close my eyes
        Don't wanna fall asleep
        'Cause I'd miss you baby
        And I don't wanna miss a thing
        'Cause even when I dream of you (even when I dream)
        The sweetest dream would never do
        I'd still miss you baby
        And I don't wanna miss a thing
        I don't wanna close my eyes
        I don't wanna fall asleep
        'Cause I'd miss you baby
        And I don't wanna miss a thing
        'Cause even when I dream of you
        The sweetest dream would never do
        I'd still miss you baby
        And I don't wanna miss a thing
        Don't wanna close my eyes
        I don't wanna fall asleep, yeah
        And I don't wanna miss a thing",
        "i_dont_want_to_miss_a_thing"
    ),
     (
        "Dream On",
        "Aerosmith",
        "Every time that I look in the mirror
        All these lines on my face getting clearer
        The past is gone
        Oh, it went by like dusk to dawn
        Isn't that the way?
        Everybody's got their dues in life to pay, oh, oh, oh
        I know nobody knows
        Where it comes and where it goes
        I know it's everybody's sin
        You got to lose to know how to win
        Half my life's in books' written pages
        Storing facts learned from fools and from sages
        You view the earth
        Oh, sing with me, this mournful dub
        Sing with me, sing for a year
        Sing for the laughter, and sing for the tear
        Sing with me, if it's just for today
        Maybe tomorrow, the good Lord will take you away
        Oh, sing with me, sing for the year
        Sing for the laughter, and sing for the tear
        Sing it with me, if it's just for today
        Maybe tomorrow, the good Lord will take you away
        Dream on
        Dream on
        I dream on
        Dream a little, I'll dream on
        Dream on
        I dream on
        I dream on
        Dream a little, I'll dream on
        Dream on
        Dream on
        Dream on
        I'll dream on
        Dream on
        Dream on
        I dream on",
        "dream_on"
    ),
     
     (
        "Don't Cry",
        "Guns N' Roses",
        "Talk to me softly
        There's something in your eyes
        Don't hang your head in sorrow
        And please don't cry
        I know how you feel inside, I
        I've been there before
        Something is changing inside you
        And don't you know?
        Don't you cry tonight
        I still love you, baby
        Don't you cry tonight
        Don't you cry tonight
        There's a heaven above you, baby
        And don't you cry tonight
        Give me a whisper
        And give me a sigh
        Give me a kiss, before you
        Tell me goodbye
        Don't you take it so hard now
        And please don't take it so bad
        I'll still be thinking of you
        And the times we had, baby
        And don't you cry tonight
        Don't you cry tonight
        Don't you cry tonight
        There's a heaven above you, baby
        And don't you cry tonight
        And please remember that I never lied
        Oh, and please remember how I felt inside, now, honey
        You got to make it your own way
        But you'll be alright now, sugar
        You'll feel better tomorrow
        Come the morning light now, baby
        And don't you cry tonight
        Don't you cry tonight
        Don't you cry tonight
        There's a heaven above you, baby
        And don't you cry, don't you ever cry
        Don't you cry tonight
        Baby, maybe someday
        And don't you cry
        Don't you ever cry
        Don't you cry tonight",
        "dont_cry"
    ),
     (
        "Black Dog",
        "Led Zeppelin",
        "Hey-hey, mama, said the way you move
        Gonna make you sweat, gonna make you groove
        Ah-ah, child, way you shake that thing
        Gonna make you burn, gonna make you sting
        Hey-hey, baby, when you walk that way
        Watch your honey drip, can't keep away
        Oh, yeah, oh, yeah
        Oh, oh, oh
        Oh, yeah, oh, yeah
        Oh, oh, oh
        I gotta roll, can't stand still
        Got a flaming heart, can't get my fill
        Eyes that shine, burning red
        Dreams of you all through my head
        Ah, ah, ah, ah
        Ah, ah, ah, ah
        Ah, ah, ah, ah
        Ah
        Hey, baby, oh, baby, pretty baby
        Darling, can't you do me now?
        Hey, baby, oh, baby, pretty baby
        Move me while you do me now
        Didn't take too long 'fore I found out
        What people mean by down and out
        Spent my money, took my car
        Started telling her friend she gonna be a star
        I don't know, but I've been told
        A big-legged woman ain't got no soul
        Oh, yeah, oh, yeah
        Oh, oh, oh
        Oh, yeah, oh, yeah
        Oh, oh, oh
        All I ask for, all I pray
        Steady-rollin' woman gonna come my way
        Need a woman gonna hold my hand
        But tell me no lies, make me a happy man
        Ah, ah, ah, ah
        Ah, ah, ah, ah
        Ah, ah, ah, ah
        Ah",
        "black_dog"
    ),
     (
        "Wonderwall",
        "Oasis",
        "Today is gonna be the day that they're gonna throw it back to you
        By now, you should've somehow realised what you gotta do
        I don't believe that anybody feels the way I do about you now
        And backbeat, the word is on the street that the fire in your heart is out
        I'm sure you've heard it all before, but you never really had a doubt
        I don't believe that anybody feels the way I do about you now
        And all the roads we have to walk are winding
        And all the lights that lead us there are blinding
        There are many things that I would like to say to you
        But I don't know how
        Because maybe
        You're gonna be the one that saves me
        And after all
        You're my wonderwall
        Today was gonna be the day, but they'll never throw it back to you
        By now, you should've somehow realised what you're not to do
        I don't believe that anybody feels the way I do about you now
        And all the roads that lead you there were winding
        And all the lights that light the way are blinding
        There are many things that I would like to say to you
        But I don't know how
        I said, Maybe
        You're gonna be the one that saves me
        And after all
        You're my wonderwall
        I said, Maybe (I said maybe)
        You're gonna be the one that saves me
        And after all
        You're my wonderwall
        I said, Maybe (I said maybe)
        You're gonna be the one that saves me (saves me)
        You're gonna be the one that saves me (saves me)
        You're gonna be the one that saves me (saves me)",
        "wonderwall"
    ),
    (
        "Don't Look Back In Anger",
        "Oasis",
        "Slip inside the eye of your mind
        Don’t you know you might find
        A better place to play
        You said that you’d never been
        But all the things that you’ve seen
        Will slowly fade away

        So I’ll start a revolution from my bed
        ‘Cos you said the brains I had went to my head
        Step outside, summertime’s in bloom
        Stand up beside the fireplace
        Take that look from off your face
        You ain’t ever gonna burn my heart out

        And so Sally can wait, she knows it’s too late as we’re walking on by
        Her soul slides away, “But don’t look back in anger,  I heard you say

        Take me to the place where you go
        Where nobody knows if it’s night or day
        Please don’t put your life in the hands
        Of a Rock ‘n’ Roll band
        Who’ll throw it all away

        I’m gonna start a revolution from my bed
        ‘Cos you said the brains I had went to my head
        Step outside ’cause summertime’s in bloom
        Stand up beside the fireplace, take that look from off your face
        ‘Cos you ain’t ever gonna burn my heart out

        And so Sally can wait
        She knows it’s too late as she’s walking on by
        My soul slides away
        “But don’t look back in anger,  I heard you say

        So Sally can wait
        She knows it’s too late as we’re walking on by
        Her soul slides away
        “But don’t look back in anger,  I heard you say

        So Sally can wait
        She knows it’s too late as she’s walking on by
        My soul slides away
        “But don’t look back in anger, don’t look back in anger. 
        I heard you say, “at least not today. ",
        "dont_look_back_in_anger"
    ),
    (
        "Occhi",
        "Zucchero",
        "Poi, ho visto gli occhi tuoi
        Rotolando verso casa
        Chiamare i miei
        Che bella sei
        Che belle fai
        Le belle sere, sai
        Ho visto gli occhi tuoi
        Quando scende la bellezza
        In fondo al cuore
        Come vorrei
        Come sei bella
        Flying away
        Tu scendi da una stella
        Flying away
        Così talmente bella
        Flying away
        Poi, ho visto gli occhi suoi
        Come grano in mano al vento
        Son ciliegie del mio pianto
        Così tanto io ti sento
        Sai, ho visto te con lui
        Quando scende la tristezza
        In fondo al cuore
        Come vorrei
        Come sei bella
        Flying away
        Tu scendi da una stella
        Flying away
        Così talmente bella
        Flying away
        Dov'è che il vento ti porta via
        Dov'è che il cielo tramonta
        Quando scende la tristezza e invade gli occhi
        Come vorrei
        Come sei bella
        Flying away
        Tu scendi da una stella
        Flying away
        Così talmente bella
        Flying away
        Così talmente bella
        Flying away
        E te ne vai
        Te ne vai
        Te ne vai
        Via, via, via",
        "occhi"
    ),
     (
        "Numb",
        "Linkin Park",
        "I'm tired of being what you want me to be
Feeling so faithless, lost under the surface
Don't know what you're expecting of me
Put under the pressure of walking in your shoes
Every step that I take is another mistake to you
(Caught in the undertow, just caught in the undertow)
I've become so numb, I can't feel you there
Become so tired, so much more aware
I'm becoming this, all I want to do
Is be more like me and be less like you
Can't you see that you're smothering me?
Holding too tightly, afraid to lose control
'Cause everything that you thought I would be
Has fallen apart right in front of you
Every step that I take is another mistake to you
(Caught in the undertow, just caught in the undertow)
And every second I waste is more than I can take
I've become so numb, I can't feel you there
Become so tired, so much more aware
I'm becoming this, all I want to do
Is be more like me and be less like you
And I know
I may end up failing too
But I know
You were just like me, with someone disappointed in you
I've become so numb, I can't feel you there
Become so tired, so much more aware
I'm becoming this, all I want to do
Is be more like me and be less like you
I've become so numb, I can't feel you there
I'm tired of being what you want me to be
I've become so numb, I can't feel you there
I'm tired of being what you want me to be",
        "numb"
    );
