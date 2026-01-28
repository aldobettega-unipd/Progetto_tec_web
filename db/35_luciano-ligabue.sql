-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Balliamo Sul Mondo', 'Luciano Ligabue', 'ITA', '[RE]  [SOL]  [DO]  [LAm]

Siamo [RE]della stessa [SOL]pasta bionda [DO]non la bevo [LAm]sai
Ce l''hai [RE]scritto che la [SOL]vita non ti [DO]viene come [LAm]vuoi
Ma è la tua [RE]e per me è spe[SOL]ciale e se ti [DO]può bastare [LAm]sai
Che se hai [RE]voglia di bal[SOL]lare uno [DO]pronto qui ce l''[LAm]hai

Balliamo sul mon[RE]do
[SOL]  Va bene qual[DO]siasi musi[LAm]ca
cadremo bal[RE]lando..[SOL].
sul mondo lo [DO]sai si scivo[LAm]la.
Facciamo un fan[RE]dango...[SOL]
Là sotto qual[DO]cuno ride[LAm]rà
Balliamo sul... [RE]mond[SOL]o    [DO]    [LAm]

Non ti [RE]offro grandi [SOL]cose però [DO]quelle lì le a[LAm]vrai
Niente [RE]case ne'' fu[SOL]turo ne'' cer[DO]tezze, forse [LAm]guai
Ma se [RE]dall''Atlantide all''[SOL]Everest [DO]non c''e'' posto per [LAm]noi
Guido io [RE]in questo [SOL]tango ci fac[DO]ciamo posto [LAm]dai

Balliamo sul mon[RE]do
[SOL]  Mi porto le [DO]scarpe da tip [LAm]tap
cadremo bal[RE]lando..[SOL].
Però il mondo [DO]non si ferme[LAm]rà
Facciamo un fan[RE]dango...[SOL]
Là sotto qual[DO]cuno fischie[LAm]rà
Balliamo sul... [RE]mond[SOL]o    [DO]    [LAm]

[RE]Fred e Ginger [SOL]sono su una [DO]supernova [LAm]sopra noi
[RE]Chiudi gli occhi e [SOL]tieni il tempo e [DO]sarà quasi [LAm]fatta dai
[RE]C''è chi vince e [SOL]c''è chi perde, [DO]noi balliamo [LAm]casomai
[RE]Non avremo [SOL]classe ma abbiamo [DO]gambe e fiato [LAm]finché vuoi

[RE]  Ballando, [SOL]  ballando s[DO]ul ballando [LAm]sul mondo
[RE]  Facendo,  [SOL]  facendo [DO]un facendo un [LAm]fandango
[RE]  Ballando, [SOL]  ballando s[DO]ul ballando [LAm]sul mondo
[RE]  Ballando, [SOL]  ballando s[DO]ul ballando [LAm]sul
Balliamo sul mon[RE]do
[SOL]  Possiamo anche [DO]senza musi[LAm]ca
cadremo bal[RE]lando..[SOL].
Nessuno pe[DO]rò si feri[LAm]rà
Facciamo un fan[RE]dango...[SOL]
Là sotto qual[DO]cuno applaudi[LAm]rà
Balliamo sul... [RE]mond[SOL]o    [DO]    [LAm]', 'balliamo-sul-mondo');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Certe Notti', 'Luciano Ligabue', 'ITA', 'Certe [MI]notti la macchina è [LA]calda
e dove ti [SI]porta lo [LA]decide [MI]lei
Certe [DO#m]notti la strada non [LA]conta
che quello che [SI]conta è sentire che vai
Certe [SOL#m]notti la radio che [LA]passa Neil Young
sembra a[DO#m]vere capito chi [LA]sei
Certe [MI]notti somigliano a un [LA]vizio
che tu non vuoi [SI]smettere, s[LA]mettere ma[MI]i.

[RE]

Certe [MI]notti fai un po'' di ca[LA]gnara
che sentano [SI]che non [LA]cambierai [MI]più
Quelle [DO#m]notti fra cosce e zan[LA]zare
e nebbia e lo[SI]cali a cui dai del tu
Certe [SOL#m]notti c''hai qualche fe[LA]rita
che qualche tua a[DO#m]mica disinfette[LA]rà
Certe [MI]notti coi bar che son [LA]chiusi
al primo auto[SI]grill c''e'' chi [LA]festegge[MI]rà.

[DO#m]   Non si può restare [SI]soli
[LA]   certe notti [MI]qui [SOL#m]
[LA]   che chi s''accon[SI]tenta gode
[LA]   così co[MI]sì
[SOL#m]Certe    [LA]notti o sei [SI]sveglio
o non [FA#m]sarai s[SOL#m]veglio [LA]mai
Ci ve[LA]diamo da [SI]Mario prima o [RE]poi.

Certe [MI]notti ti senti pa[LA]drone
di un posto che [SI]tanto di [LA]giorno non [MI]c''è
Certe [DO#m]notti se sei fortu[LA]nato
bussi alla [SI]porta di chi è come te
C''è la [SOL#m]notte che ti tiene [LA]fra le sue tette
un po'' [DO#m]mamma un po'' porca com''[LA]è
Quelle [MI]notti da farci l''a[LA]more
fin quando fa [SI]male, fin [LA]quando ce [MI]n''è.

[DO#m]   Non si può restare [SI]soli
[LA]   certe notti [MI]qui [SOL#m]
[LA]   che chi s''accon[SI]tenta gode
[LA]   così co[MI]sì
[SOL#m]Certe    [LA]notti son [SI]notti
o le [FA#m]rega    [SOL#m]liamo a  [LA]voi
Tanto [LA]Mario ri[SI]apre prima o [RE]poi.

(Certe notti qui, certe notti qui
certe notti qui, certe notti...)

Certe [SOL#m]notti sei solo più al[LA]legro,
più ingordo, più in[DO#m]genuo e coglione che [LA]puoi
Quelle [MI]notti son proprio quel [LA]vizio
che non voglio [SI]smettere, [LA]smettere [MI]mai.

[DO#m]   Non si può restare [SI]soli
[LA]   certe notti [MI]qui [SOL#m]
[LA]   che chi s''accon[SI]tenta gode
[LA]   così co[MI]sì
[SOL#m]Certe    [LA]notti o sei [SI]sveglio
o non [FA#m]sarai s[SOL#m]veglio [LA]mai
Ci ve[LA]diamo da [SI]Mario prima o [RE]poi.

certe notti qui certe notti qui..
certe notti [MI]qui.', 'certe-notti');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Leggero', 'Luciano Ligabue', 'ITA', 'None', 'leggero');
SET @last_song_id = LAST_INSERT_ID();

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Non è Tempo Per Noi', 'Luciano Ligabue', 'ITA', '[DO]Ci han concesso solo una [RE]vita
Soddisfatti o [SOL]no qua non rimb[RE]orsano  [MIm]mai
E [DO]calendari a chiederci [RE]se
stiamo prendendo abbas[SOL]tanza [RE]    abbas[MIm]tanza
[DO]Se per ogni sbaglio avessi [RE4]mille [RE]lire
[DOadd9]Che vecchiaia che passe[RE]rei

[DO]Strade troppo strette e di[RE]ritte
Per chi vuol cambiar [SOL]rotta
oppure [RE]sdraiarsi un [MIm]po''
Che an[DO]dare va bene però[RE]
a volte serve un mo[SOL]tivo..[RE].  un mo[MIm]tivo
[DO]Certi giorni ci chiediamo [RE4]è tutto q[RE]ui?
E [DOadd9]la risposta è sempre [RE]si

Non è [SOL]tempo per [RE]noi che non [DO]ci svegliamo [MIm]mai
Abbiam [SOL]sogni pe[RE]rò troppo [MIm]grandi e belli sai
Belli o [DO]brutti abbiam [RE]facce
che pe[MIm]rò non cambian [LA]mai
Non è [DO]tempo per [RE]noi e forse [FA]non lo sarà [SOL]mai

[RE]   [SOL]   [RE]   [DO]   [MIm]

[SOL]  [RE]    [MIm]

[DO]   [RE]    [MIm]  [LA]

[DO]   [RE]    [FA]   [SOL]

[DO]Se un bel giorno passi di [RE]qua
lasciati amare e poi [SOL]scordati [RE]svelta di [MIm]me
[DO]che quel tempo è già buono p[RE]er
amare qualche d''un [SOL]altro.[RE]. qualche [MIm]altro
[DO]dicono che noi ci stiamo [RE4]buttando [RE]via..
[DOadd9]ma siam bravi a raccoglier[RE]ci.

Non è [SOL]tempo per [RE]noi che non [DO]ci adeguiamo [MIm]mai
Fuori [SOL]posto, fuori [RE]moda
insomma [MIm]sempre fuori dai
Abbiam [DO]donne pa[RE]zienti rasse[MIm]gnate ai nostri [LA]guai
Non è [DO]tempo per [RE]noi e forse [FA]non lo sarà [SOL]mai

[RE]Non è [SOL]tempo per [RE]noi che non ves[DO]tiamo come [MIm]voi
Non ri[SOL]diamo, non pian[RE]giamo
non a[MIm]miamo come voi
Forse in[DO]genui o tes[RE]tardi poco [MIm]furbi caso[LA]mai
Non è [DO]tempo per [RE]noi e forse [FA]non lo sarà [SOL]mai!', 'non-e-tempo-per-noi');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Piccola Stella Senza Cielo', 'Luciano Ligabue', 'ITA', '[SIm7]  [SOL7+]  [RE]
[LA] [SOL]

[SIm]  Cosa ci f[SOL7+]ai
In [RE]mezzo a tutta
[LA]Questa [SOL]gente
[SIm]  Sei tu che v[SOL7+]uoi
O in [RE]fin dei conti [LA]non ti [SOL]frega niente
[SIm]Tanti ti cerca[SOL7+]no
Spiazzati [RE]da una luce [LA]senza fu[SOL]turo.
[SIm]Altri si allunga[SOL7+]no
Vorrebbe[RE]ro tenerti [LA]nel loro [SOL]buio

[SIm]Ti brucerai
[SOL7+]  Piccola [RE]stella senza [LA]cie-[SOL]lo.
[SIm]Ti mostrerai
[SOL7+]  Ci incante[RE]remo mentre [LA]scoppi in [SOL]volo
[SIm]Ti scioglierai
[SOL7+]  Dietro a una [RE]scia un soffio, un [LA]ve--[SOL]lo
[SIm]Ti staccherai
[SOL7+]  Perché ti [RE]tiene su sol[LA]tanto un [SOL]filo...
[SIm]Sai  [SOL7+]       [RE]    [LA]   [SOL]

[SIm]  Tieniti [SOL7+]su... le [RE]altre stelle [LA]son dis[SOL]poste
[SIm]  Solo che [SOL7+]tu... a [RE]volte credi [LA]non ti [SOL]basti
[SIm]Forse capite[SOL7+]rà
che ti si [RE]chiuderanno gli [LA]occhi an[SOL]cora
[SIm]O soltanto sa[SOL7+]rà una pa[RE]rentesi di [LA]una mezz''[SOL]ora

[SIm]Ti brucerai
[SOL7+]  Piccola [RE]stella senza [LA]cie-[SOL]lo.
[SIm]Ti mostrerai
[SOL7+]  Ci incante[RE]remo mentre [LA]scoppi in [SOL]volo
[SIm]Ti scioglierai
[SOL7+]  Dietro a una [RE]scia un soffio, un [LA]ve--[SOL]lo
[SIm]Ti staccherai
[SOL7+]  Perché ti [RE]tiene su sol[LA]tanto un [SOL]filo...
[SIm]Sai  [SOL7+]       [RE]    [LA]   [SOL]', 'piccola-stella-senza-cielo');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LA'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Questa È la Mia Vita', 'Luciano Ligabue', 'ITA', '[MIm]  [RE4] [RE]  [DO]

[SOL]  [DO] [DO7+]  [MIm]  [RE4] [RE]  [RE4] [RE]

[SOL]Questa è la mia vita

Se ho bisogno te lo dico
[DO]Sono io che guido

Io che vado fuori strada
[MIm]Sempre io che pago
Non è mai successo che pa[RE4]gassero per [RE]me
[SOL]Questa è la mia vita

Se entri chiedimi permesso
[DO]Portami una gita

Fammi ridere di gusto
[MIm]Porta la tua vita
Che vediamo che succede a [RE4]mescolarle un [RE]po''
E ora che ci [LAm7]sei
Dato che ci [DO]sei
Fammi fare un [SOL]giro su chi [RE]non sono stato [LAm7]mai
Dato che ci [DO7+]sei
Come io vor[SOL]rei   [DO]     [MIm]      [RE4]    [RE]     [RE4]    [RE]
[SOL]Questa è la mia vita

Sono quello che ci pensa
[DO]Porta un paio d''ore

Una notte bella densa
[MIm]Trattamela bene
Che al momento ho solo questa e [RE4]poi…   vedremo [RE]poi
[SOL]Questa è la mia vita

Certi giorni non si batte
[DO]Certi altri meno

È cosi che va per tutti
[MIm]Certi giorni poca
Certi giorni sembra troppa e in[RE4]vece non lo è [RE]mai
E ora che ci [LAm7]sei
Dato che ci [DO]sei
Fammi fare un [SOL]giro su chi [RE]non sono stato [LAm7]mai
Dato che ci [DO7+]sei
Come io vor[SOL]rei  [DO]   [DO7+]      [MIm]      [RE4]    [RE]    [RE4]    [RE]
[SOL]Questa è la mi vita

Tieniteli tu i consigli
[DO]Io non l''ho capita

Figurati se tu fai meglio
[MIm]Porta la tua vita
Che vediamo che succede a [RE4]mescolarle un [RE]po''
E ora che ci [LAm7]sei
Dato che ci [DO]sei
Fammi fare un [SOL]giro su chi [RE]non sono stato [LAm7]mai
Dato che ci [DO7+]sei
Come io vor[SOL]rei  [DO]   [DO7]', 'questa-e-la-mia-vita');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Urlando Contro il Cielo', 'Luciano Ligabue', 'ITA', '[LA]  [LA]  [RE]  [MI]
[LA]  [LA]  [RE]  [MI]
[RE]  [MI]

[LA]come vedi sono qua:
Monta [RE]su, [MI]non ci avranno
[LA]finché questo cuore non crepe[RE]rà
di [MI]ruggine di botte o di e[LA]tà. [LA]    [RE]    [MI]

[LA]C''è una notte tiepida e un
vecchio [RE]blues, da [MI]fare insieme
in [LA]qualche posto accosterò e
quella [RE]là sa[MI]rà la nostra casa ma
[FA#m]credo [DO#m]che   [MI]meri-[SIm]ti di [RE]più
[MI]  ma intanto son qua io
[FA#m]e ti  [DO#m]offro  [MI]di bal[SIm]larci [RE]su:
è una canzone di cent''anni al[SIm]meno

[RE]urlando [MI]contro il cielo
[LA]oh oh oh [LA]oh oh oh [RE]oh oh oh [MI]oh
[LA]oh oh oh [LA]oh oh oh [RE]oh oh oh [MI]oh

[LA]Non saremo delle star
ma siam [RE]noi, con [MI]questi giorni
[LA]fatti di ore andate per
un week-[RE]end [MI]e un futuro che non c''è.
[FA#m]Non si [DO#m]può   [MI]sempre [SIm]perde-[RE]re
[MI]  per cui giochiamoci
[FA#m]certe [DO#m]luci [MI]non puoi [SIm]spegner[RE]le.
Se è un purgatorio è nostro per lo [SIm]meno.

[RE]urlando [MI]contro il cielo
[LA]oh oh oh [LA]oh oh oh [RE]oh oh oh [MI]oh
[LA]oh oh oh [LA]oh oh oh [RE]oh oh oh [MI]oh

Fan[DO]tasmi sulla [RE]A quattordici
dai [DO]finestrini passa odor di [RE]mare, diesel,
merda, morte e [MI4]vi-t[MI]a.
Il [FA#m]patto [DO#m]è    s[MI]tringer[SIm]ci di [RE]più
[MI]  prima di perderci.
[FA#m]Forse [DO#m]ci    [MI]sento[SIm]no las[RE]sù.
è un pò come sputare il ve[SIm]leno.
[RE]urlando [MI]contro il cielo
[LA]oh oh oh [LA]oh oh oh [RE]oh oh oh [MI]oh
[LA]oh oh oh [LA]oh oh oh [RE]oh oh oh [MI]oh
[LA]oh oh oh [LA]oh oh oh [RE]contro il c[MI]ielo
[LA]oh oh oh [LA]oh oh oh [RE]contro il c[MI]ielo

[LA]', 'urlando-contro-il-cielo');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm');

