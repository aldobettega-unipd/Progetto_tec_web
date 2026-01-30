-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Gaetano', 'Calcutta', 'ITA', 'Gae[DO]tano mi ha detto che vi[MI7]viamo nel ghetto
ma nel [FA]mentre io penso che
Se io dor[MIm]missi disteso
sul tuo l[FA]ato del letto, io forse sarei te
Volevo a[DO]vere dei figli
Né t[MI7]roppi né pochi
Né [FA]tardi né domani
Con l''in[MIm]verno che avanza
e tu vuoi apr[FA]ire un''azienda

che fa tende con le mani
E ho [DO]fatto una svastica in [MI7]centro a Bologna
Ma era [FA]solo per litigare
Non vo[MIm]levo far festa e mi ser[FA]viva un pretesto
[LAm]   Per lasciarti andare [FA#m7]          [FA7+]
S[DO]uona una fisarmonica
F[FA]iamme nel campo rom
Tua [MIm]madre lo dice[FA]va "non an[DO]dare su you[DO]porn"
S[DO]uona una fisarmonica eee
F[FA]iamme nel campo rom
Tua [MIm]madre lo dice[FA]va "non an[DO7]dare su youporn"
[DO]Per lasciarti andar[LAm]e    [FA#m7]          [FA7+]
Per lasciarti andar[LAm]e    [FA#m7]          [FA7+]
E ho [DO]fatto una svastica in [MI7]centro a Bologna
Ma era [FA]solo per litigare
Non vol[MIm]evo far festa e mi serv[FA]iva un pretesto
Ma in verit[DO]à ti vorrei accompagnare
Fare anc[MI7]ora quattro passi con te
Ma è dif[LAm]ficile se vai vel[DO]oce
Stare al [FA#m7]passo con te
Come si [LAm]fa   [FA#m7]          [FA7+]
S[DO]uona una fisarmonica
F[FA]iamme nel campo rom
Tua [MIm]madre lo dicev[FA]a "non an[DO7]dare su yo[DO]uporn"
S[DO]uona una fisarmonica eee
F[FA]iamme nel campo rom
Tua [MIm]madre lo dice[FA]va "non an[DO]dare su youporn"
Per lasciarti andar[LAm]e    [FA#m7]          [FA7+]
Per lasciarti andar[LAm]e    [FA#m7]          [FA7+]

[LAm]  [FA#m7]  [FA7+]   [LAm]  [FA#m7]  [FA7+]
[LAm]  [FA#m7]  [FA7+]   [LAm]  [FA#m7]  [FA7+]
E quante [DO]volte ho pensato
che alla [MI7]fine il sorriso
è una pa[FA]rentesi se vedi bene
Mi annoi[MIm]avo alle feste, mi annoi[FA]avo alle cene
E quante [DO]volte ho pensato
che alla [MI7]fine il sorriso
è una pa[FA]resi se vedi bene
Mi annoi[MIm]avo alle feste, mi annoi[FA]avo alle cene', 'gaetano');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Giro con Te', 'Calcutta', 'ITA', '[MI] Poi non te l''ho chie[LA#m7]sto
se era un sorriso o un col[LA7+]tello
[MI] Tu volevi sal[LA#m7]ire, io volevo par[LA7+]larti all''orecchio
[MI] E sotto casa mia[LA#m7] mi sembrava di [LA7+]perdermi
Solo per restare an[SOL#m7]cora, ancora un [DO#11]po''     [DO#7]
Mi sa[FA#m7]luti, sta arrivando Firenze 21
Quattro mi[LA]nuti e ricomincia il fu[SI9]turo

Sono stato un po'' [MI7+]solo
Ho perso il tuo numero solo per dirtelo
Che l''anno pa[LA7+]ssato è stato uno schifo
E ancora qui crolla un po''  [LA6]
Io volevo [SOL#m7]solo un giro con [DO#7]te prima dell''apoca[FA#m7]lisse
E che tutto fi[SOL#m7]nisse ben oltre il [LA7+]limite  [SI11]

[MI] Sento i tuoi passi len[MI]ti
Carezze sulle po[MI]zzanghere come due carri ar[MI]mati
Sono amanti vio[MI]lenti i numeri delle p[RE7+]agine
[MI] E sotto casa mi[MI5+]a mi sembrava di [LA7+]perdermi
Ed io che riprovo an[SOL#m7]cora, ancora un [DO#11]po''     [DO#7]
Ricer[FA#m7]candoti dentro l''aria
come il naso di un [LA]cane antidroga

Sono stato un po'' [MI7+]solo

Ho perso il tuo numero solo per dirtelo
Che l''anno pa[LA7+]ssato è stato uno schifo
E ancora qui crolla un po''  [LA6]
Io volevo [SOL#m7]solo un giro con [DO#7]te prima dell''apoca[FA#m7]lisse
E che tutto fi[SOL#m7]nisse ben oltre il [LA7+]limite
[SI11]E ora abbaiano i [MI7+]cani

Va a fuoco domani e il vento si vendica
E resterò [LA7+]fermo solo per credere
che gli altri si muovono [LA6]
Io volevo [SOL#m7]solo un giro con [DO#7]te prima dell''apoca[FA#m7]lisse
E che tutto fi[SOL#m7]nisse ben oltre il [LA7+]limite  [SI11]

[LA7+]No, non voglio che mi passi accanto anco[MI7+]ra, no
Soltanto dentro le canzoni non si [LA7+]può
I sassi contro il vetro non [DO#m]tornano indietro, uh[SI]...

Sono stato un po'' [MI7+]solo
Ho perso il tuo numero solo per dirtelo
(solo per dirtelo)
Che l''anno pa[LA7+]ssato è stato uno schifo
E ancora qui crolla un po''  [LA6]
Io volevo [SOL#m7]solo un giro con t[DO#7]e prima dell''apoca[FA#m7]lisse
E che tutto fi[SOL#m7]nisse ben oltre il [LA7+]limite
[SI11]E ora abbaiano i [MI7+]cani

Va a fuoco domani e il vento si vendica
E resterò [LA7+]fermo solo per credere
che gli altri si muovono
Io volevo [SOL#m7]solo un giro con t[DO#7]e prima dell''apoca[FA#m7]lisse
E che tutto fi[SOL#m7]nisse ben oltre il [LA7+]limite  [SI11]', 'giro-con-te');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#'),
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LA#m'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Hubner', 'Calcutta', 'ITA', '[DO]       [FA7+]
[DO] Venezia è bella, ma non è il mio [FA7+]mare
[DO] Il treno è fer[MIm]mo, io sono [LAm]stufo di aspettare
In questo mondo [MIm]che pieno di [LAm]lacrim[MIm]e
Io certe [FA7+]volte dovrei f[MIm]are come Dario Hüb[REm7]ner
E non la[FA7+]sciarti a casa m[MIm]ai a consumare le un[REm7]ghie
[DO] Stazione di Fondi, fuori il tuo giubbo[FA7+]tto
[DO] Scaviamo una buca, tutta terra so[FA7+]tto
E ci hanno messo le [MIm7]scorie
O forse altre [FA7+]storie
E ci hanno messo le [MIm7]scorie
O forse altre [FA7+]storie   [SOL]
In questo [LAm]mondo c[MIm7]he pieno di [LAm]lacri[MIm7]me
Io certe [FA7+]volte dovrei f[MIm7]are come Dario Hüb[REm7]ner
E non la[FA7+]sciarti a casa m[MIm7]ai a consumare le un[REm7]ghie
E non la[FA7+]sciarti a casa m[MIm7]ai a consumare le un[REm7]ghie
E non la[FA7+]sciarti a casa m[MIm7]ai a consumare le un[REm7]ghie

[LAm]   [MIm7]   [LAm]   [MIm7]   [REm7]      [FA7+]   [MIm7]
[LAm]   [MIm7]   [LAm]   [MIm7]   [REm7]      [FA7+]   [MIm7]
In questo [LAm]mare c[MIm7]he è pieno di [LAm]tracin[MIm7]e
Forse [FA7+]noi dovremmo f[MIm7]are come Dario Hü[REm7]bner
Per non la[FA7+]sciarci soli m[MIm7]ai a consumare le un[REm7]ghie
E non la[FA7+]sciarti a casa m[MIm7]ai a consumare le un[REm7]ghie
E non la[FA7+]sciarti a casa m[MIm7]ai a consumare le un[REm7]ghie...
[LAm]   [MIm7]   [LAm]   [MIm7]   [REm7]      [FA7+]   [MIm7]', 'hubner');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Oroscopo', 'Calcutta', 'ITA', '[SIm]  [FA#m7]  [MIm7]    [SIm]  [FA#m7] [MIm7]
[SIm]  Sono uscito sta[FA#m7]sera ma non ho letto l''o[MIm7]roscopo
[SIm]  Non è Rio de Ja[FA#m7]neiro ma c''è un clima fan[MIm7]tastico
[SIm]  Io ti giuro sta[FA#m7]sera che ti cerco nel [MIm7]traffico
[SIm]  Sotto le unghie, nei [FA#m7]bar, fino al mare del [MIm7]Baltico
Perc[SIm]hé non mi ri[LA]cordi nessuna guagl[MIm7]iona
Una cassa che suona, una casa che b[SIm]rucia
Tutta la [LA]notte, tutta la [MIm7]notte
[SIm]  Ma io mi ri[LA]cordo una scritta sul [MIm7]muro
Un rullo, un tamburo, una danza ku[SIm]duro
Tutta la [LA]notte, tutta la [MIm7]notte
[FA#m7]Tu, sei venuta a cer[MIm7]carmi
Come un lago mi g[FA#m7]uardi e ti specchi
Non mi capirai [MIm7]mai
[RE]Si muovono i [FAm7]gatti fra secch[MIm7]ioni e vetri rotti
E la [RE]gente prende i [FA#m7]mezzi fra i batteri e fra i ri[MIm7]tardi
Provi a pren[RE]dermi la [FA#m7]mano ma non [MIm7]sono lì vicino
Puoi specch[RE]iarti nel mio [FA#m7]lago
Mentre os[MIm7]servi il mio respiro

Ma [SIm]tu…
Ma non mi ri[LA]cordi nessuna guagl[MIm7]iona
Una cassa che suona, una casa che b[SIm]rucia
Tutta la [LA]notte, tutta la [MIm7]notte
[SIm]  Ma io mi ri[LA]cordo una scritta sul [MIm7]muro
Un rullo, un tamburo, una danza ku[SIm]duro
Tutta la [LA]notte, tutta la [MIm7]notte
Hai qual[SIm]cosa di brutto alle s[LA]palle lasciato in un [MIm7]film
Certa[SIm]mente[LA] fai co[MIm7]sì

Hai qual[SIm]cosa di brutto alle s[LA]palle lasciato in un [MIm7]film
Hai qual[SIm]cosa di brutto alle s[LA]palle lasciato in un [MIm7]film
[SIm]  Ma non mi ri[LA]cordi nessuna guagl[MIm7]iona
Una cassa che suona, una casa che b[SIm]rucia
Tutta la [LA]notte, tutta la [MIm7]notte
[SIm]  Ma io mi ri[LA]cordo una scritta sul [MIm7]muro
Un rullo, un tamburo, una danza ku[SIm]duro
Tutta la [LA]notte, tutta la [MIm7]notte
[SIm]  [LA]  [MIm7]    [SIm]  [LA]  [MIm7]', 'oroscopo');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Paracetamolo', 'Calcutta', 'ITA', 'Lo [RE]sai che la tachipi[SIm]rina 500 [FA#m]se ne prendi [LA7]due
Diventa [RE]1000  [SIm]     [FA#m]      [LA7]
Si [RE]vede che hai provato [SIm]qualcosina parla[FA#m]no
Parlano le tue pupil[RE]le  [SIm]     [FA#m]      [LA7]
E a[MIm7]desso che mi prendi per la mano vacci piano
Che se mi stringi così
Io sento il cuore a [RE]mille [SIm]     [FA#m]
Sento il cuore a [RE]mille [SIm]     [FA#m]
Il [RE]duomo di Milano è un [SIm]paracetamolo [FA#m]sempre pronto per
Le tue tonsill[RE]e   [SIm]     [FA#m]      [LA7]
Do[RE]mani non lavoro [SIm]puoi venire un po'' da [FA#m]me
Ma poi da me[LA] non vieni m[RE]ai
Che poi da t[SIm]e non è Vers[FA#m]ailles
E a[MIm7]desso che mi stringi per la mano vacci piano
Che sento il cuore a mil[LA7]le
Io sento il cuore a [RE]mille [SIm]     [FA#m]
Sento il cuore a [RE]mille [SIm]     [FA#m]

[LA]Canto di gabbiano
Dentro la mia mano
Se s[MIm7]iamo in metro o in treno non mi importa[RE]
Io sento il [LA]Mar Mediterraneo
[LA7+]Dentro questa radio
Ti [MIm7]prego vacci piano, che se mi stringi co[LA]sì
Io sento il cuore a [RE]mille  [SIm]     [FA#m]
Sento il cuore a [RE]mille [SIm]     [FA#m]
Io sento il cuore a [RE]mille, [SIm]mille, [FA#m]mille
Sento il cuore a [RE]mille, [SIm]mille, [FA#m]mille
Sento il cuore a [RE]mille [SIm]     [FA#m]
[RE]  [SIm]  [FA#m]', 'paracetamolo');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Pesto', 'Calcutta', 'ITA', '[SOL#m]Esco o non [MI7+]esco?
Fuori è [RE#m7]caldo ma è normale ad agosto [SOL#m]
Non ci penso ma poi [DO#7]sudo lo stesso[MI]   [MIm]
Un''[SOL#m]ombra sul sof[MI7+]fitto
Mi hai las[RE#m7]ciato nei sospiri nel le[SOL#m]tto
Un [DO#7]filo di voce
Un [MI]filo di ferro [MIm]dentro l''orecchio
[SI]Dai, non fa [DO#m7]niente
Mi richiame[SI]rai da un call ce[DO#m7]nter
E io ti dir[MI]ò

Lo sai che io ti dirò
[SI]We defi[DO#m7]ciente
Negli occhi ho una b[MI7+]otte che p[SI7+]erde
E lo sai perc[DO#m7]hè
Perchè mi [LA]sono innamorato
Mi [LA7]ero addormentato di [MI7+]te
E a[SI]desso che mi [DO#m7]lasci s[MI]olo
Con le [SI]cose fuori al [RE#m7]posto [MI]loro

[SOL#m]Esco o non e[MI7+]sco
Fuori è [RE#m7]notte, mangio il buio col p[SOL#m]esto
Non mi [DO#7]piace ma lo ingoio lo stess[MI]o   [MIm]
[SI]Dai, non fa [DO#m7]niente
Mi richiame[SI]rai da un call ce[DO#m7]nter
E io ti dir[MI]ò

Lo sai che io ti dirò
[SI]We defi[DO#m7]ciente
Negli occhi ho una b[MI7+]otte che p[SI7+]erde
E lo sai perc[DO#m7]hè
Perchè mi [LA]sono innamorato
Mi [LA7]ero addormentato di t[MI7+]e     [DO#m7]
Mi sono addormentato di t[MI7+]e     [SI]

[DO#m7]  [RE#m7]  [MI]

[SI]Io non ho un salva[DO#m7]gente
Ti lascio andar v[SI]ia
Ma se la corr[DO#m7]ente
Ti riporta q[MI]ui

Lo sai che io ti dirò
[SI]We defi[DO#m7]ciente
Negli occhi ho una b[MI7+]otte che p[SI7+]erde
E lo sai perc[DO#m7]hè
Perchè mi [LA]sono innamorato
Mi [LA7]ero addormentato di t[MI7+]e     [DO#m7]
Mi sono addormentato di t[MI7+]e     [SI]
[DO#m7]  [LA]  [LA7]  [MI7+]', 'pesto');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#'),
(@last_song_id, 'DO#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE#m'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m');

