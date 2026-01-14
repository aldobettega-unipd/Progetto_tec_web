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
    );

INSERT INTO
    canzone (titolo_canzone, autore_canzone, descrizione_canzone, testo_canzone, slug_canzone)
VALUES
    (
        "Un diavolo in me",
        "Zucchero",
        "Uno dei brani più famosi di Zucchero, contenuto nell'album Blue's.",
        "... I've got a message for you From my heavenly father Everybody out there united for peace, love, joy, happiness Let it in your soul this morning, brothers and sisters Let him come on out, let him come on in Everybody knows he's there, come on and listen to me Come on brothers and sisters Sanctify, sanctify, sanctify your soul, sanctify, amen ... I've got the devil in me ... Gloria nell'alto dei cieli Ma non c'è pace quaggiù Non ho bisogno di veli Sei già un angelo tu Che accendi un diavolo in me Accendi un diavolo in me Perché c'è un divaolo in me Forse c'è un diavolo in me ... Ooh, your eyes hypnotize me You're lips took control You put your arms around me And you shook my soul Every night I thought about what could I do Baby I find myself in love with you, oh ... I've got the devil in me Perché c'è un diavolo in me, babe Forse c'è un diavolo in me ... Saluta i tuoi (O-U) E bacia i miei (B-L) Che sensazione (E) Yeah ... You take my love (O-U) Turn me around (B-L-E) Put my feet ... Dai che non siamo dei santi Oh what you're trying to do Le tentazioni del suolo What you're trying to put me through Sono cose piccanti Release me Belle da prendere al volo E accendi un diavolo in me I got the devil in me Perché c'è un diavolo in me, babe Everybody can see I've got the devil, go Loose here, loose here Oh Break that, break that spell ... You made me cry (B-L) (E) You told me a lie ... Gave me pain (B-L-E) From the very start I've got the devil in me ... Gloria nell'alto dei cieli Ma non c'è pace quaggiù (Help me somebody) È una questione di peli Sei proprio un angelo tu Che accendi un diavolo in me ... I've got the devil in me Perché c'è un diavolo in me, babe I've got the devil in me Accendi un diavolo in me I've got the devil, devil Accendi un diavolo in me Devil devil devil in me Perché c'è un diavolo in me Can you see, can you see? Forse c'è un diavolo in me Can you tell, can you tell? Let's go Release me Devil Set me free I've got, ooh, devil in me",
        "un_diavolo_in_me"
    ),
    (
        "Can't stop",
        "Red Hot Chili Peppers",
        "Singolo iconico del 2002 caratterizzato dal celebre riff di John Frusciante.",
        "Can't stop, addicted to the shindig Chop Top, he says I'm gonna win big Choose not a life of imitation Distant cousin to the reservation Defunkt, the pistol that you pay for This punk, the feelin' that you stay for In time, I want to be your best friend East Side love is living on the West End Knocked out, but boy, you better come to Don't die, you know, the truth is some do Go write your message on the pavement Burn so bright, I wonder what the wave meant White heat is screamin' in the jungle Complete the motion if you stumble Go ask the dust for any answers Come back strong with fifty belly dancers The world I love, the tears I drop To be part of the wave, can't stop Ever wonder if it's all for you? The world I love, the trains I hop To be part of the wave, can't stop Come and tell me when it's time to Sweetheart is bleeding in the snow cone So smart, she's leading me to ozone Music, the great communicator Use two sticks to make it in the nature I'll get you into penetration The gender of a generation The birth of every other nation Worth your weight, the gold of meditation This chapter's gonna be a close one Smoke rings, I know you're gonna blow one All on a spaceship, persevering Use my hands for everything but steering Can't stop the spirits when they need you Mop tops are happy when they feed you J. Butterfly is in the treetop Birds that blow the meaning into bebop The world I love, the tears I drop To be part of the wave, can't stop Ever wonder if it's all for you? The world I love, the trains I hop To be part of the wave, can't stop Come and tell me when it's time to Wait a minute, I'm passin' out, win or lose Just like you Far more shocking than anything I ever knew How about you? Ten more reasons why I need somebody new Just like you Far more shocking than anything I ever knew Right on cue Can't stop, addicted to the shindig Chop Top, he says I'm gonna win big Choose not a life of imitation Distant cousin to the reservation Defunkt, the pistol that you pay for This punk, the feelin' that you stay for In time, I want to be your best friend East Side love is living on the West End Knocked out, but boy, you better come to Don't die, you know, the truth is some do Go write your message on the pavement Burn so bright, I wonder what the wave meant Kick-start the golden generator Sweet talk but don't intimidate her Can't stop the gods from engineering Feel no need for any interfering Your image in the dictionary This life is more than ordinary Can I get two, maybe even three of these? Comin' from space to teach you of the Pleiades Can't stop the spirits when they need you This life is more than just a read-through",
        "cant_stop"   
    ),
    (
        "In the end",
        "Linkin Park",
        "In The End dei Linkin Park è un brano simbolo del nu metal, che parla di fallimento, frustrazione e perseveranza, unendo rap ed emozione in un ritornello memorabile intenso universale.",
        "It starts with one One thing, I don't know why It doesn't even matter how hard you try Keep that in mind, I designed this rhyme to explain in due time All I know time is a valuable thing Watch it fly by as the pendulum swings Watch it count down to the end of the day, the clock ticks life away It's so unreal, didn't look out below Watch the time go right out the window Tryna hold on, d-didn't even know I wasted it all just to watch you go I kept everything inside And even though I tried, it all fell apart What it meant to me will eventually be a memory of a time when I tried so hard and got so far But in the end, it doesn't even matter I had to fall to lose it all But in the end, it doesn't even matter One thing, I don't know why It doesn't even matter how hard you try Keep that in mind, I designed this rhyme to remind myself how I tried so hard In spite of the way you were mockin' me Actin' like I was part of your property Rememberin' all the times you fought with me I'm surprised it got so far Things aren't the way they were before You wouldn't even recognize me anymore Not that you knew me back then, but it all comes back to me in the end You kept everything inside And even though I tried, it all fell apart What it meant to me will eventually be a memory of a time when I tried so hard and got so far But in the end, it doesn't even matter I had to fall to lose it all But in the end, it doesn't even matter I've put my trust in you Pushed as far as I can go For all this, there's only one thing you should know I've put my trust in you Pushed as far as I can go For all this, there's only one thing you should know I tried so hard and got so far But in the end, it doesn't even matter I had to fall to lose it all But in the end, it doesn't even matter",
        "in_the_end"
    ),
        (
        "Otherside",
        "Red Hot Chili Peppers",
        "Uno dei brani più famosi dei Red Hot Chili Peppers, contenuto nell'album Californication.",
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
        "Uno dei brani più famosi dei Guns N' Roses, contenuto nell'album Use Your Illusion.",
        "Mama take this badge from me
I can't use it anymore
It's getting dark too dark to see
Feels like I'm knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
Mama put my guns in the ground
I can't shoot them anymore
That cold black cloud is comin' down
Feels like I'm knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
You just better start sniffin' your own rank subjugation jack
'Cause it's just you against your tattered libido
The bank and the mortician, forever man
And it wouldn't be luck if you could get out of life alive
Knock-knock-knockin' on Heaven's door
(Knock-knock-knockin' on Heaven's door)
Knock-knock-knockin' on Heaven's door
(Knock-knock-knockin' on Heaven's door)
Knock-knock-knockin' on Heaven's door
(Knock-knock-knockin' on Heaven's door)
Knock-knock-knockin' on Heaven's door
(Knock-knock-knockin' on Heaven's door)
Knock-knock-knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door
Knock-knock-knockin' on Heaven's door",
"knockin_on_heavens_door"
    ),
        (
        "Stairway To Heaven",
        "Led Zeppelin",
        "Uno dei brani più famosi di Led Zeppelin, une dei piu grandi canzioni di rock.",
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
    );