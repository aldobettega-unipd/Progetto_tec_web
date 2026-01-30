-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Antartide', 'Pinguini Tattici Nucleari', 'it', '[MI]   [RE6]   [LA]   [MI]
[MI]   [SIm7]   [LA]   [MI] [RE]   [DO#m]  [SI]
[DO#m7]  [LAadd9]  [FA#m7]  [SI4]
[DO#m7]  [LAadd9]  [FA#m7]  [SI4]
[DO#m7]  Ad undici anni quando [LAadd9]eri piccola
Aspet[FA#m7]tavi una lettera da [SI4]Hogwarts
[DO#m7]  Per dimostrare a [LAadd9]tutti i tuoi compagni
Che eri [FA#m7]tu quella diversa da [SI4]loro
Sì ma [DO#m7]non arriv[LAadd9]ò
E la [FA#m7]bimba più dolce pianse [SI4]lacrime amare
A [DO#m7]volte per[LAadd9]ò
Sembra [FA#m7]quasi tu sia ancora [SI4]lì ad aspettare
[DO#m7]  E non so cosa, non so [LAadd9]dove, non so chi, se
[FA#m7]  Nessuno guarda freghi l''[SI4]uva all''MD e
[DO#m7]  Disegni arcobaleni [LAadd9]sopra Pinochet
Credi [FA#m7]che tutte l''eccezioni [SI4]siano regole

[LA]Ahia ahia a[MI]hi
Ma [SI]giuri che tra un po'' te ne an[DO#m7]drai
[MI]Ahia ahia a[MI]hi
Alla [SOL#m]fine però non lo fai [DO#m7]mai
[LA]Ahia ahia a[MI]hi
Provan a [SI]rompere il ghiaccio con [DO#m7]te
[LA]Ahia ahia a[MI]hi
Non sanno [SI]che tu sei l''Antarti[DO#m]de
[DO#m7]  [LAadd9]  [FA#m7]  [SI4]
[DO#m7]  [LAadd9]  [FA#m7]  [SI4]

[DO#m7]Quando le amiche par[LAadd9]lavano di sesso
Ergevi [FA#m7]muri e ti mancava l''[SI4]aria
[DO#m7]  Qualcuna di loro [LAadd9]poi rimase incinta
E invece [FA#m7]tu sempre in cinta mu[SI4]raria
Gli u[DO#m7]omini s[LAadd9]ai
Sono ani[FA#m7]mali strani come ti di[SI4]ceva tua nonna
[DO#m7]  In grado di dimenti[LAadd9]carsi gli olocausti
[FA#m7]  Ma quasi mai il [SI4]viso di una donna

[LA]Ahia ahia a[MI]hi
Ma [SI]giuri che tra un po'' te ne an[DO#m7]drai
[MI]Ahia ahia a[MI]hi
Alla [SOL#m]fine però non lo fai [DO#m7]mai
[LA]Ahia ahia a[MI]hi
Provan a [SI]rompere il ghiaccio con [DO#m7]te
[LA]Ahia ahia a[MI]hi
Non sanno [SI]che tu sei l''Antarti[DO#m]de
[RE]   [LA]   [MI]  [LA] [MI]
[RE]   [LA]   [MI]  [LA] [MI]

[LAadd9]  E con lo sguardo perso
Dentro un [MI]cielo ters[LAadd9]o
Il cuore di JD e la testa di [SI]Kelso
[DO#m7]  E nello studio di papà mettevi i [SI]dischi
[MI]Gigi D''Agostino e poi Stra[SI]vinskij
[FA#m7]  E forse Dio ha creato i buchi nell''o[MI]zono
Per [LA]spiarti quando ti fai la doccia  [SI]
[DO#m7]  E pagheresti tutti i tuoi giorni di sole
Per un [MI]singolo giorno di [SI]pioggia

[LA]Ahia ahia a[MI]hi
Ma [SI]giuri che tra un po'' te ne an[DO#m7]drai
[MI]Ahia ahia a[MI]hi
Alla [SOL#m]fine però non lo fai [DO#m7]mai
[LA]Ahia ahia a[MI]hi
Provan a [SI]rompere il ghiaccio con [DO#m7]te
[LA]Ahia ahia a[MI]hi
Non sanno [SI]che tu sei l''Antarti[DO#m]de
[DO#m7]  [LAadd9]  [FA#m7]  [SI4]
[DO#m7]  [LAadd9]  [FA#m7]  [SI4]
[REadd9]   [LA]   [MI]  [LA] [MI]', 'antartide');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Bagatelle', 'Pinguini Tattici Nucleari', 'it', '[DO#m7]   [LA] [MI]    [SI] [DO#m7]   [LA] [MI]   [SI]
[DO#m7]Di fronte al [LA]fuoco del fa[MI]lò
I linea[SI]menti di Lu[DO#m7]cia erano [LA]ottovo[MI]lanti  [SI]
E [DO#m7]Paolo [LA]se ne innamo[MI]rò
E ri[SI]volse lo [DO#m7]sguardo al [LA]cielo ed ai suoi [MI]santi [SI]
[DO#m7]Io ve lo [LA]chiedo umilmente e [MI]so che siete occu[SI]pati
[DO#m7]Con tutta la gente [LA]più [MI]bisognosa di me [SI]
[DO#m7]Ma mi sono in[LA]namorato [MI]e vi sarei molto [SI]grato
[DO#m7]Se lei ricam[LA]biasse il senti[MI]mento

Amore, a[LA]more sei sempre la [MI]stessa vecchia [SI]solfa
Sei la [LA]porta che scricchiola, il mo[MI]tore che s''in[SI]golfa
L''om[LA]brello dimenticato al[MI]la stazione del [SI]tram
Il ru[LA]more di un sogno che resiste [MI]sotto al peso [SI]dell''età
[DO#m7]   [LA] [MI]    [SI] [DO#m7]   [LA] [MI]

E [DO#m7]sopra al gom[LA]mone trabal[MI]lante  [SI]
Il sorriso di [DO#m7]Fatima era una [LA]nave da cro[MI]ciera[SI]
E circon[DO#m7]dato da [LA]sale misto a s[MI]angue [SI]
Il giovane Sa[DO#m7]mir sco[LA]prì la prima[MI]vera [SI]
[DO#m7]Affacciati [LA]dal gommone [MI]e tendimi [SI]le tue mani
In [DO#m7]fondo se chiudi gli [LA]occhi pare di [MI]essere sul Ti[SI]tanic
[DO#m7]Ma noi non af[LA]fonderemo, [MI]vedrai che ce [SI]la faremo
[DO#m7]Sento già profumo di [LA]pizza ma forse è [MI]solo la liber[SI]tà

Amore, a[LA]more sei sempre la [MI]stessa vecchia [SI]solfa
Sei la [LA]porta che scricchiola, il mo[MI]tore che s''in[SI]golfa
L''om[LA]brello dimenticato al[MI]la stazione del [SI]tram
Il ru[LA]more di un sogno che resiste [MI]sotto al peso [SI]dell''...
e[RE]tà  [LA]    [DO#m]      [DO]
[MI]  [LA] [SI] [DO#m7]   [LA] [MI] [SI]  [MI]
[MI]  [LA] [SI] [DO#m7]   [LA]  [SI]
[LA]  [MI] [SI]   [LA]  [MI] [SI]   [LA]   [MI] [SI]   [LA]   [MI] [SI]

Amore, a[LA]more che da tempo sei scap[MI]pato dalle [SI]chiese
E ti na[LA]scondi nelle foto di un tu[MI]rista giappo[SI]nese
Sei quasi [LA]morto sotto i colpi di fu[MI]cile della [SI]nato
Ed oggi [LA]taci per paura di sem[MI]brare sdolci[SI]nato
[DO#m7]   [LA] [MI]    [SI] [DO#m7]   [LA] [MI]   [SI]
[DO#m7]   [LA] [MI]    [SI] [DO#m7]   [LA] [MI]   [SI]

Amore, a[LA]more sei sempre la [MI]stessa vecchia [SI]solfa
Sei la [LA]porta che scricchiola, il mo[MI]tore che s''in[SI]golfa
L''om[LA]brello dimenticato al[MI]la stazione del [SI]tram
Il ru[LA]more di un sogno che resiste [MI]sotto al peso [SI]dell''età
[LA]e  [MI]del[DO#m7]la    [LA6]real[SI]tà
[LA]  [MI] [SI]   [LA]  [MI] [SI]   [LA]   [MI] [SI]   [LA]   [MI] [SI]', 'bagatelle');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DO#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Bergamo', 'Pinguini Tattici Nucleari', 'it', '[MI]Forse non te l''ho mai detto
ma tu per me sei come [FA#m7]Bergamo
[SI]so che potrebbe farti ridere
[LA]ma migliori complimenti non ne [MI]ho    [LA]   [MI]
sei un treno che ritorna a casa quatto qua[MI7+]tto
per [FA#m7]non svegliare la zona industriale mentre dorme
sei [SI]cinque padri di famiglia cinque spaccia[LA]tori
che la domenica ma[MI]ttina taglian l''erba
quando il sole [LA]sor[MI]ge
la veri[SI7]tà  ...è che

[MI]io vo[SI6]rrei
per[MIadd9]correrti di notte come [LA]fossi un''autostrada
ma [LAm]posso solo to[MI]ccarti
e cazzo non mi [DO#m7]basta e non mi [SI]basterà [LA7+]mai
ma [MI]io vo[SI6]rrei
che [MIadd9]se ti senti persa dentro a[LA]lla malinconia
i [LAm]giorni grigi e cieli neri [MI]tu
ricordi che sei [DO#m7]bella come [SI]casa mi[LA7+]a
ricorda che sei [DO#m7]bella come [SI]casa mi[LA7+]a    [LAm]
[MI]     [LA]  [MI]

[MI]forse non te l''ho mai detto ma [MI7+]tu
per me sei come [FA#m7]Bergamo nana na nana
il [SI]peso di un accento troppo spi[LA]ccato
che non ti toglierà di [MI]certo
l''università fatta a Mi[LA]la-[MI]no
come una vecchia foto di mia nonn[MI5+]a
[FA#m7]quando accompagnò mio nonno a fare il militare
tu [SI]sei speranza dentro agli occhi di re[DO#m7]sta
e ca[LA]pisce che ogni tanto [MI]nella vita
devi solo a[LA]spe[MI]ttare

[MI]io vo[SI6]rrei
per[MIadd9]correrti di notte come [LA]fossi un''autostrada
ma [LAm]posso solo to[MI]ccarti
e cazzo non mi [DO#m7]basta e non mi [SI]basterà [LA7+]mai
ma [MI]io vo[SI6]rrei
che [MIadd9]se ti senti persa dentro a[LA]lla malinconia
i [LAm]giorni grigi e cieli neri [MI]tu
ricordi che sei [DO#m7]bella come [SI]casa mi[LA7+]a
ricorda che sei [DO#m7]bella come [SI]casa mi[LA7+]a....[LAm]
[MI]      [LA7+]  [DO#m7]  [MI]      [LA7+]  [DO#m7]

[MI]        [LA7+]   sei [DO#m7]bella come casa mia
[MI]        [LA7+]   sei [DO#m7]bella come casa [SI]mia
aaahh oh oh uh oh uoh [FA#m7]oh
sei [SOL]bella come [LA]casa mi[MI]a        [LA7+]
sei [DO#m7]bella come casa mia...
[FA#m]    [SI]    [RE6]    [LA]

[MI]io vo[MI7+]rrei
ve[MI7]dere i tuoi pensieri dietro [LA]a quella frangetta
ti [LAm]porto in centro e forse capi[MI]rai
che cosa intendo [FA#m7]quando ti dico
che sei [SI]bella come casa m[MI]ia', 'bergamo');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Ferma a Guardare', 'Pinguini Tattici Nucleari', 'it', '[FA]  [DO]  [REm]  [LAm]
[FA]Io che non ho mai avuto una [DO]donna per un [REm]po''  [LAm]
[FA]Ho sempre tenuto le re[DO]lazioni distan[REm]ti   [LAm]
[FA]Vogliono tutte prender qual[DO]cosa che non [REm]ho   [LAm]
[FA]Non ci si lega alle perso[DO]ne
quando si è gran[REm]di   [LAm]
[FA]Dopo arrivi tu, ehi
[DO]Nei tu occhi blu, ehi
[REm]Trovo la paura che ho [LAm]di innamorarmi
[FA]Tiro su una nube [DO]fatta dalle scuse
[REm]Che mi invento solo per non [LAm]avvicinarmi
[FA]Sotto il tuo portone tu m''hai [DO]chiesto se ci sto
[REm] A salire ed era solo il [LAm]primo appuntamento
[FA]Nello stesso punto dopo[DO] mesi io ti do
[REm] Dispiaceri e tu mi stai man[LAm]dando via dicendo

(Eh, eh, eh, eh)
"[FA]Non [DO]mi [REm] fare [LAm]mai più del ma[FA]le
[DO]Ora non [REm]voglio più parla[LAm]re
Perché non [FA]so [DO]re-[REm]-stare
[LAm]Fermo a guarda[FA]re [DO]te che scen[REm]di giù dalle sca[LAm]le"

In un mono[FA]locale sui Navigli in [DO]quaranta metri
Mi hai [REm]chiesto: "Credi all''amore?"
O se avessi [LAm]dei desideri
Che pen[FA]sassi del futuro o se ave[DO]ssi amici veri
E[REm]ri ubriaca,
ma riempivi entrambi i [LAm]nostri pensieri
Se ti [FA]muovi c''hai qualcosa come [DO]nessuna tipa
E [REm]io delle verità che non [LAm]vuoi che ti dica
Se tor[FA]nassi indietro sai
che non ti a[DO]vrei mai ferita
A[REm]vrei comprato degli anelli per riempirti le dita
Poi lo [FA]facevamo forte, in [DO]piedi sulle por[REm]te
Dici "Non ti fermare[LAm]" (eh, eh, eh, eh)
Però [FA]io guardo le altre
E [DO]so che d''altra par[REm]te
Non lo puoi perdonare[LAm] (eh, eh, eh, eh)
[FA]Sotto il tuo portone tu m''hai [DO]chiesto se ci sto
[REm] A salire ed era solo il [LAm]primo appuntamento
[FA]Nello stesso punto dopo [DO]mesi io ti do
[REm] Dispiaceri e tu mi stai man[LAm]dando via dicendo

(Eh, eh, eh, eh)
"[FA]Non [DO]mi [REm] fare [LAm]mai più del ma[FA]le
[DO]Ora non [REm]voglio più parla[LAm]re
Perché non [FA]so [DO]re-[REm]-stare
[LAm]Fermo a guarda[FA]re [DO]te che scen[REm]di giù dalle sca[LAm]le"

"Te ne vai
"[FA]Non [DO]mi [REm] fare [LAm]mai più del ma[FA]le
[DO]Ora non [REm]voglio più parla[LAm]re
Perché non [FA]so [DO]re-[REm]-stare
[LAm]Fermo a guarda[FA]re [DO]te che scen[REm]di giù dalle sca[LAm]le"
Te ne vai[FA]    [DO]    [REm]     [LAm]
[FA]  [DO]  [REm]  [LAm]', 'ferma-a-guardare');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'REm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Giovani Wannabe', 'Pinguini Tattici Nucleari', 'it', '[RE]   [MIm]   [SIm]   [SOL]
[RE]   [MIm7]   [SIm7]   [SOL]
Nel cuore hai [RE]solamente foto di pae[MIm7]saggi
E non c''è [SIm]posto per le tue foto [SOL]con me
In auto [RE]dormi ed io non riesco a non guar[MIm7]darti
Sei bella da schian[SIm]tarsi, da sfiorare il [SOL]guard rail
Da bimbo [RE]mi ricordo odiavo le va[MIm7]canze
Tranne quando pio[SIm]veva e stavo in camera in [SOL]hotel
Spaccami [RE]come Hendrix con la Strato[MIm7]caster
Fai uscire le mie [SIm]ansie, ma non chiedi il [SOL]cachet
Sulle tue [LA]gambe ho letto il senso della [SIm7]vita
Dimen[RE]tica la [SOL]Bibbia o le pagine di Freud
È meglio [LA]se restiamo amici come [SIm7]prima
Ma poi facciam ma[SOLadd9]ttina per parlare di noi

Noi siamo [RE]giovani wannabe ([MIm7]Oh-oh oh-oh)
Ti dedi[SIm7]co le autostrade che [SOL]portano al mare
[RE]Giovani wannabe ([MIm7]Oh-oh oh-oh)
Figli dei [SOLadd9]fiori del male, guerre lont[LA]ane, [SIm7]noi
Sopravvissuti anche alla [LA]fine della storia
[SOLadd9] Voglio incontrarti ancora
al prossimo Big [LA]Bang (Eh [SIm7]eh)
Sul viso leggi il mio pa[LA]ssato come Dorian
[SOLadd9]Portami dove vuoi, basta sia lontano da me[RE]

Nel feed hai [RE]solamente foto di pae[MIm7]saggi
E forse è [SIm]perché sei un paesaggio pur[SOL]e tu
E con i [RE]piedi mi disegni i dino[MIm7]sauri
Sopra il vetro dell''[SIm]Audi non la pulir[SOL]ò più
E do il tuo [LA]nome a un uragano tropi[SIm7]cale
Ogni [RE]telegior[SOL]nale poi parlerà di te
Sai che si [LA]nasce soli e si muore so[SIm7]listi
Ma per fortuna e[SOLadd9]sisti, sei tutta la mia band e

Noi siamo [RE]giovani wannabe ([MIm7]Oh-oh oh-oh)
Ti dedi[SIm7]co le autostrade che [SOL]portano al mare
[RE]Giovani wannabe ([MIm7]Oh-oh oh-oh)
Figli dei [SOLadd9]fiori del male, guerre lont[LA]ane, [SIm7]noi
Sopravvissuti anche alla [LA]fine della storia
[SOLadd9] Voglio incontrarti ancora
al prossimo Big [LA]Bang (Eh [SIm7]eh)
Sul viso leggi il mio pa[LA]ssato come Dorian
[SOLadd9]Portami dove vuoi

Con te inizia la [RE]Belle Époque,
che tem[MIm7]pismo: o''clock
Bel te[SIm]ppismo black bloc che [LA]c''hai
Sei la [RE]storia, Marc Bloch, un mo[MIm7]mento amarcord
Dai, scam[SIm]biamoci tutti i [LA]guai
Come [SOL]Jack on the rock
dammi un [LA]viaggio on the road
Posti [SIm7]che non hai visto m[LA]ai
Negli [SOL]sfondi di iOS, tra i pia[LA]neti di Spock
Lasci il [SIm7]segno dovunque [LA]vai

Noi siamo [RE]giovani wannabe ([MIm7]Oh-oh oh-oh)
Ti dedi[SIm7]co le autostrade che [SOL]portano al mare
[RE]Giovani wannabe ([MIm7]Oh-oh oh-oh)
Figli dei [SOLadd9]fiori del male, guerre lonta[LA]ne, n[SIm7]oi
Sopravvissuti anche alla [LA]fine della storia
[SOLadd9] Voglio incontrarti ancora
al prossimo Big [LA]Bang (Eh [SIm7]eh)
Sul viso leggi il mio pa[LA]ssato come Dorian
[SOLadd9]Portami dove vuoi, basta sia lontano da me', 'giovani-wannabe');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Giulia', 'Pinguini Tattici Nucleari', 'it', 'Giulia non ridere, ti [DO]prego, non crei[RE]amo casi[SOL]ni
La tua felicità[DO] sveglia [RE]i coinquili[SOL]ni
Poi ci lasciano i bi[DO]glietti atta[RE]ccati sul le[MIm]tto
Perché di notte si d[LAm]orme e si porta rispe[RE]tto
Giulia, se un giorno noi fini[DO]amo di [RE]fare l''amo[SOL]re
Ti giuro che prendo la [DO]laurea e che di[RE]vento dotto[SOL]re
E ci compriamo una [DO]casa grossa [RE]come il tuo le[MIm]tto
Dove si ride [LAm]sempre, non si porta ri[RE]spetto
Giulia, non essere abba[MIm]ttuta per l''universi[SI]tà
L''esame era dif[SOL]ficile, lo dico io al tuo pap[LA]à
E poi si vede, si ve[DO]de, che quel tuo professo[SOL]re
Non ha mai riso una [SI]volta e non conosce l''am[MIm]ore

[MIm]Uoh-oh-oh-oh-[RE]oh...  [SOL]       [DO]      [SOL]       [RE]
[MIm]Uoh-oh-oh-oh-[RE]oh...  [SOL]       [DO]    [RE]    [MIm]

Giulia abbracciami for[DO]te come in un [RE]luogo comu[SOL]ne
Sono la tua pianu[DO]ra, piangi [RE]pure il tuo fiu[SOL]me
Sveglia i coinqui[DO]lini e do[RE]mani ve[MIm]drai
Mi spaccheranno la f[LAm]accia mentre tu dormi[RE]rai
Giulia, ieri ero al [DO]bar con gli a[RE]mici a be[SOL]re
E ti ho vista lì na[DO]scosta dietro ad [RE]un camerie[SOL]re
Eh-eh-eh, eri con uno[DO], sì[RE], ti giuro su dio [MIm]

(eri con uno, ti giuro su Dio)
E per un solo se[LAm]condo m''è parso non fossi [RE]io
Giulia, ti prego, non ur[MIm]lare,
non ti accuso di [SI]niente
No amò, hai travi[SOL]sato, sono un defi[LA]ciente
Era il tuo profe[DO]ssore, quello del brutto [SOL]voto
Vabbè, dormo sul di[SI]vano ma terrò una tua [MIm]foto

[MIm]Uoh-oh-oh-oh-[RE]oh...  [SOL]       [DO]      [SOL]       [RE]
[MIm]Uoh-oh-oh-oh-[RE]oh...  [SOL]       [DO]    [RE]    [MIm]
[MIm]Uoh-oh-oh-oh-[RE]oh...  [SOL]       [DO]      [SOL]       [RE]
[MIm]Uoh-oh-oh-oh-[RE]oh...  [SOL]       [DO]    [RE]    [MIm]

Giulia, sono due me[DO]si che dormo [RE]su sto diva[SOL]no
Io continuo a aspe[DO]ttarti, anche se [RE]forse inva[SOL]no
Ho lasciato un bi[DO]glietto per t[RE]e e il profes[SOL]sore
Potete fate meno ru[DO]more quando [RE]fate l''amo[SOL]re?', 'giulia');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Irene', 'Pinguini Tattici Nucleari', 'it', '[SOL]  [SIm]  [DO]   [MIm]  [RE]  [SOL]  [DO]  [RE]
I[SOL]rene, questa [SIm]sera
la faccia te [DO]la strapperei via
Così fa[MIm]resti paura al [RE]mondo
ma reste[SOL]resti sempre [DO]mia
In questa [SOL]notte di buio [SIm]pesto
che forse era [DO]buio pomodoro
Le mie [MIm]mani Brigate [RE]Rosse
accarezzano [SOL]te che sei Aldo [DO]Moro
E l''hai [SOL]letto nelle [SIm]stelle
che la [DO]musica ci darà il pane
Il rea[MIm]lismo l''avrai lasc[RE]iato
a qualche merca[SOL]tino equosolida[DO]le
I[SOL]rene, non ci [SIm]credere poi [DO]tanto allo zodiaco
Che la [MIm]musica il pane quoti[RE]diano
lo dà [SOL]solo a chi è celiac[DO]o

[SOL]Il futuro che ti potevo dare l''ho
[DO]Barattato per i vinili che ho in sof[RE]fitta
[MIm7]Te li regalerò quando avrai perso le spe[DO]ranze
E ti sentirai scon[LAm7]fitta
[SOL]Il futuro che ti potevo dare
[DO]Alla fine è una fregatura meglio [RE]
[MIm7]Che ti sposi un ingegnere
Un notaio od un dentista
Op[DO]pure, oppure, oppure il tuo ana[LAm7]lista
[SOL]  [RE]  [MIm]    [RE]  [DO]
[LAm7]  [RE]  [MIm]    [RE]  [DO]    [SOL]

Una [SOL]luce indaga[SIm]trice
co[DO]lor della cedrata
Brucia [MIm]forte in questa [RE]stanza
e incene[SOL]risce la se[DO]rata
E mentre [SOL]dormi un rivolo [SIm]di saliva
ti [DO]scocca dalla bocca
Preciso [MIm]come un bacio mai [RE]dato
o un oro[SOL]logio che rin[DO]tocca
I[SOL]rene, i cantau[SIm]tori dico[DO]no che l''importante
Non è q[MIm]uante volte [RE]cadi,
ma se hai il co[SOL]raggio di rial[DO]zarti
Ma [SOL]do--[SIm]po   [DO]mille cadute roventi
Non ci [MIm]resta che impar[RE]are
a viver[SOL]e come i serp[DO]enti  [SOL]

[SOL]E il futuro che ti potevo dare l''ho
[DO]Barattato per i vinili che ho in sof[RE]fitta
[MIm7]Te li regalerò quando avrai perso le spe[DO]ranze
E vorrai star solo [LAm7]zitta
[SOL]Il futuro che ti potevo dare
[DO]Alla fine è una fregatura, [RE]senti
[MIm7]Corri via da tutto questo
Scappa forte, finché puoi
[DO] Ricordami come Neville Paciock
In un mondo di [LAm7]Draco Malfoy
[SOL]  [RE]  [MIm]    [RE]  [DO]
[LAm7]  [RE]  [MIm]    [RE]  [LAm7]

Irene [MIm]non fi[SIm]darti [DO]mai  [SOL]    [RE]
Dei testi [MIm]delle [SIm]mie can[DO]zoni [SOL]    [RE]
Soprat[MIm]tutto di [SIm]quelle da [DO]parafra[SOL]sare  [RE]
Che [MIm]sono [SIm]le peg[DO]giori [SOL]
[RE]Fida[MIm]ti del [SIm]pane [DO]fresc[SOL]o
Nelle [MIm7]mattin[SIm]e d''in[DO]verno
E del [MIm7]parad[SIm]iso [DO]solo [SOL]se,
Solo se [MIm7]visto [SIm]dall''in[DO]ferno
[SOL]  [RE]  [MIm]    [RE]  [DO]
[LAm7]  [RE]  [MIm]    [RE]  [DOadd9]

Il futuro che ti potevo dare l''ho
Barattato per i vinili che ho in soffitta
Te li re[SOL]galerò quando avrai perso le speranze
E ti sentirai sconfitta', 'irene');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Islanda', 'Pinguini Tattici Nucleari', 'it', 'Ci siamo sepa[FA#m7]rati
Come due pia[REadd9]neti senza gravità[LA]
Come amici dopo l''università[LAadd9]
Sì, come due fra[REadd9]telli per l''eredità[LA]
Ci siamo confi[FA#m7]dati mille sogni
Ed [REadd9]ora siamo a punto e a c[LA]apo
A raccontarli a gente a cui non frega un ca[LAadd9]zzo
Spero tu almeno [REadd9]uno l''abbia realizza[LA]to (Ah, no?[MI])
Volevo il [FA#m7]nord e cercavi il [REadd9]sud
Correnti o[LA]pposte ma stesso mood
Hai chiesto il [DO#m7]dolce, ero l''amuse-[REadd9]bouche
Ti tiravo [LA]su, su, su
Ti chiamo an[FA#m7]cora, ma non lo [REadd9]sai
Sul vecchio [LA]numero di anni fa
Ma l''hai cam[DO#m7]biato, non ci sei [RE6]più
E fa tu-tu-[LA]tu (Tu-tu-tu)

Ma [FA#m7]tu ci [REadd9]pensi  [LA]mai
Alle cose che i[MI]o so di t[FA#m7]e
E che a[REadd9]desso non servono a [LA]niente?
[MI] Ma di [FA#m7]me cos[REadd9]''è che s[LA]ai?
Che piacevo a tua mamma[FA#m7]?
Che cre[REadd9]devo nel karma?[LA]
Che sognavo di andare in I[FA#m7]slanda?[REadd9]        [LA]
In I[FA#m7]slanda?[REadd9]        [LA]

Un auto a no[FA#m7]leggio con dentro
solo un [REadd9]disco dei Sigur R[LA]ós
Il vento che ci spinge lungo la Ring Roa[DO#m7]d
Lo squalo dise[REadd9]gnato sopra la t-shi[LA]rt
E sì, però poi mi [FA#m7]sveglio
e sono ancora [REadd9]qui nel mio monoloc[LA]ale
Lo smog al posto dell''aurora borea[DO#m7]le
I tuoi sogni che [REadd9]non mi lasciano più in p[LA]ace
(Non mi lasciano più in pace)[MI]
Io Holly e [FA#m7]Benji, tu Sailor [REadd9]Moon
Storie o[LA]pposte ma stesso mood
Cercavo il [DO#m7]cielo nei tuoi occhi [REadd9]blu
Mi tiravi [LA]su, su, su
Ho [MI]due bi[FA#m7]glietti per dove [REadd9]vuoi
Sarebbe [LA]bello tornare in noi
Ti chiamo an[DO#m7]cora, non ci sei [REadd9]più
E fa tu-tu-[LA]tu (Tu-tu-tu)

Ma [FA#m7]tu ci [REadd9]pensi  [LA]mai
Alle cose che i[MI]o so di t[FA#m7]e
E che a[REadd9]desso non servono a [LA]niente?
[MI] Ma di [FA#m7]me cos[REadd9]''è che s[LA]ai?
Che piacevo a tua mamma[FA#m7]?
Che cre[REadd9]devo nel karma[LA]?
Che sognavo di andare in I[FA#m7]slanda?[REadd9]        [LA]
[FA#m7]  [REadd9]  [LA]

Forse vi[FA#m7]cini col tempo sa[REadd9]remmo finiti ad o[LA]diarci
Ferirci per [DO#m7]noia
e chiedere all''[REadd9]altro: "Che cosa [LA]c''è?"
Al tuo vecchio [FA#m7]numero
ora ri[REadd9]sponde un''agenzia di [LA]viaggi
E final[DO#m7]mente io vado in I[REadd9]slanda, ma senza di [LA]te

Ma [FA#m7]tu ci [REadd9]pensi  [LA]mai
Alle cose che i[MI]o so di t[FA#m7]e
E che a[REadd9]desso non servono a [LA]niente?
[MI] Ma di [FA#m7]me cos[REadd9]''è che s[LA]ai?
Che piacevo a tua mamma[FA#m7]?
Che cre[REadd9]devo nel karma[LA]?
Che sognavo di andare in I[FA#m7]slanda?[REadd9]        [LA]
In I[FA#m7]slanda?[REadd9]        [LA]', 'islanda');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Banalità del Mare', 'Pinguini Tattici Nucleari', 'it', '[LA]  [MI]  [DO#m]  [SI]
[LA]  [MI]  [DO#m]  [SI]
[LA] Ti prego non usciamo [MI]questa sera
[DO#m] Restiamo qui ad accarez[SI]zare il gatto
[LA] M''hai detto "guarda, c''è la [MI]luna piena"
[DO#m]Poi abbiamo litigato, hai [SI]rotto un piatto
[LA] Ci siamo persi in un bic[MI]chiere d''acqua
[DO#m] E poi ci siamo ritro[SI]vati in mare
[LA] Promettimi che se io [MI]metto i Kooks
[DO#m]Poi tu mi insegne[SI]rai a ballare
[LA]I tuoi schiaffi [MI]finti alla Bud [DO#m]Spencer[SI]
[LA]Lascian segni [MI]veri sulla [DO#m]pelle-[SI]e-e
[LA]Scherzi balli [MI]ridi e fumi [DO#m]sempre[SI]
E [LA]forse è vero, [MI]non ti manca [DO#m]niente

[DO#m]Cosa [LA]mi di[MI]rai
Quando sa[SI]rò lontano
[DO#m]Vieni [LA]nei miei [MI]guai
Ti prendo [SI]per la mano
[DO#m]Guarda [LA]la cit[MI]tà
Potrebbe an[SI]che bruciare
[DO#m]Ti com[LA]muove [MI]la banali[SI]tà del mare
[DO#m]Oh... [LA]    [MI]    [SI]    [DO#m]      [LA]    [MI]    [SI]

[LA] E resta qui con me tut[MI]ta la notte
[DO#m] E ti giuro che ti [SI]salverò
[LA] Dalla gente che ti [MI]pesta i piedi
[DO#m]Mentre balla il [SI]reggaeton
[LA]Con te i lune[MI]dì sanno di [DO#m]saba-[SI]to
[LA]Non ricordo ne[MI]anche dove [DO#m]abi--[SI]to-o-o
[LA]Scherzi, balli, [MI]ridi e fumi [DO#m]sempre[SI]
E [LA]forse è vero [MI]non ci manca [DO#m]niente[SI]

[DO#m]Cosa [LA]mi di[MI]rai
Quando sa[SI]rò lontano
[DO#m]Vieni [LA]nei miei [MI]guai
Ti prendo [SI]per la mano
[DO#m]Guarda [LA]la cit[MI]tà
Potrebbe an[SI]che bruciare
[DO#m]Ti com[LA]muove [MI]la banali[SI]tà del mare
[DO#m]Oh... [LA]    [MI]    [SI]    [DO#m]      [LA]    [MI]    [SI]

Ti [LA]hanno vista per le strade a [MI]piedi nudi sul cemento
[DO#m]Che ballavi con le amiche il [SI]rock''n''roll
[LA]Dicono che questa estate [MI]sarà la più calda della [DO#m]storia
Ma ti giuro amore [SI]non lo so
[LA]Non ti porto sulla spiaggia
[MI]Noi siam destinati a cose [DO#m]grandi
Andiamo sulla Luna in [SI]autostop
[LA]Ho bussato sopra quei tuoi [MI]occhi blu
Ti giuro che fino [DO#m]a che tu non apri io ti a[SI]spetterò

[DO#m]Cosa [LA]mi di[MI]rai
Quando sa[SI]rò lontano
[DO#m]Vieni [LA]nei miei [MI]guai
Ti prendo [SI]per la mano
[DO#m]Guarda [LA]la cit[MI]tà
Potrebbe an[SI]che bruciare
[DO#m]Ti com[LA]muove [MI]la banali[SI]tà del mare
[DO#m]Oh... [LA]    [MI]    [SI]    [DO#m]      [LA]    [MI]    [SI]
[DO#m]Oh... [LA]    [MI]    [SI]    [DO#m]      [LA]    [MI]    [SI]', 'la-banalita-del-mare');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Lake Washington Boulevard', 'Pinguini Tattici Nucleari', 'it', 'Amore [SOL]mio
Da [DO]dove vengo [SOL]io
Un [DO]bacio ed un ad[MIm]dio
So[RE]no la stessa [DO]cosa
Vieni con [SOL]me
Ti [DO]porterò do[SOL]ve
La [DO]solitudine [MIm]è un regalo più [RE]bello di una [DO]rosa

Lui era [MIm7]figlio dei ri[DOadd9]tardi del t[SOL]reno
Che fece[MIm7]ro conoscer [DOadd9]mamma e pap[SOL]à
Lei era [MIm7]bella come il [DOadd9]cielo più n[SOL]ero
Cercava il [MIm7]senso della [DOadd9]vita nei b[SOL]ar
Fingevano di [MIm7]essere in un [DOadd9]cinepanett[SOL]one
Perchè lì la [MIm7]vita non non [DOadd9]sembra mai d[SOL]ura
E invece [MIm7]qua in questa fot[DOadd9]tuta pro[SOL]vincia
Ci [LAm7]vuole [SOL]del  co[DO]raggio anche [RE]per aver paur[MIm7]a

A[RE7]more [SOL]mio
Da [DO]dove vengo [SOL]io
Un [DO]bacio ed un ad[MIm]dio
So[RE]no la stessa [DO]cosa
Vieni con [SOL]me
Ti [DO]porterò do[SOL]ve
La [DO]solitudine [MIm]è un regalo più [RE]bello di una r[DO]osa
Amarmi [SOL]sai
Non [DO]so se ti con[SOL]viene
Mi [DO]manchi e sai p[MIm]erchè
Per[RE]chè non miri be[DO]ne
Si senti[SOL]rà uno [DO]sparo in lonta[SOL]nanza
Poi un ru[DO]more di ambu[MIm]lanza
E io [RE]non ci sarò [SOL]più
[MIm7]  [DO]  [SOL]    [MIm7]  [DO]  [SOL]
[MIm7]  [DO]  [SOL]    [LAm7] [SOL] [DO]  [RE]  [MIm]

[RE]Faceva[MIm7]no l''amore in [DOadd9]codice M[SOL]orse
Di notte [MIm7]sopra il tetto di [DOadd9]un monoloc[SOL]ale
Per man[MIm7]dare un mes[DOadd9]saggio agli al[SOL]ieni
In fondo anche noi [MIm7]uomini non [DOadd9]siamo così [SOL]male
Un giorno [MIm7]lui le chiese: “[DOadd9]Chiara vuoi spo[SOL]sarmi?”
Con un a[MIm7]nello in mano e un [DOadd9]sorriso for[SOL]zato
Lei ci pen[MIm7]sò davvero [DOadd9]un minuto o [SOL]due
Poi disse: “No no, us[MIm7]ciamo a pren[DO]derci un ge[SOL]lato”

A[RE7]more [SOL]mio
Da [DO]dove vengo [SOL]io
Un [DO]bacio ed un ad[MIm]dio
So[RE]no la stessa c[DO]osa
Vieni con [SOL]me
Ti [DO]porterò do[SOL]ve
La [DO]solitudine [MIm]è un regalo più [RE]bello di una ro[DO]sa
Amarmi [SOL]sai
Non [DO]so se ti con[SOL]viene
Mi [DO]manchi e sai p[MIm]erchè
Per[RE]chè non miri be[DO]ne
Si senti[SOL]rà uno [DO]sparo in lonta[SOL]nanza
Poi un ru[DO]more di [RE]ambu[MIm]lanza
E io [RE]non ci sarò [SOL]più
[DO]   [MIm] [RE]  [SOL]   [SI] [DO]
[DO]   [MIm] [RE]  [SOL]   [SI] [DO] [RE] [SI]

Quando arri[MIm7]varono gli [DO]investiga[SOL]tori
Le chiese[MIm7]ro che cosa [DO]fosse capi[SOL]tato
E lei ri[MIm7]spose di [DO]non saperne [SOL]nulla
Poi disse: “[DO]Esco
Vado a [RE]prendermi un ge[MIm7]lato”
[MIm]  [DO]  [SOL]', 'lake-washington-boulevard');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Storia Infinita', 'Pinguini Tattici Nucleari', 'it', '[MI]   [LA] [MI]    [LA] [MI]
[MI]   [LA] [MI]  [DO#m]  [LA] [MI]
Ti ho [MI]scritto una lettera che [LA]sa can[MI]tare
per tutti i giorni in cui vor[LA]rai dor[MI]mire
quattrocento colpi [LA]dentro al [MI]cuore,
corse sul mare come [LA]due pi[MI]stole
[DO#m7]ma ora [LA]non corro [MI]più   [LA]   [MI]
non corro più [LA]   [MI]
[MI]Cartoline eroti[LA]che nei [MI]bar
vecchi che giocavano a [LA]brisco[MI]la
potevo leggerti nell''[LA]ani[MI]ma
dietro le lenti nere [LA]dei Ray-[MI]Ban  [DO#m7]
sì, [LA]dei tuoi Ray-[MI]Ban

Un [DO#m7]tedesco suonava Wonder[LA]wall ad un falò
di [MI]notte lui giocava a far l''ar[SI]tista
men[DO#m7]tre tu sorridevi e non guar[LA]davi, no,
mia [MI]dolce Venere di [SI]Insta
perché sei [FA#m7]stata l''estate migliore [MI]della mia [LA]vita,
è la verità
sem[FA#7]brava la storia infinita
e forse era [SI]solo la felicità

E [MI]quanto siamo bravi a [LA]finge[MI]re
di non provare senti[LA]men[MI]ti
e siamo felici come [LA]Pasque, [MI]sì,
ma Pasque del 20[LA]2--[MI]0
e tu dicevi di a[LA]mare la mia [MI]s
invece ora chis[LA]sà che cosa [MI]pensi
esser felici dura il [LA]tempo di un [MI]ballo [LA]

fra Dustin e Nancy

Un [DO#m7]tedesco suonava Wonder[LA]wall ad un falò
di [MI]notte lui giocava a far l''ar[SI]tista
men[DO#m7]tre tu sorridevi e non guar[LA]davi, no,
mia [MI]dolce Venere di [SI]Insta
perché sei [FA#m7]stata l''estate migliore [MI]della mia [LA]vita,
è la verità
sem[FA#7]brava la storia infinita
e forse era [SI]solo la felicità
[LA]  [MI]  [SI]

Anima punk, occhi di Peter P[LA]an  [MI]    [SI]
una poesia dentro al cesso di un b[LA]ar  [MI]    [SI]
una canzone che non finir[LA]à   [MI]    [SI]
Aspetta, aspetta, aspetta com''è che fa?

Un [DO#m7]tedesco suonava Wonder[LA]wall ad un falò
col [MI]testo scritto sopra al fazzo[SI]letto
e [DO#m7]siamo solo mostri con u[LA]na grande paura
di tro[MI]vare un bambino sotto al [SI]letto
[DO#m7]Tu arrossivi ma senza un perc[LA]hé,
comoda dentro ad un clic[MI]hé
innamorata e non di [SI]me
o forse sì[DO#m7]
Ho perso i miei denti da [LA]latte
perché son diventato g[MI]rande
t''ho usata come una ris[SI]posta
ma eri milioni di doman[MI]de   [LA]   [MI]      [LA]   [MI]
[MI]    [LA] [MI]  [DO#m]  [LA] [MI]', 'la-storia-infinita');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Nonono', 'Pinguini Tattici Nucleari', 'it', '[SOL]  [LAm]  [MIm]  [DO]
[SOL]  [LAm]  [MIm]  [DO]
[SOL] E ieri ho fatto un [LAm]sogno (no no [MIm]no)
E c''eri dentro anche [DO]te
[SOL] Leggevi "Piccoli [LAm]brividi" (no no [MIm]no)
E bevevi un caf[DO]fè con [SOL]me
Non riuscivamo a dor[LAm]mire (no no [MIm]no)
Ci siamo messi a [DO]ride[SOL]re
Dalla paura di mo[LAm]rire
Dalla voglia di par[MIm]tire della gioia di [DO]vive[SOL]re
Ti leggevo la [LAm]mano (no no [MIm]no)
E la imparavo a me[DO]moria
[SOL] E se ho fortuna, ti [LAm]giuro che un giorno
ti [MIm]porto nei libri di [DO]storia  [SOL]
E me l''ha detto il paki[LAm]stano (no no [MIm]no)
Da cui ho comprato le [DO]rose  [SOL]
"Capo ricordati che [LAm]la felicità
sta [DO]dentro alle piccole cose"

Oh [SOL]yeeeee[LAm7]...   [MIm]
E spetti[DO]nata resti qu[SOL]a
Perché la più [LAm7]grande libert[MIm]à
È quella che ti [DO]tiene in catene
Oh [SOL]yeeeee[LAm7]...   [MIm]
I pugni in [DO]faccia che mi d[SOL]ai
Li conser[LAm7]vo nell''ani[MIm]ma
Accanto a tutti i "[DO]ti voglio bene"  [SOL]

[SOL] Ieri mi sono sve[LAm]gliato (no no [MIm]no)
Che erano circa le [DO]tre  [SOL]
Quando il telefono non [LAm]ha squillato
[MIm]Io l''ho capito che eri [DO]te
Hai detto[SOL] "impara a vivere da [LAm]solo" (no no [MIm]no)
Ma solo ci sapevo [DO]stare
[SOL]La mia solitu[LAm]dine era un mondo [MIm]magico
che io ti vo[DO]levo mostrare [SOL]
Che bello quando balli [LAm]con quegli occhi gelidi
[MIm] Mi piaci se ti muovi [DO]come fanno i lemuri
[SOL] Sono l''ultimo dei tuoi pen[LAm]sieri, tu mi eviti
Ma gli [MIm]ultimi saranno i primi [DO]come Steven Bradbury
[SOL] Sei la sfida fi[LAm]nale di Takeshi''s Cas[MIm]tle
Io ci provo a ca[DO]pirti e non capisco un caz[SOL]zo
Guarda che notte[LAm] c''è la luna piena
[DO] E dici "ti amo solo perché mi fai pena"

Oh [SOL]yeeeee[LAm7]...   [MIm]
E spetti[DO]nata resti qu[SOL]a
Perché la più [LAm7]grande libert[MIm]à
È quella che ti [DO]tiene in catene
Oh [SOL]yeeeee[LAm7]...   [MIm]
I pugni in [DO]faccia che mi d[SOL]ai
Li conser[LAm7]vo nell''ani[MIm]ma
Accanto a tutti i "[DO]ti voglio bene"  [SOL]

[DOadd9] Perché le televendi[RE]te
[MIm]Di coltelli a notte fonda [SOL]sui canali [SOL]di provincia
[DOadd9] Mi parlano di [RE]te
E [MIm]dicono che dopo tutto [SOL]sempre giorno r[SOL]icomincia [LAm7]ma
Ti giuro non lo [RE]so...[SOL]
Ti giuro non lo so

Oh [SOL]yeeeee[LAm7]...   [MIm]
E spetti[DO]nata resti qu[SOL]a
Perché la più [LAm7]grande libert[MIm]à
È quella che ti [DO]tiene in catene
Oh [SOL]yeeeee[LAm7]...   [MIm]
I pugni in [DO]faccia che mi d[SOL]ai
Li conser[LAm7]vo nell''ani[MIm]ma
Accanto a tutti i "[DO]ti voglio bene"
Oh [SOL]yeeeee[LAm7]...   [MIm]
Tu sei la [DO]mia felicit[SOL]à
Un po'' co[LAm7]me il Festivalb[MIm]ar
Che da bambino [DO]guardavo al mare
Oh [SOL]yeeeee[LAm7]...   [MIm]
E spetti[DO]nata resti qu[SOL]a
Perché la più [LAm7]grande libert[MIm]à
È quella che non [DO]ti lascia andare [SOL]via', 'nonono');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Pastello Bianco', 'Pinguini Tattici Nucleari', 'it', '[LAm]   [FA]   [DO]   [REm7]
[LAm] E se m''hai visto [LAm7]piangere
[FA] Sappi che era un''illu[FA6]sione otti[DO]ca
Stavo solo togliendo il mare [REm]dai miei occhi
[LAm] Perché ogni tanto [LAm7]per andare a[FA]vanti sai,
a[FA6]vanti sai [DO]
Bisogna lasciar perdere i ve[REm]cchi ricordi
[LAm] Mi chiedi come sto e non te lo di[FA]rò
Il nostro vecchio gioco era di non parlare [DO]mai
Come due serial killer[REm] interrogati all''FBI
[LAm] I tuoi segreti poi a chi li racconte[FA]rai?
Tu che rimani sempre la mia password del Wi-[DO]Fi
E chi sa se lo [SOL4]sai    [SOL]

Per favore, non [DO]piangere
E non ci rimanere m[FA]ale
Che noi due ci conosciamo b[LAm]ene
Dalla prima element[SOL]are
E scrivevo tutti i miei seg[REm7]reti
Col pastello bianco [DO]sul di[FA]ario
Speravo che venissi a color[LAm]arli
E ti giuro, sto ancora aspett[SOL]ando

[LAm] E se m''hai visto ridere
[FA] Sappi che era neve nel deserto m[DO]a
Ormai di questi tempi non [REm]mi stupisce niente
[LAm] Ti chiedo come stai e non me lo di[FA]rai
Io con la Coca-Cola, tu con la tisana [DO]thai
Perché un addio suona troppo serio[REm]

E allora ti dirò bye bye (bye bye)
[LAm] Seduti dentro un bar poi si litighe[FA]rà
Per ogni cosa, pure per il conto da pa[DO]gare
Lo sai mi manche[SOL4]rà, na-na-na-[SOL]na

Per favore, non [DO]piangere
E non ci rimanere m[FA]ale
Che noi due ci conosciamo b[LAm]ene
Dalla prima element[SOL]are
E scrivevo tutti i miei seg[REm7]reti
Col pastello bianco [DO]sul di[FA]ario
Speravo che venissi a color[LAm]arli
E ti giuro, sto ancora aspett[SOL]ando

[LAm] Tu mi [SOL]hai insegnato la diffe[DO]renza
tra l[FA]e ciliegie e le ama[LAm]rene
E i[SOL]o non la dimenticherò [DO]più [FA]
[LAm] E ti augu[SOL]ro il meglio, i cieli ste[DO]llati
Le notti [FA]migliori e le docce di [LAm]altri
Dove[SOL] tu forse non stonerai [DO]più

Per favore, non [LAm]piangere
E non ci rimanere m[FA]ale
Che noi due ci conosciamo b[DO]ene
Dalla prima element[SOL]are
E scrivevo tutti i miei seg[REm7]reti
Col pastello bianco [DO]sul di[FA]ario
Speravo che venissi a color[LAm]arli
E ti giuro, sto ancora aspett[SOL]ando

[REm7]   [DO] [FA]   [SOL] [LAm]    [SOL]', 'pastello-bianco');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Ricordi', 'Pinguini Tattici Nucleari', 'it', '[DO#m]    [SI]    [MI]    [LA]
Almeno [DO#m]fino a domattina ti pro[SI]metto che
Sarò la [MI]faccia di cui hai più bi[LA]sogno
L''amico [DO#m]di scuola che ti ruba le [SI]biglie
O l''amante impo[MI]ssibile taciuto in un sogno
"Meglio bru[DO#m]ciare che spegnersi lenta[SI]mente"
L''ha detto [MI]chi non deve illuminare gli [LA]altri
Ma io ho paura [DO#m]sempre di rimanere al [SI]buio
Mentire alla tua [MI]mente mentre provo a salvarti
Meglio non [DO#m]dire niente
aspettando il ma[SI]ttino, sorrido
Se penso al [MI]nome che tu mi darai do[LA]mani
Per reinse[DO#m]gnarti ancora il segno della [SI]croce
Così avrò ancora una [MI]scusa per toccare quelle mani

[MI]Vedi, ci sono dei ricordi che mi [SOL#m]devi
Sei grande, ma ti chiamo ancora [FA#m]baby
Ho gli occhi rossi, ma non te ne a[LA]ccorgi

Ti guardo mentre dormi
Ma solo ieri [DO#m]c''eri, nei giorni neri
Quelli che piove troppo [LA]forte per stare in piedi
E fottevamo anche la [FA#m7]morte volando leggeri
M''hai chiesto, "Dimmi cosa [LA]temi, che cosa c[LAm]redi?"
La mia risposta sei tu

Ti stupi[DO#m]rà, ma no,
non sono più ge[SI]loso del passato
In cui non [MI]c''ero, anzi mi manca di [LA]più
Perché seguivo [DO#m]la topografia del io da [SI]solo
L''astronomia del [MI]noi due
me l''hai insegnata [LA]tu, che
Ora ti mangi da [DO#m]dentro, piccolo pianeta [SI]spento
Come una briciola al [MI]vento,
è un buco nero e un occhio blu, e
Sono poco più di [DO#m]un jamais vu
tra tutte queste per[SI]sone
Nella mia testa io [MI]gioco a Taboo,
perdo se dico il tuo nome

[MI]Vedi, ci sono dei ricordi che mi [SI]devi
Sei grande, ma ti chiamo ancora [FA#m7]baby
Ho gli occhi rossi, ma non te ne a[LA]ccorgi
Ti guardo [SI]mentre dormi
Ma solo ieri [DO#m]c''eri, nei giorni neri
Quelli che piove troppo [LA]forte per stare in piedi
E fottevamo anche la [FA#m7]morte volando leggeri
M''hai chiesto, "Dimmi cosa [LA]temi, che cosa cr[LAm]edi?"
La mia risposta sei [MI]tu...[SOL#m7]         [DO#m7]

Sbadiglio e [LA]prendo la boccetta di Aducanumab
E penso [SOL#m7]che pure ''sta notte presto finirà
Io ti te[FA#m7]rrò la mano e tu tienimi l''anima
E pure [SI]se non sai chi sono, non lasciarla mai

[MI]Vedi, ci sono dei ricordi che mi [SI]devi
Sei grande, ma ti chiamo ancora [FA#m7]baby
Ho gli occhi rossi, ma non te ne a[LA]ccorgi
Ti guardo [SI]mentre dormi
Ma solo ieri [DO#m]c''eri, nei giorni neri
Quelli che piove troppo [LA]forte per stare in piedi
E fottevamo anche la [LA#m7]morte volando leggeri
M''hai chiesto, "Dimmi cosa [LA]temi, che cosa c[LAm]redi?"
La mia risposta sei [MI]tu...[SOL#m7]         [DO#m7]
La mia risposta sei [MI]tu...[SOL#m7]         [DO#m7]
La mia risposta sei tu', 'ricordi');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LA#m'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Ridere', 'Pinguini Tattici Nucleari', 'it', '[LA4] [LA]
[REadd9] [LA]  [FA#m7]  [MI]
[REadd9] Ed un po'' mi fa [LA]ridere
Se [FA#m]penso che ora c''è lì un altro
[MI]Che ti uccide i ragni al posto [REadd9]mio
Ma ci dovrò con[LA]vivere
[FA#m]Maledetto cuore che ti [MI]sciogli
Ogni volta che dico ad[REadd9]dio

Mia mamma e la tua fanno
Ancora zumba in[FA#m]sieme
E a volte forse par[MI]lano un po'' male di [REadd9]noi
Sai già come fi[LA]nisce
Che poi io mi emoz[FA#m]iono
E invece tu ti an[MI]noi

[LA]  Però tu fammi una promessa
[MI]  Che un giorno quando sarai persa
[FA#m7]  Ripenserai ogni tanto a cosa siamo stati [REadd9]noi
[LA]  Alle giornate al mare a tutte le mie pare
[MI]  Alle cucine che non abbiam potuto compra[FA#m7]re

Alle mie guerre perse alle tue paci finte
[REadd9]  A tutte le carezze
Che forse erano spin[MI]te
Giuro che un po'' mi fa ride[REadd9]re

E ti cantavo [LA]Fix You
[FA#m]Per farti dormire quando il [MI]mondo ti teneva sveglia
[REadd9]  Ed ora sono solo un [LA]tizio
Che [FA#m]se lo incontri per la strada
[MI]Gli fai un cenno di saluto e [REadd9]via
E non ho voglia di cam[LA]biarmi
Uscire a socializ[FA#m]zare
Per stasera voglio [MI]essere una nave in fondo al [REadd9]mare
Sei stata come [LA]Tiger
Non mi mancava [FA#m]niente
E poi dentro m''hai di[MI]strutto
Perché mi sono accorto che mi mancava tutto

[LA]  Però tu fammi una promessa
[MI]  Che un giorno quando sarai persa
[FA#m7]  Ripenserai ogni tanto a cosa siamo stati [REadd9]noi
[LA]  Alle giornate al mare a tutte le mie pare
[MI]  Alle cucine che non abbiam potuto compra[FA#m7]re
Lo shampoo all''albicocca i tuoi capelli in bocca
[REadd9]  Alla tua testa dura all''ansia, alla paur[MI]a
Giuro che un po'' mi fa ridere

[LA]  Però tu fammi una promessa
[DO#m7]  Che un giorno quando sarai vecchia
[FA#m7]  Racconterai a qualcuno [RE#m7]cosa siamo stati[REadd9] noi
[FA#m] [MI]

[LA]  Le cene da tua mamma la nostra prima canna
[MI]  La carbonara a Londra quando ci han messo la pan[FA#m7]na
I tuoi occhi, i tuoi nei che non sono più i miei
[REadd9]  Ma alla fine ti giuro [MI]che lo rifare[REadd9]i       [LA]    [FA#m7]
[MI]Che lo rifare[REadd9]i       [LA]    [FA#m7]       [MI]', 'ridere');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'RE#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Ringo Starr', 'Pinguini Tattici Nucleari', 'it', '[SOL]  [RE] [MIm]  [DO]  [SOL]  [RE]
[SOL] A volte pens[RE]o che [MIm]a quelli come me
il mondo [DO]non abbia mai voluto [SOL]bene  [RE]
[SOL] Il cerchio della[RE] vita [MIm]impone che
per un re le[DO]one vivano almeno tre [SOL]iene  [RE]
[SOL] Gli amici ormai s[RE]i sposa[MIm]no alla mia età
ed io mi in[DO]cazzo se non indovino all''[SOL]eredità [RE]
[SOL] Forse dovrei [RE]partir[MIm]e, andarmene via di qua,
[DO] e cambiare la mia vita in to[SOL]to tipo andando in Africa

[DO] Ma questa sera [RE]ho sol[MIm]o voglia di ballare,
[RE]di perdere la testa e non [LAm7]pensare più
[DO] Che la mia vita [RE]non è [MIm]niente di speciale
[RE]e forse alla fine c''hai r[LAm7]agione tu
[DO] In un mondo di John [RE]e di Paul [MIm]io sono Ringo Starr
[RE] In un mondo di John e di Paul [LAm7]io sono Ringo Starr
[DO] In un mondo di John [RE]e di Paul [MIm]io sono Ringo Starr
[RE]   Uooh oooh.[LAm7]..

[SOL] Tu eri Robin [RE]poi hai[MIm] trovato me,
pensavi [DO]che fossi il tuo Batman ma e[SOL]ro solo il tuo Ted [RE]eh [SOL]eh
E quando dico che spero che [RE]trovi [MIm]un ragazzo migliore di me fin[DO]go,
Che i migliori alla fine se ne vann[SOL]o sempre e che cosa rimane? Ringo

[DO] Ma questa sera [RE]ho sol[MIm]o voglia di ballare,
[RE]di perdere la testa e non [LAm7]pensare più
[DO] Che la mia vita [RE]non è [MIm]niente di speciale
[RE]e forse alla fine c''hai r[LAm7]agione tu
[DO] In un mondo di John [RE]e di Paul [MIm]io sono Ringo Starr
[RE] In un mondo di John e di Paul [LAm7]io sono Ringo Starr
[DO] In un mondo di John [RE]e di Paul [MIm]io sono Ringo Starr
[RE]   Uooh oooh.[LAm7]..

[MIm]     [DO] Ringo[LAm7]...   [RE]  Ringo
[MIm]     [DO] Ringo[LAm7]...   [RE]  Ringo [MIm]
...In un mondo di John e di Paul io sono Ringo Starr

[DO] Ma questa sera [RE]ho sol[MIm]o voglia di ballare,
[RE]di perdere la testa e non [LAm7]pensare più
[DO] Che la mia vita [RE]non è [MIm]niente di speciale
[RE]e forse alla fine c''hai r[LAm7]agione tu
[DO] In un mondo di John [RE]e di Paul [MIm]io sono Ringo Starr
[RE] In un mondo di John e di Paul [LAm7]io sono Ringo Starr
[DO] In un mondo di John [RE]e di Paul [MIm]io sono Ringo Starr
[RE]   Uooh oooh.[LAm7]..', 'ringo-starr');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Rubami la Notte', 'Pinguini Tattici Nucleari', 'it', '[SOLadd9]
Rubami la [MIm7]notte[SIm7]     [DOadd9]
Voglio stare [SOL]fuori come al Ber[RE]ghain
Nel fuoco non si [MIm7]dorme[SIm7]     [DOadd9]
Sarà che nei tuoi [SOL]occhi vedo due [RE]smile

Tu sai di [MIm]ging[SIm]er  [DO]beer, non di ginger roger
Oggi [SOL]resta qui,[RE] spezzami la voce
Non ti [MIm]posso pro[SIm]mettere i [DO]fiori di loto
Non vo[SOL]rrei diventare pa[RE]ssato remoto
Di[MIm]cevi che i[SIm]o te c''a[DO]bbiam Saturno contro
[SOL]Pagherò gli astrolo[RE]gi per darti torto
[MIm]Cambia la [SIm]canzone [DO]ma noi mai
Io con la Coca [SOL]Cola, tu con la ti[RE]sana thai

Rubami la [MIm7]notte[SIm7]     [DOadd9]
Voglio stare [SOL]fuori come al Ber[RE]ghain
Nel fuoco non si [MIm7]dorme[SIm7]     [DOadd9]
Sarà che nei tuoi [SOL]occhi vedo due [RE]smile
Ci sei solo [MIm7]tu   [SIm7]     [DOadd9]
Nei [SOL]sogni, nei viaggi, [RE]nei soldi, nei saldi
Solo [MIm7]tu   [SIm7]     [DOadd9]
Quest''e[SOL]state ci assomig[RE]lia già
Come Cu[MIm]rios[SIm]ity [DO]

Cercami la vita addosso
E [SOL]schiantati[RE] come le stelle ad agosto
Tu [MIm]sei un perso[SIm]naggio che è in [DO]cerca d''autore
Ma lo [SOL]sai che non posso abiu[RE]rare il tuo nome
Fammi ve[LAm7]dere la tua foto a Carne[DO]vale,
quella al mare
Quella [MIm7]con il broncio
ed una con lo [RE]stronzo che ti ha fatto male
[LAm7]Poi una foto no[DO]nsense
Ma [MIm7]questa sei da[SOL]vvero [RE]te?

Rubami la [MIm7]notte[SIm7]     [DOadd9]
Voglio stare [SOL]fuori come al Ber[RE]ghain
Nel fuoco non si [MIm7]dorme[SIm7]     [DOadd9]
Sarà che nei tuoi [SOL]occhi vedo due [RE]smile
Ci sei solo [MIm7]tu   [SIm7]     [DOadd9]
Nei [SOL]sogni, nei viaggi, [RE]nei soldi, nei saldi
Solo [MIm7]tu   [SIm7]     [DOadd9]
Quest''e[SOL]state ci assomig[RE]lia già
[DOadd9]    [MIm7]    [RE]

Ci amiamo [DOadd9]pour parler
[MIm7]Tu fingiti Dori che fa[RE]rò De Andrè
[SOLadd9]Sulla schiena c''hai la musi[DOadd9]ca al mare
[MIm7]Una cassa in quattro che si p[RE]erde dentro a un rave
Ci amiamo [DOadd9]pour parler
[MIm7]Tu fingiti Diana che fa[RE]rò Al Fayed
[SOLadd9]Metterò nei sogni solo in [DOadd9]fase Rem
[MIm7]Non si chiama fine è solo [RE]l''ultimo jet set

Rubami la [LAm7]notte   [MIm]
Voglio stare [SOL]fuori come al Berg[RE]hain
Nel fuoco non si [LAm7]dorme  [MIm]
Sarà che nei tuoi [SOL]occhi vedo due smile

Ci sei solo [MIm7]tu   [SIm7]     [DOadd9]
Nei [SOL]sogni, nei viaggi, [RE]nei soldi, nei saldi
Solo [MIm7]tu   [SIm7]     [DOadd9]
Quest''e[SOL]state ci assomig[RE]lia già...
[MIm7] [SIm7] [DOadd9]    [SOL]    [RE]
[MIm7] [SIm7] [DOadd9]    [SOL]    [RE]', 'rubami-la-notte');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Scrivile Scemo', 'Pinguini Tattici Nucleari', 'it', '[LA]      [MI]
[LA]Scrivile, scemo, [REadd9]stanotte non dormi
Tu [FA#m7]chiamali sogni, [MI]ma sono ricord[LA]i   [REadd9]
[FA#m7]  [MI]

[LA]Scrivile, scemo, [REadd9]è colpa del vino
Se [FA#m7]basta uno sguardo e [MI]ritorni bambin[LA]o   [REadd9]
[FA#m7]  [MI]

[LA]Scrivile, scemo, ci [REadd9]vuole coraggio
Nel ''[FA#m7]94 ad [MI]essere Bagg[LA]io  [REadd9]        [MI4]     [MI]
Ma [RE]dove [LA]sei?
Dicono [MI]che sei un po'' cresciuta ora[FA#m7]mai
E [RE]non sei [LA]più
Quella [MI]bambina che ba[DO#7]ciava Harry [FA#m]Styles in TV
E [RE]pesano, uccidono, ''s[LA]ti cazzo di "ti amo"
[MI]Ballano dentro la bocca u[FA#m]n ritmo cubano
Il [RE]sangue, le lacrime, [LA]un grido blasfemo
Tu [MI]fatti co[DO#7]raggio, poi [FA#m]scrivile, scemo[LA]

[LA]Scrivile, scemo, [REadd9]tre parole in croce
Poi [FA#m7]scappa lontano, poi [MI]perdi la voc[LA]e   [REadd9]
[FA#m7]  [MI]
[LA]Scrivile, scemo, un [REadd9]finale migliore
Per [FA#m7]quella puntata della [MI]Melevisione
Inte[LA]rrotta da torri che an[REadd9]darono in fiamme
E [MI4]bimbi che facevano do[MI]mande

Ma [RE]dove [LA]sei?
Dicono [MI]che sei un po'' cresciuta ora[FA#m7]mai
E [RE]non sei [LA]più
Quella [MI]bambina che ba[DO#7]ciava Harry [FA#m]Styles in TV
E [RE]pesano, uccidono, ''[LA]sti cazzo di "ti amo"
[MI]Ballano dentro la bocca [FA#m]un ritmo cubano
Il [RE]sangue, le lacrime, [LA]un grido blasfemo
Tu [MI]fatti co[DO#7]raggio, poi [FA#m]scrivile, scemo

[SIm7] E metto Bon [MI]Iver se sono [LAadd9]giù
E lo pronuncio sba[FA#m]gliato proprio come fai t[SIm7]u
E scusa per [MI]l''ansia, mi mangia da [DO#m]dentro
E per il cane che [FA#m]scappa con il cancello a[SIm7]perto
Vedi, non sono [MI]bravo a fare re[LAadd9]stare
Chi mi vuole [FA#m7]bene, però so aspe[SIm7]ttare
E con [MI]te mi sa che lo fa[LAadd9]rò...       [FA#m7]

Ma [RE]dove [LA]sei?
Dicono [MI]che sei un po'' cresciuta ora[FA#m7]mai
E [RE]non sei [LA]più
Quella [MI]bambina che ba[DO#7]ciava Harry [FA#m]Styles in TV
E [RE]pesano, uccidono, ''[LA]sti cazzo di "ti amo"
[MI]Ballano dentro la bocca [FA#m]un ritmo cubano
Il [RE]sangue, le lacrime, [LA]un grido blasfemo
Tu [MI]fatti co[DO#7]raggio, poi [FA#m]scrivile, scemo[LA]
[RE]Scrivile, scrivile
[LA] Scrivile, scrivile
[MI]Scrivile, scrivile
[FA#m] Scrivile, scrivile
[REadd9]Scrivile, scrivile
[LA] Scrivile, scrivile
[MI]Scrivile, scri[DO#7]vile
[FA#m7]Scrivile, scrivile...', 'scrivile-scemo');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#'),
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Tetris', 'Pinguini Tattici Nucleari', 'it', '[DO#m7]  [SI]  [MI]  [LA]
[DO#m7]  [SI]  [MI]
[LA]Tu eri per [MI]me
Il pezzo del tetris longilineo
Quello che lo aspetti una [DO#m7]vita
Ma finalmente quando ar[LA7+]riva
ti ri[SI]solve tutt[MI7+]o     [SOL#m7]
[LA]Tu eri per [MI7+]me

la terza dell''accordo
La nota più impor[DO#m7]tante che decideva la [LAadd9]sorte
Delle [SI]mie giornate v[MI]uote  [SOL#m7]
[LA]Tu eri per [SI]me
La bestia più fe[LA]roce
Che si riesce a do[DO#m7]mare solamente sotto [LA]voce
La bestemmia di un cred[MI7+]ente
Quando urta un como[SI]dino
La preghiera di un a[DO#m7]gnostico
Di fronte al grigio [LA]di un mattino
[SI]Inver[DO#m7]nale
[LAadd9]Inferna[MI]le

E [FA#m7]scusa se ti dico certe [LA]cose
Ma a qualcuno devo [DO#m]dirle
E l''unico qual[SI]cuno che conosco sei [FA#m7]tu
E hai soffiato dentro al mio [LA]cuore
A forma di armoni[DO#m]ca
Hai seminato ve[SI]nto
e raccolto energia eolic[FA#m7]a
I tuoi piuttosto e i tuoi abbas[LA]tanza
Non fermeranno [DO#m]certo il vulcano
che e[SI]rutta sopra al mio viso scop[FA#m7]erto
Tutto iniziò con uno [LA]sposami
detto con indiffe[DO#m]renza
E finì con un pia[SI]cer di far la tua conos[LA]cenza
Oh, ma è incoscienza, eh
[DO#m]  [SI]  [MI]  [LA]    [DO#m]  [SI]  [MI]

[LA]Tu eri per [MI7+]me
La consapevolezza
Che con l''aiuto del [DO#m7]tempo
anche un Magikarp è in [LA]grado
Di diven[SI]tare Gyara[MI]dos  [SOL#m7]
Tu eri per me
Scampare a mille incubi
Ma rimanerci secco al primo sogno apparso
Lungo la mia strada
[LA]Tu eri per [SI]me
L''assenza per Bres[LA]son
La corrida per Hemin[DO#m7]gway
E la rivoluzione per Dan[LA]ton
Il fischio del treno [MI]per Belluca
mi hai scandaliz[SI]zato
Come la Car[DO#m7]rà in Rai Gold tuca [LA]tuca

E [FA#m7]scusa se ti dico certe [LA]cose
Ma a qualcuno devo [DO#m]dirle
E l''unico qual[SI]cuno che conosco sei [FA#m7]tu
E hai soffiato dentro al mio [LA]cuore
A forma di armoni[DO#m]ca
Hai seminato ve[SI]nto
e raccolto energia eolic[FA#m7]a
I tuoi piuttosto e i tuoi abbas[LA]tanza
Non fermeranno [DO#m]certo il vulcano
che e[SI]rutta sopra al mio viso scop[FA#m7]erto
Tutto iniziò con uno [LA]sposami
detto con indiffe[DO#m]renza
E finì con un pia[SI]cer di far la tua conos[LA]cenza
[DO#m7]  [SOL#m7]  [LA]

Tu eri per [MI]me ciò che l''ef[LA]fetto Dunning [SI]Kruger
è per [DO#m7]Ka---n[LA]ye [MI]West
Tu eri per [FA#m]me ciò che per gli [LA]anni [SI]90
è stato F[DO#m7]riends [LA]    [SI]
Mi rifu[MI]giavo nei tuoi occhi per [DO#m]ore  [LA]
E mi sen[MI]tivo una persona migl[DO#m]iore   [LA]
Mi rifug[MI]iavo nei tuoi occhi per [DO#m]ore  [LA]
E mi sen[MI]tivo una persona migl[DO#m]iore   [LA]

E [FA#m7]scusa se ti dico certe [LA]cose
Ma a qualcuno devo [DO#m]dirle
E l''unico qual[SI]cuno che conosco sei [FA#m7]tu
E hai soffiato dentro al mio [LA]cuore
A forma di armoni[DO#m]ca
Hai seminato ve[SI]nto
e raccolto energia eolic[FA#m7]a
I tuoi piuttosto e i tuoi abbas[LA]tanza
Non fermeranno [DO#m]certo il vulcano
che e[SI]rutta sopra al mio viso scop[FA#m7]erto
Tutto iniziò con uno [LA]sposami
detto con indiffe[DO#m]renza
E finì con un pia[SI]cer
di far la tua conos[LA]cenza [SI]    [DO#m]      [SI6]
[LA7+]  [SI]  [DO#m]  [SI6]    [LA7+]  [SI]  [DO#m]  [SI6]', 'tetris');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Verdura', 'Pinguini Tattici Nucleari', 'it', '[LAm]   [DO]   [SOL]   [RE]
[LAm] Ma chi l''avrebbe mai detto
Che mi sa[DO]rei trovato qua
[SOL] Prima di andare a letto
In questa [RE]stupida grandissima cit[LAm]tà

A pensare che forse
La tua as[DO]senza mi dà conforto
[SOL] Più della presenza del resto del [RE]mondo
[LAm] Ed ho cercato il sonno
Sul fondo di una mok[DO]a
Siamo pinguini che non san scappare dalla fo[SOL]ca
Vorrei nuotare ma tu hai prosciugato i mar[RE]i

Vorrei volare via ma tu mi hai tagliato le ali
[LAm] I sorrisi migliori, li hai dati a degli stronzi
[DO] Avevi Richie Cunningham e hai preferito Fon[SOL]zie
Ma alla fine va bene
Alla fine vai sciall[RE]a
Si sopravvive a tutto
Ascoltando Lucio Dalla [SOL]

Siamo la fine del [RE]mondo
Di domenica mat[LAm]tina
Siamo una cena a lume [DO]di candela
fra due taniche di ben[SOL]zina
Da quando sei par[RE]tita
Io non ho più pa[LAm]ura
E riesco a ridere [DO]pure
quando mangio la ver[LAm]dura

...Ma chi l''avrebbe mai detto
Che sa[DO]rebbe finita così
Eh eh eh [SOL]

Sono sopra il mio letto
Con le tue [RE]ossa che hai dimenticato [LAm]qui
Faccio uno scacciapensieri
E sulla [DO]porta lo metterò  [SOL]
Mi avvertirà quando il ricordo che ho di te
cerca di en[RE]trare
Ed io non aprirò
[LAm] E gli occhi sono stanchi
Netflix non lo rinnov[DO]o
Ti cerco dentro Google Maps e vedo se ti tro[SOL]vo

Una parola è troppa
Due invece sono poc[RE]he
E allora in bocca al lupo Principessa Mononok[DO]e
Perché non ho più voglia, delle canzoni trist[MIm]i
Che son come caramelle date dai dentis[RE]ti
Eravamo benzina, una vita tranquil[LAm7]la
E poi ti ho incontrata ed è scoccata la scintil[SOL]la

Siamo la fine del [RE]mondo
Di domenica mat[LAm]tina
Siamo una cena a lume [DO]di candela
fra due taniche di ben[SOL]zina
Da quando sei par[RE]tita
Io non ho più pa[LAm]ura
E riesco a ridere [DO]pure
quando mangio la ver[SOL]dura

Siamo la fine del [LAm]mondo
Siamo la fine del [MIm7]mondo
Siamo la fine del [DO6]mondo
Siamo la fine del [SOL]mondo
Che cosa siamo noi?
Siamo la fine del [LAm]mondo
Che cosa siamo noi?
Siamo la fine del [MIm7]mondo
Che cosa siamo noi?
Siamo la fine del [DO6]mondo
Che cosa siamo noi?!  [SOL]

Siamo la fine del [RE]mondo
Di domenica mat[LAm]tina
Siamo una cena a lume [DO]di candela
fra due taniche di ben[SOL]zina
Da quando sei par[RE]tita
Io non ho più pa[LAm]ura
E riesco a ridere [DO]pure
quando mangio la ver[LAm]dura', 'verdura');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

