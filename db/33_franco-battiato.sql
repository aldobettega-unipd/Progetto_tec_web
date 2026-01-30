-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Centro di Gravità Permanente', 'Franco Battiato', 'ITA', '[REm] [REm9]  [DOm] [DOm9]  [SOL]  [MIb]  [DOm]  [SOL]
[MIb]  [SOL]
[REm]Una vecchia[DOm] bretone
[SOL]con un cappello e un omb[MIb]rello di carta di [DOm]riso
e canna di bam[SOL]bù   [MIb]     [SOL]      [MIb]     [SOL]
[REm]Capitani [DOm]coraggiosi
[SOL]furbi contrabband[MIb]ieri macedo[SOL]ni   [MIb]     [SOL]
[REm]Gesuiti[DOm] euclidei
[SOL]vestiti come dei [MIb]bonzi
per entrare a [DOm6]corte degli impera[SOL]tori
[MIb]della dinastia dei [SOL]Ming

[DO]Cerco un centro di g[LAm]ravità perma[FA]nente
che [SOL]non mi faccia mai cambiare
i[DO]dea sulle [LAm]cose sulla gen[FA]te
[SOL]avrei bisogno di...
[DO]Cerco un centro di g[LAm]ravità perma[FA]nente
che [SOL]non mi faccia mai cambiare
i[DO]dea sulle [LAm]cose sulla gen[FA]te
[SOL]Over and over a[RE]gain [MIb]     [SOL]
[REm] [REm9]  [DOm] [DOm9]  [SOL]  [MIb]  [DOm]  [SOL]
[MIb]  [SOL]

[REm]Per le strade [DOm]di Pechino [SOL]erano giorni di [MIb]maggio
tra noi si scher[DOm]zava a raccogliere or[SOL]tiche
[MIb]  [SOL]  [MIb]  [SOL]
[REm]Non sopporto i [DOm]cori russi
[SOL]la musica finto [MIb]rock la new wave ital[DOm6]iana
il free jazz punk ing[SOL]lese
[MIb]Neanche la nera afri[SOL]cana
[DO]Cerco un centro di g[LAm]ravità perma[FA]nente
che [SOL]non mi faccia mai cambiare
i[DO]dea sulle [LAm]cose sulla gen[FA]te
[SOL]avrei bisogno di...
[DO]Cerco un centro di g[LAm]ravità perma[FA]nente
che [SOL]non mi faccia mai cambiare
i[DO]dea sulle [LAm]cose sulla gen[FA]te
[SOL]Over and over a[RE]gain [MIb]     [SOL]
[DO]  [LAm]  [FA]  [SOL]    [DO]  [LAm]  [FA]  [SOL]', 'centro-di-gravita-permanente');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DOm'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIb'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Cuccurucucu', 'Franco Battiato', 'ITA', '[RE]  [LA]  [MI]  [RE]  [LA]  [MI]
[RE]Cuccurucu[LA]cù Pa[MI]loma
[RE]ahi ahi ahi ahi [LA]ahi can[MI]tava
[RE]Cuccucucucucu[LA]cucuu Pa[MI]loma
[RE]ahi ahi ahi ahi ahi ahi ahi [LA]ahi can[MI]tava

Le sere[FA#m]nate all''is[LA]tituto [MI]magistrale [SIm]
nell''ora [FA#m]di ginnasti[RE]ca o di reli[MI]gione
per carne[FA#m]vale suo[LA]navo
sopra i [MI]carri in mascher[SIm]a
avevo [FA#m]già la luna e U[RE]rano nel Le[MI]one
il [RE]mare [LA]nel cas[MI]setto, le [RE]mille [LA]bolle [MI]blu
da [RE]quando sei an[LA]data [MI]via [SIm]non esisto più  [SI]
il mondo è g[MI]rigio il mondo è blu

[RE]Cuccurucu[LA]cù Pa[MI]loma
[RE]ahi ahi ahi ahi [LA]ahi can[MI]tava
[RE]Cuccucucucucu[LA]cucuu Pa[MI]loma
[RE]ahi ahi ahi ahi ahi ahi ahi [LA]ahi can[MI]tava

L''ira fu[FA#m]nesta dei p[LA]rofughi af[MI]gani [SIm]
che dal con[FA#m]fine si spos[RE]tarono nell''[MI]Iran
cantami o [FA#m]diva dei [LA]pellerossa a[MI]mericani[SIm]
le gesta e[FA#m]rotiche di s[RE]quaw Pelle di [MI]Luna
le [RE]penne s[LA]tilog[MI]rafiche [RE]con l''inc[LA]hiostro [MI]blu
la [RE]barba col ra[LA]soio e[MI]lettrico [SIm]non la faccio più [SI]
il mondo è [MI]grigio il mondo è blu

[RE]Cuccurucu[LA]cù Pa[MI]loma
[RE]ahi ahi ahi ahi [LA]ahi can[MI]tava
[RE]Cuccucucucucu[LA]cucuu Pa[MI]loma
[RE]ahi ahi ahi ahi ahi ahi ahi [LA]ahi can[MI]tava

[LA]La-[MI]dy Ma[FA#m]donna ([RE]I can try)
[LA]with a little [MI]help form my [SIm]friends
[LA]goodbye [MI]Ruby [FA#m]Tuesday [RE]
[LA]come on baby [MI]let''s twist a[SIm]gain
[LA]once upon a [MI]time you dressed so [FA#]fine, [RE]Mary
[LA]like [MI]just a [SIm]woman
[LA]like a Rolling Stone
[RE]  [LA]  [MI]      [RE]  [LA]  [MI]

[RE]Cuccurucu[LA]cù Pa[MI]loma
[RE]ahi ahi ahi ahi [LA]ahi can[MI]tava
[RE]Cuccucucucucu[LA]cucuu Pa[MI]loma
[RE]ahi ahi ahi ahi ahi ahi ahi [LA]ahi can[MI]tava

[LA]La-[MI]dy Ma[FA#m]donna ([RE]I can try)
[LA]with a little [MI]help form my [SIm]friends
[LA]goodbye [MI]Ruby [FA#m]Tuesday [RE]
[LA]come on baby [MI]let''s twist a[SIm]gain
[LA]once upon a [MI]time you dressed so [FA#]fine, [RE]Mary
[LA]like [MI]just a [SIm]woman
[LA]like a Rolling Stone', 'cuccurucucu');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Canzone dell’Amore Perduto', 'Franco Battiato', 'ITA', '[DO]   [LAm]   [FA6]   [SOL]
[FAadd9]   [SOL]   [DO]   [SOL]   [LAm]      [FA6]   [SOL]
Ri[DO]cordi[LAm], sbocciavano le [REm]vio-[SOL]le
Con le [FA]nostre pa[SOL]role
[DO] Non ci [SOL]lasceremo [LAm]mai
Mai e poi [REm]mai   [SOL]
Vo[DO]rrei dirti, [LAm]ora,[REm] le stesse [SOL]cose
[FA] Ma come fan [SOL]presto, a[DO]more
Ad [SOL]appassire le [LAm]rose
Così per [REm]noi      [SOL]
L''a[FA]more che [SOL]strappa i ca[DO]pelli
É per[MIm]duto ormai
[FA] Non resta che [SOL]qualche svo[DO]gliata ca[MIm]rezza
[FA] E un pò di tene[SOL]rez--[DO]za   [LAm]      [FA6]      [SOL]
[FA]   [SOL]   [DO]   [SOL]   [LAm]      [FA6]   [SOL]

E [DO]quando[LAm] ti troverai [REm]in ma[SOL]no
Quei [FA]fiori appa[SOL]ssiti
Al [DO]sole di un a[SOL]prile
Ormai lon[LAm]tano li rimpian[FA6]gerai [SOL7]
[FA]Ma sarà la [SOL]prima
Che in[DO]contri per [MIm]strada
Che tu[FA] coprirai [SOL]d''oro
Per un [DO]bacio mai [MIm]dato
[FA] Per un amore [SOL]nuo-[DO]vo   [LAm]      [FA6]      [SOL]
[FA]   [SOL]   [DO]   [SOL]   [LAm]      [FA6]   [SOL]

[FA]E sarà la [SOL]prima che in[DO]contri per [MIm]strada
Che tu[FA] coprirai [SOL]d''oro
Per un [DO]bacio mai [MIm]dato
[FA] Per un amore [SOL]nuo-[DO]vo   [LAm]      [FA]     [SOL]
[FA]   [SOL]   [DO]   [SOL]   [LAm]      [FA6]   [SOL]   [DO]', 'la-canzone-dellamore-perduto');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Cura', 'Franco Battiato', 'ITA', '[SIm]  [FA#m]  [SOL]  [RE]
[SIm]  [FA#m]  [SOL]  [RE]  [LA]
Ti p[SIm]roteggerò dalle p[FA#m]aure delle ipocondrie
[SOL]dai turbamenti che da oggi
incontre[RE]rai per la tua via [LA]
Dalle ingiu[SIm]stizie e dagli in[FA#m]ganni del tuo tempo
dai fallimen[SOL]ti che per tua natura
normal[RE]mente attirerai
Ti solleve[SIm]rò dai dolori e dai tuoi sbalzi[FA#m] d''umore
dalle ossess[SOL]ioni delle tue manie[RE]

Supere[SIm]rò le correnti gravitazio[FA#m]nali
lo spazio e la [SOL]luce
per non farti invecchia[SIm]re    [FA#m]
E guari[SOL]rai da tutte le mala[RE]ttie
[SIm]perché sei un essere spec[FA#m]iale,
ed i[SOL]o avrò cura di [SIm]te
[FA#m]  [SOL]  [RE]  [SIm]  [FA#m]

[MI]Vagavo per i campi del[SIm] Tennessee
[LA] (come vi ero arri[MI]vato chissà)
[SIm]Non hai fiori b[RE7+]ianchi per me?
[LA]Più veloci di [SOL]aquile i miei sogni
attraversano il [SIm]mare [FA#m]         [SOL]     [RE]    [LA]

Ti [SIm]porterò soprattutto il si[FA#m]lenzio e la pazienza
[SOL]  Percorreremo insieme le vie
che p[RE]ortano all''essenza  [LA]
I pro[SIm]fumi d''amore inebrie[FA#m]ranno i nostri corpi
[SOL]   la bonaccia d''agosto
non calme[RE]rà i nostri sensi
Tesse[SIm]rò i tuoi capelli come trame di [FA#m]un canto
Conosco le [SOL]leggi del mondo e te ne farò [RE]dono

Supere[SIm]rò le correnti gravitazio[FA#m]nali
lo spazio e la [SOL]luce
per non farti invecchi[SIm]are   [FA#m]
Ti salve[SOL]rò da ogni malinco[RE]nia
[SIm]   perché sei un essere spec[FA#m]iale,
ed [SOL]io avrò cura di [RE]te...
io sì[SIm], che avrò cura di te[SOL]
[SIm]  [FA#m]  [SOL]  [RE]  [SIm]  [FA#m]  [SOL]
[SIm]  [FA#m]  [SOL]  [RE]  [SIm]  [FA#m]  [SOL]', 'la-cura');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Stagione dell’Amore', 'Franco Battiato', 'ITA', '[SOL]  [MIm]  [DO]    [SOL]  [MIm]  [DO]
[SOL]La stagione dell''a[MIm]more viene [DO]e va
i desideri non in[SOL]vecchiano
quasi [MIm]mai con l''[DO]età
Se penso a come ho speso [SOL]male
il mio [RE7]tempo  [LAm]
che non tornerà  [DO]non ritornerà
p[RE]iù...
[SOL]La stagione dell''a[MIm]more viene [DO]e va
all''improvviso senza ac[SOL]corgerti
la viv[MIm]rai ti sorpr[DO]enderà
Ne abbiamo avute di occa[SOL]sioni
per[RE7]dendole [LAm]
non rimpiangerle [DO]non rimpiangerle
[RE]mai

Ancora un altro entu[SIb]siasmo
ti fa[DO]rà pulsare il c[RE]uore
[REm]Nuove possibili[SIb]tà
per co[DO]noscer[REadd9]si
e gli orizzonti per[SIb]duti
non si s[DO]cordano [RE]ma ah ah [FA]ai

[SOL]La stagione dell''a[MIm]more torn[DO]erà
con le paure e le scom[SOL]messe
questa [MIm]volta quanto [DO]durerà
Se penso a come ho speso [SOL]male
il mio [RE7]tempo [LAm]
che non tornerà  [DO]non ritornerà
[RE]più
[SOL]  [MIm]  [DO]    [SOL]  [MIm]  [DO]

Ne abbiamo avute di occas[SOL]ioni per[RE7]dendole [LAm]
non rimpiangerle [DO]non rimpiangerle
[RE]mai

Ancora un altro entu[SIb]siasmo
ti fa[DO]rà pulsare il c[RE]uore
[REm]Nuove possibili[SIb]tà
per co[DO]noscer[REadd9]si
e gli orizzonti per[SIb]duti
non si s[DO]cordano [RE]ma ah ah [FA]ai

[SOL]La stagione dell''a[MIm]more viene [DO]e va
i desideri non in[SOL]vecchiano
quasi [MIm]mai con l''[DO]età
ne abbiamo avute di occa[SOL]sioni per[RE7]dendole [LAm]
non rimpiangerle [DO]non rimpiangerle
[RE]mai
[SOL]  [MIm]  [DO]   [SOL]  [MIm]  [DO]', 'la-stagione-dellamore');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('No Time No Space', 'Franco Battiato', 'ITA', '[SOLb4+] [LAb4]
[SOLb4+]Parlami [LAb4]dell'' esi[SOLb4+]stenza [LAb4]
[SOLb4+]di mondi [LAb4]lonta[SOLb4+]nissimi[LAb4]
[SOLb4+]di civil[LAb4]tà se[SOLb4+]polte  [LAb4]
[SOLb4+]di conti[LAb4]nenti al[SOLb4+]la deriv[LAb4]a
[SOLb4+]Parlami [LAb4]dell''a[SOLb4+]more   [LAb4]
[SOLb4+]che si fa in [LAb4]mezzo agli [SOLb4+]uomini [LAb4]
[SOLb4+]di viaggia[LAb4]tori a[SOLb4+]nomali [LAb4]     [SOLb4+]
[SOLb4+]in terri[LAb4]tori [SOLb4+]mistici[LAb4] ...
di [FA]più
[SOLb]Seguimmo [FA]per istinto [SOLb]le scie del[FA]le Comete
[SOLb]come Avan[FA]guardie di un [SOLb]altro sistema so[FA]la-[MIb]re

No [SOLm]Time No [MIb]Space
a[SIb]nother [FA]race of vi[SOLm]brations [MIb]
the [SIb]sea of the [FA]simu[SOLm]lation [FA]    [MIb]
keep your feelings in [SIb]memo[FA]ries
I [SOLm]love you espe[FA]cially to[SOL]night
[SOLb4+] [LAb4]

[SOLb4+]Control[LAb4]lori di [SOLb4+]volo   [LAb4]
[SOLb4+]pronti per [LAb4]il de[SOLb4+]collo  [LAb4]
[SOLb4+]Te---le[LAb4]scopi gi[SOLb4+]ganti  [LAb4]
[SOLb4+]per seg[LAb4]uire le [SOLb4+]stelle [LAb4]
navi[SOLb4+]ga-----[LAb4]-re  navi[SOLb4+]ga-----[LAb4]re
nello [SOLb4+]spa----[LAb4]zio nello [SOLb4+]spa----[LAb4]zio ...
di [FA]più
[SOLb]Seguimmo [FA]per istinto [SOLb]le scie del[FA]le Comete
[SOLb]come Avan[FA]guardie di un [SOLb]altro sistema so[FA]la-[MIb]re

No [SOLm]Time No [MIb]Space
a[SIb]nother [FA]race of vi[SOLm]brations [MIb]
the [SIb]sea of the [FA]simu[SOLm]lation [FA]    [MIb]
keep your feelings in [SIb]memo[FA]ries
I [SOLm]love you espe[FA]cially to[SOL]night
No [SOLm]Time No [MIb]Space
a[SIb]nother [FA]race of vi[SOLm]brations [MIb]

[SIb]  [FA]  [SOLm]  [FA]  [MIb]
keep your feelings in [SIb]memo[FA]ries
I [SOLm]love you espe[FA]cially to[SOL]night
[SOLm]  [MIb]  [SIb]  [FA]  [SOLm]  [MIb]  [SIb]  [FA]
[SOLm]  [FA]  [MIb]     [SIb]  [FA]  [SOLm]  [FA]  [SOL]', 'no-time-no-space');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOLb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Summer On a Solitary Beach', 'Franco Battiato', 'ITA', '[FA]  [REm]  [FA]  [REm]  [FA]  [REm]  [FA]  [REm]
Pas[FA]sammo l''estate
su una spiaggia soli[REm]taria
e ci [FA]arrivava l''eco di un cinema all''a[REm]perto
e [FA]sulla sabbia un caldo tropi[REm]cale
dal [FA]mare     [REm]      [FA]     [REm]     [FA]    [REm]
E [FA]nel pomeriggio
quando il sole ci nut[REm]riva
di [FA]tanto in tanto un grido copriva [REm]le distanze
e l''[FA]aria delle cose diven[REm]tava
irr[FA]eale
[FAadd9]Mare mare mare voglio anne[REm7]gare
[FAadd9]portami lontano a naufra[REm7]gare
[FAadd9]via via via da queste sp[REm7]onde
[FAadd9]portami lontano sulle [REm7]onde

[FA]  [REm]  [FA]  [REm]
A[FA] wonderful summer
on a solitary [REm]beach
a[FA]gainst the sea
"le grand hotel [REm]Sea-Gull Magique"
men[FA]tre lontano un minatore b[REm]runo
tor[FA]nava

[FAadd9]Mare mare mare voglio anne[REm7]gare
[FAadd9]portami lontano a naufra[REm7]gare
[FAadd9]via via via da queste sp[REm7]onde
[FAadd9]portami lontano sulle [REm7]onde

[FA]  [REm]  [FA]  [REm]  [FA]  [REm]  [FA]  [REm]', 'summer-on-a-solitary-beach');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA'),
(@last_song_id, 'REm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Te Lo Leggo negli Occhi', 'Franco Battiato', 'ITA', 'Fini[MIb]rà me l''hai detto [SIb]tu     [SIb]
[LAb]  ma non sei sin[MIb]cera,  [FAm7]
te lo [SIb7]leggo negli [MIb]oc--[DOm]chi
[FAm7]  hai bi[SIb7]sogno di [MIb]me    [LAb]    [SIb]
Forse [MIb]vuoi dirmi ancora [SIb]no     [SIb]
[LAb]  ma tu hai pa[MIb4]u----[MIb]ra,   [FAm7]
te lo [SIb7]leggo negli [MIb]oc--[MIb]-------[DOm]chi
[FAm7]  stai sof[SIb7]frendo per [MIb]me

[LAb]E nei tuoi occhi che [SIb]piangono
[SOL7]mille ricordi non [DOm]muoiono
per[SOLm]donami se [LAb]puoi
e [FAm7]resta insieme a [SIb7]me     [SIb7]

Tra di [MIb]noi forse nasce[SIb]rà     [SIb]
[LAb]  un  a[LAb]more [MIb]vero,  [FAm7]
te lo [SIb7]leggo negli [MIb]oc-c[DOm]hi
[FAm7]  tu lo [SIb7]leggi nei [MIb]miei
[MIb]   [SIb] [SIb]  [LAb]

Ma non sei sin[MIb]cera   [FAm7]
te lo [SIb7]leggo negli [MIb]oc--[MIb]-------[DOm]chi
[FAm7]  stai sof[SIb7]frendo per [MIb]me

[LAb]E nei tuoi occhi che [SIb]piangono
[SOL7]mille ricordi non [DOm]muoiono
per[SOLm]donami se [LAb]puoi
e [FAm7]resta insieme a [SIb7]me     [SIb7]

Tra di [MIb]noi forse nasce[SIb]rà     [SIb]
[LAb]  un amore [MIb]vero, [FAm7]
te lo [SIb7]leggo negli [MIb]oc--[DOm]chi
[FAm7]  tu lo leggi nei [LAb]miei   [MIb]', 'te-lo-leggo-negli-occhi');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Voglio Vederti Danzare', 'Franco Battiato', 'ITA', 'intro:
[SIb] [SOLm] [MIb]
[SIb] [FA] [SOLm] [MIb]

[SIb]Voglio vederti da[FA]nzare
[DOm] come le zingare [SOLm]del deserto
[SIb]con candelabri in [FA]testa
o [SIb]come le bali[MIb]nesi nei giorni di [FA]festa
[SIb] [SOLm] [MIb]
[SIb] [FA] [SOLm] [MIb]
[SIb]Voglio vederti da[FA]nzare
[DOm] come i derviches to[SOLm]urners
[SIb]che girano sulle spine d[FA]orsali
o[SIb] al suono di cavig[MIb]liere del Kata[FA]kali

[SIb] [SOLm] [MIb]
[SIb] [FA] [SOLm] [MIb]
E gira tutt''intorno la s[SIb]tanza
mentre si d[FA]anza, d[SOLm]anza
[MIb]e gira tutt''intorno la st[SIb]anza
mentre si d[FA]anza [SOL]
[DO] [LAm] [FA]
[DO] [SOL] [LAm] [FA]

[DO]E Radio Tirana, [SOL]trasmette
[REm]musiche bal[LAm]caniche mentre
[DO]danzatori [SOL]bulgari
a p[DO]iedi nudi sui [FA]braceri ardenti[SOL]
[DO]Nell''Irlanda del [SOL]Nord
[REm] nelle balere estiv[LAm]e
[DO]coppie di anziani che [SOL]ballano
[LA] al ritmo di sette ottavi
[RE] [SIm] [SOL]
[RE] [LA] [SIm] [SOL]

E gira tutt''intorno la st[RE]anza
mentre si [LA]danza, [SIm]danza
[SOL]e gira tutt''intorno la st[RE]anza
mentre si [LA]danza [SI]

[MI]Nei ritmi osses[SI]sivi la chiave
[FA#m]dei riti tri[DO#m]bali
[MI]regni di scia[SI]mani
e s[MI]uonatori [LA]zingari ribelli[SI]
[MI]Nella bassa Pad[SI]ana
[FA#m] nelle balere esti[DO#m]ve
[MI]coppie di anziani che [SI]ballano
[DO#] vecchi valzer viennesi
[FA#] [RE#m] [SI]
[FA#] [DO#] [RE#m] [SI]', 'voglio-vederti-danzare');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DO#'),
(@last_song_id, 'DO#m'),
(@last_song_id, 'DOm'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIb'),
(@last_song_id, 'RE'),
(@last_song_id, 'RE#m'),
(@last_song_id, 'REm'),
(@last_song_id, 'SI'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Tutto l’Universo Obbedisce all’Amore', 'Franco Battiato', 'ITA', '[DO]  [SOL]  [LAm]  [SOL]  [FA]   [LAm] [SOL]

[DO]Rara la vita in du[SOL]e... fatta di lie[LAm]vi gesti,[SOL]
e affetti [FA]di giornata.[SOL].. consi[DO]stenti o no,[SOL]
bisogna [LAm]muoversi.[SOL].. come [FA]ospiti... pieni di prem[SOL]ure
con delicata at[LAm]tenzione... per non di[SOL]sturbare
ed [DO]è in certi [LAm]sguard[SOL]i ch[FA]e..[SOL]. si [FA]vede l''infi[SOL]ni--[DO]--to[SOL]        [LAm]     [SOL]

[FA]   [LAm] [SOL]

[DO]Stridono le auto[SOL]... come bison[LAm]ti infuriat[SOL]i,
[FA] le strade [SOL]sono prate[DO]ri-[SOL]e...   [FA] accanto a [SOL]grattacieli as[FA]solati,
come pos[SOL]siamo... tenere na[LAm]scosta... la nostra [SOL]intesa
ed [DO]è in certi [LAm]sguard[SOL]i...[FA]   [SOL] che s''[FA]intravede l''[SOL]infin[DO]ito [SOL]        [FA]       [SOL]

[LAm]Tutto... l''u[SOL6]niverso... obbe[FA7+]disce... all''a[MIm7]more,
[LAm]come... puoi te[SOL6]nere... na[FA7+]scosto... un a[MIm7]more
[FA]ed [SOL]è co[LAm]sì... [FA]che [SOL]ci trat[LAm]tiene... [FA]nelle [SOL]sue ca[LAm]tene,
[FA]tutto.[SOL].. l''uni[LAm]verso... obbe[FA]disce.[SOL].. all''a[LAm]more

[DO]    [FA]   [DO]

come pos[SOL]siamo... tenere na[LAm]scosta... la nostra [SOL]intesa
ed [DO]è in certi [LAm]sguard[SOL]i...[FA]   [SOL] che [FA]si nasconde l''[SOL]infin[DO]ito [SOL]        [FA]       [SOL]

[LAm]Tutto... l''u[SOL6]niverso... obbe[FA7+]disce... all''a[MIm7]more,
[LAm]come... puoi te[SOL6]nere... na[FA7+]scosto... un a[MIm7]more
[FA]ed [SOL]è co[LAm]sì... [FA]che [SOL]ci trat[LAm]tiene... [FA]nelle [SOL]sue ca[LAm]tene,
[FA]tutto.[SOL].. l''uni[LAm]verso... obbe[FA]di--[SOL]sce all''a[LAm]more
(obbe[FA]dis[SOL]ce all''a[LAm]more)  [DO]      [FA]', 'tutto-luniverso-obbedisce-allamore');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'SOL');

