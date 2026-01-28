-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Albachiara', 'Vasco Rossi', 'ITA', '[FA7+]  [DO]   [SOL7]

[DO] Respiri piano per non [SOL]far rumore
ti addor[LAm]menti di sera e ti ris[DO]vegli col sole
[FA] sei chiara come un'' [DO]alba
[RE] ...sei fresca come l''[SOL7]aria

[DO] Diventi rossa se qual[SOL]cuno ti guarda
sei fan[LAm]tastica quando sei as[DO]sorta
[FA] nei tuoi pro[DO]blemi[RE], nei tuoi pen[SOL7]sieri

[DO] Ti vesti svogliata[SOL]mente, non metti mai [LAm]niente
che possa atti[DO]rare attenzione
[FA] un partico[DO]lare[RE], solo per farti guar[SOL7]dare

Strumentale:
[DO] [SOL] [LAm] [DO] [FA] [DO] [RE] [SOL7] [RE] [SOL7]

[DO] Respiri piano per non [SOL]far rumore
ti addor[LAm]menti di sera e ti ris[DO]vegli col sole
[FA] sei chiara come un'' [DO]alba
[RE] ...sei fresca come l''[SOL7]aria

[DO] Diventi rossa se qual[SOL]cuno ti guarda
sei fan[LAm]tastica quando sei as[DO]sorta
[FA] nei tuoi pro[DO]blemi[RE], nei tuoi pen[SOL7]sieri

[DO] Ti vesti svogliata[SOL]mente, non metti mai [LAm]niente
che possa atti[DO]rare attenzione
[FA] un partico[DO]lare[RE], solo per farti guar[SOL7]dare

[DO] E con la faccia pu[SOL]lita cammini per st[LAm]rada,
mangiando una [DO]mela, coi libri di [FA]scuola,
ti piace stu[DO]diare
[RE]non te ne devi vergognare! [SOL7]

[DO] E quando guardi con quegli [SOL]occhi grandi
[LAm] forse un pò troppo sin[DO]ceri, sinceri
[FA] si vede quello che [DO]pensi
[RE] quello che [SOL7]sogni

[DO]  E qualche volta fai pen[SOL]sieri strani
[LAm] con una mano, una [DO]mano ti sfiori
[FA] Tu sola [DO]dentro la stanza
[RE] e tutto il mondo [SOL7]fuori !!!

Strumentale:
[DO] [SOL] [LAm] [DO] [FA] [DO] [RE] [SOL7] [RE] [SOL7]', 'albachiara');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Come nelle Favole', 'Vasco Rossi', 'ITA', '[RE]Quello che potremmo fare io e [SIm]te
[SOL]senza dar retta a nessuno
[LA]senza pensare a qualcuno
q[RE]uello che potremmo fare io e [SIm]te
non lo [SOL]puoi neanche cr[LA]edere [RE]
Q[RE]uello che potremmo fare io e [SIm]te
[SOL]senza pensare a niente
[LA]senza pensare sempre
q[RE]uello che potremmo fare io e [SIm]te
non si [SOL]può neanche im[LA]maginare[RE]     [LA]
[RE]Sai che ho pensato sempre
[SIm]quasi continuamente
[SOL]che non sei mai stata [LA]mia
[RE]me lo ricordo sempre
[SIm]che non è successo niente
[SOL]dovevi [LA]sempre andar [RE]via  [LA]
Io e [RE]te
io e [SIm]te
[SOL]dentro un bar a bere e a rid[LA]ere
io e [RE]te
io e [SIm]te
a c[SOL]rescere bambini
a[LA]vere dei vicini
io e [RE]te
io e [SIm]te
se[SOL]duti sul divano
par[LA]lar del piu e del meno
io e [RE]te
io e [SIm]te
[SOL]come nelle [LA]favol[RE]e   [LA]

    [RE]   [SIm]  [SOL]  [LA]   [RE]   [LA]
[RE]Quello che potremmo fare io e [SIm]te
[SOL]non l''ho mai detto a nessuno
[LA]però né sono sicuro
[RE]quello che potremmo fare io e [SIm]te
[SOL]non si puó neanche im[LA]maginare[RE]    [LA]
Io e [RE]te
io e [SIm]te
[SOL]dentro un bar a bere e a [LA]ridere
io e [RE]te
io e [SIm]te
a c[SOL]rescere bambini
a[LA]vere dei vicini
io e [RE]te
io e [SIm]te
sdra[SOL]iati sul divano
par[LA]lar del piu e del meno
io e [RE]te
io e [SIm]te
[SOL]come nelle [LA]favol[RE]e   [LA]
    Assolo :
[RE]   [SIm]  [SOL]  [LA]  [RE]  [LA]

Io e [RE]te  io e te
io e [SIm]te  io e te
a [SOL]crescere bambini
a[LA]vere dei vicini
io e [RE]te   [LA]
io e [RE]te  io e te
io e [SIm]te  io e te
sdra[SOL]iati sul divano
par[LA]lar del piu e del meno [RE]     [LA]
io e [RE]te  io e te
io e [SIm]te  io e te
a c[SOL]rescere bambini
a[LA]vere dei vicini
io e [RE]te
[LA]come favole[RE]', 'come-nelle-favole');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LA'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Vita Spericolata', 'Vasco Rossi', 'ITA', '[DO]  [DO5+]  [DO]  [DO5+]  [DO]  [DO5+]  [DO]  [DO7]

[FA]   Voglio una vita [SOL]maleducata
di quelle [DO]vite fatte fatte co[DO7]sì
[FA]   voglio una vita [SOL]che se ne frega
che se ne [DO]frega di tutto [DO7]sì
[FA]   voglio una vita che [SOL]non è mai tardi
di [DO]quelle che non dormi [DO7]mai
[FA]   voglio una vita...
di [SOL]quelle che non si sa [DO]mai   [DO]

e [LAm]poi ci troveremo [MIm7]come le stars
a [FA]bere del whisky al [DO]Roxy [SOL]Bar
o [LAm]forse non ci incontre[MIm7]remo mai
o[FA]gnuno a rincorre[DO]re i suoi [SOL]guai
o[LAm]gnuno col suo viaggio o[MIm7]gnuno diverso
[FA]   e ognuno in fondo
[FAm]perso dentro i fatti suoi [SOL4]      [SOL]

[FA]   Voglio una vita [SOL]spericolata
voglio una [DO]vita come quelle dei [DO7]film
[FA]   voglio una vita [SOL]esagerata
voglio una [DO]vita come Steve Mc Qu[DO7]een
[FA]   voglio una vita che [SOL]non è mai tardi
di [DO]quelle che non dormi [DO7]mai
[FA]   voglio una vita..
[SOL] la voglio piena di [DO]guai   [SOL]

e [LAm]poi ci troveremo [MIm7]come le stars
a [FA]bere del whisky al [DO]Roxy B[SOL]ar
o[LAm]ppure non ci incontre[MIm7]remo mai
o[FA]gnuno a rincorre[DO]re i suoi [SOL]guai
o[LAm]gnuno col suo viaggio o[MIm7]gnuno diverso
[FA]   e ognuno in fondo
[FAm]perso dentro i fatti suoi[SOL4]      [SOL]

[FA]   Voglio una vita [SOL]maleducata
di [DO]quelle vite fatte co[DO7]sì
[FA]   voglio una vita [SOL]che se ne frega
che se ne [DO]frega di tutto s[DO7]ì
[FA]   voglio una vita che [SOL]non è mai tardi
di [DO]quelle che non dormi [DO7]mai
[FA]   voglio una vita..
[SOL]vedrai che vita vedr[DO]ai  [FAm]

[DO]  [FAm]  [DO]  [FAm]  [DO]  [FAm]

e [LAm]poi ci troveremo [MIm7]come le stars
a [FA]bere del whisky al [DO]Roxy [SOL]Bar
o [LAm]forse non ci incontre[MIm7]remo mai
o[FA]gnuno a rincorre[DO]re i suoi [SOL]guai
e [LAm]poi ci troveremo [MIm7]come le stars
a [FA]bere del whisky al [DO]Roxy [SOL]Bar
o [LAm]forse non ci incontre[MIm7]remo mai
og[FA]nuno a rincorrer[DO]e i suoi g[SOL]uai

[LAm]   Voglio una vita [MIm7]spericolata
voglio una [FA]vita come quelle dei [DO]film [SOL]
[LAm]   voglio una vita [MIm7]esagerata
voglio una [FA]vita come Steve Mc [DO]Queen [SOL]
[LAm]   Voglio una vita [MIm7]maleducata
di [FA]quelle vite fatte co[DO]sì  [SOL]
[LAm]   voglio una vita [MIm7]che se ne frega
che se ne [FA]frega di tutto s[DO]ì   [SOL]', 'vita-spericolata');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Ti Prendo E Ti Porto Via', 'Vasco Rossi', 'ITA', '[RE]                [REadd9]  [SIm7]             [SOL]

Refrain (distorto)

[RE]  Sai ti conosco oramai
[RE]  Ho capito chi sei
[RE]  Non ti importa di niente
[RE]  Tu dimentichi tutto
[RE]  Senza alcun rispetto
[RE]  Neanche per noi

[RE]  Chiedi amore così
[MIm]  Come a chiedere di
[FA#m]  Di buttarsi nel [SOL]cesso
[RE]  Tanto tu non lo [SOL]sai
quello che [LA]vuoi

[RE]Ma dove vai [REadd9]ma dove vai
[SIm7]Tanto oramai sei m[SOL]ia
[RE]Faccio così [REadd9]passo di lì
Ti [SIm7]prendo e ti porto vi[SOL]a

[RE]  Sei gelosa di te
[RE]  Ti guardi intorno se c''è
[RE]  una vestita uguale
[RE]  è che sedurre per te
[RE]  è più importante che
[RE]  che respirare

[RE]  starti vicino si
[MIm]  a volte capita di
[FA#m]  di sentirsi un po'' in [SOL]forse
[RE]  ma tu li baci tutti
[SOL]  e lasci tutto com''[LA]è

[RE]Ma dove vai [REadd9]ma dove vai
[SIm7]Tanto oramai sei m[SOL]ia
[RE]Faccio così [REadd9]passo di lì
Ti [SIm7]prendo e ti porto vi[SOL]a
[RE]Ma dove vai [REadd9]ma dove vai
[SIm7]Tanto oramai sei m[SOL]ia
[RE]Faccio così [REadd9]passo di lì
Ti [SIm7]prendo e ti porto vi[SOL]a

[RE]  Sai ti conosco oramai
[RE]  Ho capito chi sei
[RE]  Non ti importa di niente
[RE]  Tu te li baci tutti
[SOL]  E lasci tutto com''[LA]è

[RE]Ma dove vai [REadd9]ma dove vai
[SIm7]Tanto oramai sei m[SOL]ia
[RE]Faccio così [REadd9]passo di lì
Ti [SIm7]prendo e ti porto vi[SOL]a
[RE]Ma dove vai [REadd9]ma dove vai
[SIm7]Tanto oramai sei m[SOL]ia
[RE]Faccio così [REadd9]passo di lì
Ti [SIm7]prendo e ti porto vi[SOL]a', 'ti-prendo-e-ti-porto-via');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Un Senso', 'Vasco Rossi', 'ITA', 'Intro:
[SOL]  [MIm7]  [FA]  [RE]

[SOL]Voglio trovare un [MIm7]senso a questa sera
[FA]Anche se questa sera un [RE]senso non ce l''ha

[SOL]Voglio trovare un [MIm7]senso a questa vita
[FA]Anche se questa vita un [RE]senso non ce l''ha

[MIb]Voglio tro[FA]vare un s[SIb]enso a questa s[DOm7]toria
[MIb]Anche se questa [FA]storia un [SIb]senso non ce [DOm7]l''ha

[MIb]Voglio tro[FA]vare un s[SIb]enso a questa [DOm7]voglia
[MIb]Anche se questa v[FA]oglia un [SOL]senso non ce l''ha

[SOL]Sai che cosa penso
[MIm9] Che se non [MIm]ha un senso
Do[FA]mani arriverà...
Dom[RE]ani arrivera'' lo stesso
[SOL]Senti che bel vento
[MIm9] Non basta [MIm]mai il tempo
Dom[MIb]ani un altro [FA]giorno arrive[RE]rà...

[SOL]Voglio trovare un senso a [MIm7]questa situazione
[FA]Anche se questa situazione un [RE]senso non ce l''ha

[MIb]Voglio trovare un [FA]senso a [SIb]questa condiz[DOm7]ione
[MIb]Anche se questa condi[FA]zione un [SOL]senso non ce l''ha

[SOL]  Sai che cosa penso
[MIm9]  Che se non [MIm]ha un senso
Do[FA]mani arriverà
Do[RE]mani arrivera'' lo stesso
[SOL]  Senti che bel vento
[MIm9]  Non basta [MIm]mai il tempo
Do[MIb]mani un altro [FA]giorno arrive[SOL]rà... [MIm7]
Do[MIb]mani un altro [FA]giorno... ormai e'' [SOL]qua!

[SOL]Voglio trovare un s[SOL]enso a tante cose
[DO]Anche se queste tante cose un [MIb]senso non ce l''h[FA]a

[SOL]     [MIm]    do[FA]mani arriverà do[RE]mani arriverà lo stesso

[SOL]  Senti che bel vento
[MIm9]  Non basta [MIm]mai il tempo
Do[MIb]mani un altro [FA]giorno arrive[SOL]ra''...[MIm7]

Do[MIb]mani un altro [FA]giorno arrive[SOL]ra''...[MIm7]

Do[MIb]mani un altro [FA]giorno  [SOL]', 'un-senso');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DOm'),
(@last_song_id, 'FA'),
(@last_song_id, 'MIb'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Non L’Hai Mica Capito', 'Vasco Rossi', 'ITA', '[SOLb]  [SOLb4] [SOLb]    [REb]

[LAb]  [LAb4] [LAb]     [REb]   [REb4] [REb]

Scusa non ho ca[SOLb]pito
vuoi ri[SOLb4]petere, che [SOLb]cosa avev[SOLb4]i da fare

[REb] [REb4]  [REb] [REb4]

di tanto import[LAb]ante
da [LAb4]non potere p[LAb]roprio, proprio [LAb4]rimandare

[REb] [REb4]  [REb] [REb4]

Non mi dire, ti p[SOLb]rego
non mi [SOLb4]dire che do[SOLb]vevi sol[SOLb4]o studiare

[REb] [REb4]  [REb] [REb4]

e ti sembra un buon mo[LAb]tivo questo,
[LAb4]per non farti[LAb] neanche "sen[LAb4]tire"!  [REb]    [REb4]

[REb]  Sì ti ho capito
[SOLb]  t''interessa più la scuola
e poi del [REb]resto chissà come sei brava ma scusa
tra i [MIb7]vari interessi che hai
dimmi che posto mi [LAb]dài!

Ti voglio [SOLb]bene

non l''hai mica capito
ti voglio [REb]bene
lascia sta[REb4]re il vestito[REb]
ti voglio [LAb]bene
non cambiare discorso dai non sche[REb]rzar[LAb]e!   [REb]
Ti voglio [SOLb]bene

smetti di giocare
ti voglio [REb]bene
a un certo [REb4]punto ti [REb]devi "dare"
ti voglio [LAb]bene
non puoi farti eternamente corteg[REb]giar[LAb]e!

[REb]   [REb4] [REb]

Scusa cosa me ne f[SOLb]rega del vestito che hai
mi piaci come sei[REb]
non mi devi trat[LAb]tare come tutti quei maschietti
che ogni tanto "ti fai"[REb]
chissà che cosa paghe[SOLb]rei per poter
vedere dentro quella testa cos''h[REb]ai
se mi stai prendendo in [LAb]giro guarda
che ti giuro non ti perdonerei! [REb]

Ti voglio [SOLb]bene

non l''hai mica capito
ti voglio [REb]bene
lascia sta[REb4]re il vestito[REb]
ti voglio [LAb]bene
non cambiare discorso dai non sche[REb]rzar[LAb]e!   [REb]
Ti voglio [SOLb]bene

smetti di giocare
ti voglio [REb]bene
a un certo [REb4]punto ti [REb]devi "dare"
ti voglio [LAb]bene
non puoi farti eternamente corteg[REb]giar[LAb]e!

[REb]   [REb4] [REb]

Strumentale:
[SOLb]   [REb]   [LAb]   [REb]

[REb]   Sì ti ho capito
[SOLb]  t''interessa più la scuola
e poi del [REb]resto chissà come sei brava ma scusa
tra i [MIb7]vari interessi che hai
dimmi che posto mi [LAb]dài!

Ti voglio [SOLb]bene

non l''hai mica capito
ti voglio [REb]bene
lascia sta[REb4]re il vestito[REb]
ti voglio [LAb]bene
non cambiare discorso dai non sche[REb]rzar[LAb]e!

[REb]   [REb4] [REb]

Ti voglio [SOLb]bene... non capisci niente...
Ti voglio [REb]bene... bene un[REb4] accide[REb]nte
Ti voglio [LAb]bene... nonostante tutto
TI VOGLIO  [REb]         [REb4]     [REb]', 'non-lhai-mica-capito');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'REb'),
(@last_song_id, 'SOLb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Sally', 'Vasco Rossi', 'ITA', '[RE] [RE7+] [RE7]  [SOL] [RE] [MIm7]

[LA]  [SOL]  [LA]  [RE4] [RE]  [LA]

[RE]Sally cammina per la [RE7+]strada senza nemmeno..[RE7]
guardare per [SOL]terra [RE]        [MIm7]
[LA]Sally è una donna che non ha più vogli[SOL]a..    [LA]
di fare la [RE4]guerra[RE]     [LA]

[SIm]Sally ha patito troppo[LA6]
Sally ha già [SOL]visto che cosa.. [LA]   [SOL]
ti può crollare a[LA4]ddosso [LA]
Sally è già [RE4]stata punita [RE]

per ogni [RE]sua d[LA]istrazi[SIm]one o debolezza [LA6]
per ogni candida car[SOL]ezza
[LA4]data per non sentire l''amarez[RE]za [RE7+]     [RE7]     [SOL]    [RE]       [MIm7]
[LA]senti che fuori piov[SOL]e       [LA]
senti che bel rum[RE4]ore [RE]    [LA]


[RE]Sally cammina per la [RE7+]strada sicura  [RE7]
senza pensare a ni[SOL]ente [RE]        [MIm7]
[LA]ormai guarda la gen[SOL]te      [LA]
con aria indiffe[RE4]rente [RE]     [LA]
[SIm]sono lontani quei momenti [LA6]
quando uno [SOL]sguardo provocava tu[LA]rba[SOL]menti
quando la [LA4]vita era più facile [LA]
e si po[RE4]tevano mangiare anche le fragol[RE]e
perché la [RE]vita [LA]è un   [SIm]brivido che vola via
[LA6]e tutt''un equili[SOL]brio sopra la follia
[LA4]sopra la folli[RE]a  [RE7+]     [RE7]     [SOL]    [RE]       [MIm7]
[LA]senti che fuori piov[SOL]e       [LA]
senti che bel rum[RE4]ore [RE]    [LA]

[RE]Ma forse Sally è proprio [RE7+]questo il senso
il [RE7]senso del tuo va[SOL]gare [RE]        [MIm7]
[LA]forse davvero ci si deve sent[SOL]ire     [LA]
alla fine un po'' [RE4]male [RE]      [LA]
[SIm]forse alla fine di questa triste [LA6]storia
qualcuno [SOL]troverà il coraggio [LA]   [SOL]
per affron[LA4]tare i sensi di colpa [LA]
e cance[RE4]llarmi da questo viaggio[RE]
per vive[RE]re [LA]davvero[Sim] ogni momento
[LA6]con ogni suo turba[SOL]mento
[LA4]e come se fosse l''ult[RE]imo[RE7+]     [RE7]     [SOL]    [RE]       [MIm7]

[LA]  [SOL]  [LA]

[RE]Sally cammina per la [RE7+]strada leggera  [RE7]
ormai è [SOL]sera [RE]        [MIm7]
[LA]si accendono le luci dei lampio[SOL]ni      [LA]
tutta la [RE4]gente corre a casa davanti alle tel[RE]evision[LA]i
[SIm]ed un pensiero le passa per la [LA6]testa
forse la [SOL]vita non è stata tutta persa[LA]   [SOL]
forse qual[LA4]cosa s''è salvato [LA]
forse da[RE4]vvero non è stato poi tutto sbagliat[RE]o
forse era [LA]giusto co[SIm]sì.. [LA6]     [SOL]
[LA]forse ma, forse ma [RE]si [RE7+]     [RE7]     [SOL]    [RE]       [MIm7]
[LA4]cosa vuoi che ti dica i[LA]o
senti che bel rumore[RE]', 'sally');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Nostra Relazione', 'Vasco Rossi', 'ITA', '[LAm]  [REm]  [SOL]  [DO4] [DO]  [RE] [MI7]

[LAm]  [REm]  [SOL]  [DO4] [DO]  [RE] [MI7]

[LAm]  La nostra relazione
[REm]  è qualche cosa di diverso
[SOL]  non è per niente amore
e non è [DO]forse neanche sesso [RE]    [MI7]
[LAm]  ci limitiamo a vivere
[REm]  dentro nello stesso letto
un [SOL]po'' per abitudine
o forse un [DO]po'' anche per dispetto [RE]    [MI7]

Non[LAm] è un segreto dai lo sanno [REm]tutti
e tu sei buffa quando [SOL]cerchi
di nasconderlo alla [DO]gente
che ci [MI4]vede liti[MI7]gare
[LAm]   per qualsiasi cosa o nie[REm]nte
per la noia che da [SOL]sempre
ci portiamo dentro
è i[DO]nutile ne[MI4]garlo![MI7]

[LAm]  [REm]  [SOL]  [DO4] [DO]  [RE] [MI7]

La [LAm]nostra relazione
[REm]  oramai non ha più senso
[SOL]   tu hai le tue ragioni
ed io son [DO]forse troppo stanco [RE]    [MI7]
[LAm]  tra l''altro non è facile
[REm]  ricominciare tutto
[SOL]  lasciamo stare dai
non rifacc[DO]iamo un letto ormai disfatto [RE]    [MI7]

Non[LAm] è un segreto dai lo sanno t[REm]utti
e tu sei buffa quando [SOL]cerchi
di nasconderlo alla [DO]gente
che ci [MI4]vede [MI7]litig[LAm]are
per qualsiasi cosa o n[REm]iente
per la noia che da [SOL]sempre
ci portiamo dentro
è i[DO]nutile negarlo[MI4]!    [MI7]

[LAm]  [REm]  [SOL]  [DO4] [DO]  [RE] [MI7]

[LAm]  [REm]  [SOL]  [DO4] [DO]  [RE] [MI7]  [LAm]', 'la-nostra-relazione');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('E…', 'Vasco Rossi', 'ITA', '[MIm7] [DOadd9] [SOL] [RE]

[MIm7] [DOadd9] [SOL] [RE]

[MIm7]E...
vuoi da [DOadd9]bere?
vieni qui[MIm7],tu per me
te lo [DOadd9]dico sottovoce
amo [SOL]te
come [LAm]non ho fatto in fondo
con nes[DOadd9]suna resta qui un secondo

[MIm7]e...
se hai bi[DOadd9]sogno
e non mi [MIm7]trovi
cerc[RE]ami in un [RE7]sogno
amo t[SOL]e
quella [LAm]che non chiede mai
non se la [DOadd9]prende se poi [RE7]non l''ascolto

Arpeggio di chitarra

[SOL]e...
[SIm]uoe
sei un [DO]piccolo fiore per [SOL]me
e l''odore che [SIm]hai
mi ri[DO]corda qualcosa
va [SIm]beh
non sono fe[SOL]dele mai
[RE]  forse lo [DO]so

[MIm7]e...
quando [DOadd9]sento
il tuo pia[MIm7]cere che si muove
[DOadd9]lento
è un brivi[SOL]do
tutte le [LAm]volte che il tuo cuore
batte [DOadd9]con il mio
poi [RE7]nasce il sole

[SOL]e...
uo[SIm]e
ho il pen[DO]siero che parla di [SOL]te
tutto muore ma [SIm]tu
sei la [DO]cosa più cara
che [SIm]ho
e se mordo una [DO]fragola
[RE]  mordo anche [SOL]te
uo[SIm]e
sei un [DO]piccolo fiore per [SOL]me
e l''odore che [SIm]hai
mi ri[DO]corda qualcosa
va [SIm]beh
non sono fe[SOL]dele mai
[RE]  forse lo [SOL]so

[MIm7] [DOadd9] [MIm7]', 'e');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

