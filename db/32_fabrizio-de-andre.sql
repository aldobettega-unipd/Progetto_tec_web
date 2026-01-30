-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Bocca Di Rosa', 'Fabrizio De André', 'it', 'La chia[LAm]mavano bocca di rosa
metteva l''a[MI7]more, metteva l''a[LAm]more...
La chia[LAm]mavano bocca di rosa
metteva l''a[MI7]more sopra ogni [LAm]cosa
Appena [LAm]scesa alla stazione
del pae[MI7]sino di Sant''I[LAm]lario
tutti si ac[LAm]corsero con uno sguardo
che non si trat[MI7]tava d''un missio[LAm]nario
C''è chi l''a[LA7]more lo fa per [REm]noia
chi se lo [SOL7]sceglie per profes[DO]sione
Bocca di [REm]rosa ne'' l''uno ne'' l''[LAm]altro
lei lo fa[MI7]ceva per pas[LAm]sione

Ma la pas[LAm]sione spesso conduce
a soddis[MI7]fare le proprie [LAm]voglie
senza inda[LAm]gare se il concupito
ha il cuore [MI7]libero oppure ha [LAm]moglie
E fu co[LAm]sì che da un giorno all''altro
bocca di [MI7]rosa si tirò ad[LAm]dosso
l''ira fu[LAm]nesta delle cagnette
a cui a[MI7]veva sottratto l''[LAm]osso
Ma le co[LA7]mari di un pae[REm]sino
non brillan [SOL7]certo d''inizia[DO]tiva
le contromi[REm]sure fino a quel [LAm]punto
si limi[MI7]tavano all''invet[LAm]tiva

Si sa che la [LAm]gente dà buoni consigli
sentendosi [MI7]come Gesù nel [LAm]tempio...
Si sa che la [LAm]gente dà buoni consigli
se non può più [MI7]dare cattivo e[LAm]sempio
Così una [LAm]vecchia mai stata moglie
senza mai [MI7]figli, senza più [LAm]voglie
si prese la [LAm]briga e di certo il gusto
di dare a [MI7]tutte il consiglio [LAm]giusto
E rivol[LA7]gendosi alle cor[REm]nute
le apostro[SOL7]fò con parole ar[DO]gute
"Il furto d''a[REm]more sarà pu[LAm]nito, disse
dall''[MI7]ordine costi[LAm]tuito

E quelle an[LAm]darono dal commissario
e dissero [MI7]senza parafra[LAm]sare
"Quella schi[LAm]fosa ha già troppi clienti
più di un con[MI7]sorzio alimen[LAm]tare"
Ed arri[LAm]varono quattro gendarmi
con i pen[MI7]nacchi, con i pen[LAm]nacchi
ed arri[LAm]varono quattro gendarmi
con i pen[MI7]nacchi e con le [LAm]armi
Spesso gli [LA7]sbirri e i carabi[REm]nieri
al proprio do[SOL7]vere vengono [DO]meno
ma non quando [REm]sono in alta uni[LAm]forme
e l''accompa[MI7]gnarono al primo [LAm]treno

Alla sta[LAm]zione c''erano tutti
dal commis[MI7]sario al sacres[LAm]tano
alla sta[LAm]zione c''erano tutti
con gli occhi [MI7]rossi e il cappello in [LAm]mano
A salu[LAm]tare chi per un poco
senza pre[MI7]tese, senza pre[LAm]tese...
A salu[LAm]tare chi per un poco
portò l''a[MI7]more nel pa[LAm]ese
C''era un [LA7]cartello [REm]giallo
con una [SOL7]scritta [DO]nera
diceva "Ad[REm]dio bocca di [LAm]rosa
con te se ne [MI7]parte la Prima[LAm]vera"

Ma una no[LAm]tizia un po'' originale
non ha bi[MI7]sogno di alcun gior[LAm]nale
come una [LAm]freccia dall''arco scocca
e vola ve[MI7]loce di bocca in [LAm]bocca
E alla sta[LAm]zione successiva
molta più [MI7]gente di quando par[LAm]tiva
chi manda un [LAm]bacio, chi getta un fiore
chi si pre[MI7]nota per due [LAm]ore
Persino il [LA7]parroco che non dis[REm]prezza
fra un mise[SOL7]rere ed una estrema un[DO]zione
il bene ef[REm]fimero della bel[LAm]lezza
la vuole ac[MI7]canto in proces[LAm]sione
E con la [LAm]Vergine in prima fila
e bocca di [MI7]rosa poco lon[LAm]tano
si porta a s[LAm]passo per il paese
l''amore [MI7]sacro e l''amor pro[LAm]fano!', 'bocca-di-rosa');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Fiume Sand Creek', 'Fabrizio De André', 'it', '
[DO] [DO4]
Si son [DO]presi il nostro cuore
sotto [FA]una coperta s[DO]cura
sotto una luna morta piccola
dormi[FA]vamo senza pa[DO]ura
Fu un gene[SOL]rale di vent''anni
occhi tur[FA]chini e giacca u[DO]guale
fu un gene[SOL]rale di vent''anni
[FA]figlio d''un tempo[DO]rale
c''è un dollaro d''argento
sul [SOL]fondo del Sand [DO]Creek.

I nostri guer[DO]rieri troppo lontani
sulla [FA]pista del bi[DO]sonte
e quella musica distante
diven[FA]tò sempre più [DO]forte
chiusi gli [SOL]occhi per tre volte
mi ritro[FA]vai ancora [DO]lì
chiesi a mio [SOL]nonno è solo un sogno
mio [FA]nonno disse [DO]sì
a volte i pesci cantano
sul [SOL]fondo del Sand [DO]Creek.
[SOL]Hm   [FA]hm   [DO]hm

So[DO]gnai talmente forte
che mi u[FA]scì il sangue dal [DO]naso
il lampo in un orecchio
nell''[FA]altro il para[DO]diso.
Le [SOL]lacrime più piccole
le [FA]lacrime più [DO]grosse
quando l''[SOL]albero della neve
fio[FA]rì di stelle [DO]rosse
ora i bambini dormono
nel [SOL]letto del Sand [DO]Creek.
[SOL]Hm   [FA]hm   [DO]hm
[SOL]Hm   [FA]hm   [DO]hm

Quando il [DO]sole alzò la testa
tra le [FA]spalle della [DO]notte
c''erano solo cani e fumo
e [FA]tende capo[DO]volte
ti[SOL]rai una freccia in cielo
per f[FA]arlo respi[DO]rare
ti[SOL]rai una freccia al vento
per [FA]farlo sangui[DO]nare
la terza freccia cercala
sul [SOL]fondo del Sand [DO]Creek.
[SOL]Hm   [FA]hm   [DO]hm
[SOL]Hm   [FA]hm   [DO]hm

Si son [DO]presi il nostro cuore
sotto [FA]una coperta [DO]scura
sotto una luna morta piccola
dormi[FA]vamo senza pa[DO]ura
Fu un gene[SOL]rale di vent''anni
occhi tur[FA]chini e giacca ug[DO]uale
fu un gene[SOL]rale di vent''anni
[FA]figlio d''un tempo[DO]rale
ora i bambini dormono
sul [SOL]fondo del Sand [DO]Creek.
[SOL]Hm h[FA]m h[DO]m
[SOL]Hm h[FA]m h[DO]m', 'fiume-sand-creek');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Franziska', 'Fabrizio De André', 'it', '[FA] [MIb] [SIb] [FA] [SIb]
Hanno detto che Fran[SIb]ziska
è stanca di pre[FA7]gare
Tutta notte alla finestra
A[MIb]spetta il tuo se[SIb]gnale

Quanto è piccolo il suo cuore
E [SIb7]grande la mon[MIb]tagna
Quanto taglia il suo do[SIb]lore
Più d''un col[FA7]tello, coltello di [SIb]Spagna
[MIb]Tu bandito senza luna
Senza stelle e senza for[SIb]tuna
Questa notte dormi[FA7]rai

Col suo rosario
Stretto intorno al tuo fu[SIb]cile [SIb7]
[MIb]Tu bandito senza luna
Senza stelle e senza for[SIb]tuna
Questa notte dormi[FA7]rai
Col suo rosario
Stretto intorno al tuo fu[SIb]cile
[FA] [MIb] [SIb] [FA] [SIb]     [FA] [MIb] [SIb] [FA] [SIb]

Hanno detto che Fran[SIb]ziska
è stanca di ba[FA7]llare
Con un uomo che non ride
E [MIb]non la può baciar[SIb]e
Tutta notte sulla quercia
L''hai se[SIb7]guita in mezzo ai [MIb]rami
Dietro il palco sull''or[SIb]chestra
I tuoi [FA7]occhi come due [SIb]cani [SIb7]
[MIb]Marinaio di foresta
Senza sonno e senza can[SIb]zoni
Senza una con[FA7]chiglia da portare
O una rete di illu[SIb]sioni [SIb7]
[MIb]Marinaio di foresta
Senza sonno e senza can[SIb]zoni
Senza una con[FA7]chiglia da portare
O una rete di illusioni[SIb]
[FA] [MIb] [SIb] [FA] [SIb]     [FA] [MIb] [SIb] [FA] [SIb]

Hanno detto che Fran[SIb]ziska
è stanca di po[FA7]sare
Per un uomo che dipinge
E [MIb]non la può guardar[SIb]e
Filo filo del mio cuore
Che dagli [SIb7]occhi porti al [MIb]mare
C''è una lacrima na[SIb]scosta
Che ne[FA7]ssuno mi sa dise[SIb]gnare  [SIb7]
[MIb]Tu bandito senza luna
Senza stelle e senza for[SIb]tuna
Questa notte dormi[FA7]rai

Col suo rosario
Stretto intorno al tuo fu[SIb]cile [SIb7]
[MIb]Tu bandito senza luna
Senza stelle e senza for[SIb]tuna
Questa notte dormi[FA7]rai
Col suo ritratto
Proprio sotto il tuo fu[SIb]cile
[FA] [MIb] [SIb] [FA] [SIb]     [FA] [MIb] [SIb] [FA] [SIb]

Hanno detto che Fran[SIb]ziska
Non riesce più a can[FA7]tare
Anche l''ultima sorella
Tra un [MIb]po'' vedrà sposare[SIb]
L''altro giorno un altro uomo
Le ha so[SIb7]rriso per la [MIb]strada
Era certo un fore[SIb]stiero
Che non sa[FA7]peva quel che co[SIb]stava
[MIb]Marinaio di foresta
Senza sonno e senza can[SIb]zoni
Senza una con[FA7]chiglia da portare
O una rete di illusion[SIb]i    [SIb7]
[MIb]Marinaio di foresta
Senza sonno e senza can[SIb]zoni
Senza una con[FA7]chiglia da portare
O una rete di illu[SIb]sioni
[FA] [MIb] [SIb] [FA] [SIb]     [FA] [MIb] [SIb] [FA] [SIb]', 'franziska');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Geordie', 'Fabrizio De André', 'it', '[DOm]Mentre attraver[SIb]savo [LAb]London [SOL7]Bridge
[DOm]  un giorno [MIb]senza sol[SIb]e
[DOm]  vidi una [MIb]donna [SIb]pianger d''a[SOLm]more
pian[DOm]geva per [SOLm]il suo [DOm]Geordie

Im[DOm]piccheranno [SIb]Geordie con [LAb]una corda [SOL7]d''oro
[DOm]  È un privi[MIb]legio [SIb]raro
[DOm]  rubò sei [MIb]cervi nel [SIb]parco del [SOLm]Re
ven[DOm]dendoli [SOLm]per de[DOm]naro

Sel[DOm]late il suo ca[SIb]vallo dalla [LAb]bianca cri[SOL7]niera
[DOm]  sellate[MIb]le il suo [SIb]pony
[DOm]  cavalche[MIb]rà fino a [SIb]Londra sta[SOLm]sera
[DOm]  ad implo[SOLm]rare per [DOm]Geordie

[DOm]Geordie non ru[SIb]bò mai nep[LAb]pure per [SOL7]me
[DOm]  un frutto o un [MIb]fiore [SIb]raro
[DOm]  rubò sei [MIb]cervi nel [SIb]parco del [SOLm]Re
ven[DOm]dendoli [SOLm]per de[DOm]naro

Sal[DOm]vate le sue [SIb]labbra sal[LAb]vate il suo so[SOL7]rriso
[DOm]  non ha vent''[MIb]anni an[SIb]cora
[DOm]  cadrà  l''in[MIb]verno anche [SIb]sopra il suo [SOLm]viso
po[DOm]trete impic[SOLm]carlo al[DOm]lora

Nè il [DOm]cuore degli in[SIb]glesi nè lo [LAb]scettro del [SOL7]Re
[DOm]  Geordie po[MIb]tran sal[SIb]vare
[DOm]  anche se [MIb]piange[SIb]ranno con [SOLm]te
la [DOm]legge non [SOLm]può cam[DOm]biare

Co[DOm]sì lo impicche[SIb]ranno con [LAb]una corda [SOL7]d''oro
[DOm]  È un privi[MIb]legio [SIb]raro
[DOm]  rubò sei [MIb]cervi nel [SIb]parco del [SOLm]Re
ven[DOm]dendoli [SOLm]per de[DOm]naro', 'geordie');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Il Pescatore', 'Fabrizio De André', 'it', '[FA]
[DO] [FA] [DO] [SOL]     [DO] [FA] [DO] [SOL]
[DO] [FA] [DO] [SOL]     [DO] [FA] [DO] [SOL]
All''ombra [DO]dell''ul[SOL]timo [DO]sole
si era asso[FA]pito un pesca[DO]tore
e aveva un [FA]solco [SOL]lungo il [LAm]viso
[FA]come una s[DO]pecie [SOL]di sor[DO]riso[FA].  [DO]   [SOL]
[DO] [FA] [DO] [SOL]

Venne alla [DO]spiaggia [SOL]un assas[DO]sino
due occhi [FA]grandi da bam[DO]bino
due occhi en[FA]ormi [SOL]di pa[LAm]ura
[FA]eran gli s[DO]pecchi [SOL]di un''avven[DO]tura.

La La La [FA]La La La La [DO]La
La La La [SOL]La La La La [DO]La
La La La [FA]La La [SOL]La La [LAm]La
[FA]La La La [DO]La La [SOL]La La [LAm]La
[LAm]
[DO] [FA] [DO] [SOL]     [DO] [FA] [DO] [SOL]
[DO] [FA] [DO] [SOL]     [DO] [FA] [DO] [SOL]
E chiese al [DO]vecchio, "[SOL]Dammi il [DO]pane
ho poco [FA]tempo e troppa [DO]fame"
e chiese al [FA]vecchio, "[SOL]Dammi il [LAm]vino
[FA]ho sete e [DO]sono [SOL]un assas[DO]sino[FA]". [DO]   [SOL]
[DO] [FA] [DO] [SOL]

Gli occhi dis[DO]chiuse il [SOL]vecchio al [DO]giorno
non si guar[FA]dò neppure in[DO]torno
ma versò il [FA]vino e s[SOL]pezzò il [LAm]pane
[FA]per chi di[DO]ceva ho [SOL]sete e ho [DO]fame.

La La La [FA]La La La La [DO]La
La La La [SOL]La La La La [DO]La
La La La [FA]La La [SOL]La La [LAm]La
[FA]La La La [DO]La La [SOL]La La [LAm]La
[LAm]
[DO] [FA] [DO] [SOL]     [DO] [FA] [DO] [SOL]
[DO] [FA] [DO] [SOL]     [DO] [FA] [DO] [SOL]

E fu il ca[DO]lore [SOL]di un mo[DO]mento
poi via di [FA]nuovo verso il [DO]vento
poi via di [FA]nuovo [SOL]verso il [LAm]sole
[FA]dietro alle [DO]spalle [SOL]un pesca[DO]tore[FA].  [DO]   [SOL]
[DO] [FA] [DO] [SOL]

Dietro alle [DO]spalle [SOL]un pesca[DO]tore
e la me[FA]moria è già do[DO]lore
è già il rim[FA]pianto [SOL]di un a[LAm]prile
[FA]giocato all''[DO]ombra [SOL]di un cor[DO]tile.

La La La [FA]La La La La [DO]La
La La La [SOL]La La La La [DO]La
La La La [FA]La La [SOL]La La [LAm]La
[FA]La La La [DO]La La [SOL]La La [LAm]La
[LAm]
[DO] [FA] [DO] [SOL]     [DO] [FA] [DO] [SOL]
[DO] [FA] [DO] [SOL]     [DO] [FA] [DO] [SOL]

Vennero in [DO]sella [SOL]due gen[DO]darmi
vennero in [FA]sella con le [DO]armi
chiesero al [FA]vecchio [SOL]se lì vi[LAm]cino
[FA]fosse pas[DO]sato [SOL]un assas[DO]sino[FA].  [DO]   [SOL]
[DO] [FA] [DO] [SOL]

Ma all''ombra [DO]dell''ul[SOL]timo [DO]sole
si era asso[FA]pito il pesca[DO]tore
e aveva un [FA]solco [SOL]lungo il [LAm]viso
[FA]come una [DO]specie [SOL]di sor[DO]riso.
e aveva un [FA]solco [SOL]lungo il [LAm]viso
[FA]come una [DO]specie [SOL]di sor[DO]riso.

La La La [FA]La La La La [DO]La
La La La [SOL]La La La La [DO]La
La La La [FA]La La [SOL]La La [LAm]La
[FA]La La La [DO]La La [SOL]La La [DO]La', 'il-pescatore');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Ballata Dell''Amore Cieco', 'Fabrizio De André', 'it', '[LAm]Un uomo o[FA]nesto, un [SOL]uomo [DO]probo
tra-la-la-[SOL]lalla, tra-lalla-[DO]lero
[LAm]S''innamo[FA]rò  [SOL]perduta[DO]mente
d''una che [MI7]non lo amava [LAm]niente
[LAm]Gli disse "[FA]Porta[SOL]mi do[DO]mani"
tra-la-la-[SOL]lalla, tra-lalla-[DO]lero
[LAm]Gli disse "[FA]Porta[SOL]mi do[DO]mani
il cuore di tua [FA]madre per [SOL]i miei [LAm]cani"
[LAm]Lui dalla [FA]madre an[SOL]dò e l''uc[DO]cise
tra-la-la-[SOL]lalla, tra-lalla-[DO]lero
[LAm]Dal petto il [FA]cuore [SOL]le strap[DO]pò
e dal suo a[MI7]more ritor[LAm]nò
[LAm] [REm] [LAm]   [SOL] [DO]
[LAm] [REm] [LAm]   [FA] [SOL] [LAm]

[LAm]Non era il [FA]cuore, non [SOL]era il [DO]cuore
tra-la-la-[SOL]lalla, tra-lalla-[DO]lero
[LAm]Non le bas[FA]tava [SOL]quell''or[DO]rore
voleva un''altra [FA]prova del suo [SOL]cieco a[LAm]more
[LAm]Gli disse a[FA]mor "Se [SOL]mi vuoi [DO]bene"
tra-la-la-[SOL]lalla, tra-lalla-[DO]lero
[LAm]Gli disse a[FA]mor "Se [SOL]mi vuoi [DO]bene
tagliati dei [FA]polsi le [SOL]quattro [LAm]vene"
[LAm]Le vene ai [FA]polsi lui [SOL]si tagl[DO]iò
tra-la-la-[SOL]lalla, tra-lalla-[DO]lero
[LAm]E come il [FA]sangue [SOL]ne sgor[DO]gò
correndo come un [FA]pazzo da [SOL]lei tor[LAm]nò.
[LAm] [REm] [LAm]   [SOL] [DO]
[LAm] [REm] [LAm]   [FA] [SOL] [LAm]  [FA7]

[LA#m]Gli disse [FA#]lei, ri[SOL#]dendo [DO#]forte
tra-la-la-[SOL#]lalla, tra-lalla-[DO#]lero
[LA#m]Gli disse [FA#]lei, ri[SOL#]dendo [DO#]forte:
"L''ultima tua [FA#]prova sa[SOL#]rà la [LA#m]morte!"
[LA#m]E mentre il [FA#]sangue [SOL#]lento u[DO#]sciva
e ormai cam[SOL#]biava il suo co[DO#]lore
[LA#m]La vani[FA#]tà  [SOL#]fredda gio[DO#]iva,
un uomo s''era uc[FA#]ciso [SOL#]per il suo a[LA#m]more
[LA#m] [RE#m] [LA#m]   [SOL#] [DO#]
[LA#m] [RE#m] [LA#m]   [FA#] [SOL#] [LA#m]

[LA#m]Fuori soff[FA#]iava do[SOL#]lce il ven[DO#]to
tra-la-la-[SOL#]lalla, tra-lalla-l[DO#]ero
[LA#m]Ma lei fu [FA#]presa [SOL#]da sgo[DO#]mento
quando lo [FA#]vide mo[SOL#]rir con[LA#m]tento
[LA#m]Morir con[FA#]tento e i[SOL#]nnamo[DO#]rato
quando a lei [SOL#]niente era res[DO#]tato
[LA#m]Non il suo a[FA#]more, [SOL#]non il suo [DO#]bene,
ma solo il sangue [FA#]secco del[SOL#]le sue [LA#m]vene
[LA#m] [RE#m] [LA#m]   [SOL#] [DO#]
[LA#m] [RE#m] [LA#m]   [FA#] [SOL#] [LA#m]', 'la-ballata-dellamore-cieco');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DO#'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#'),
(@last_song_id, 'LA#m'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE#m'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOL#');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Guerra di Piero', 'Fabrizio De André', 'it', '[LAm]  Dormi se[MI7]polto in un campo di [LAm]grano
non è la [REm]rosa, non [SOL7]è il tuli[DO]pano
che ti fan [MI7]veglia dall''ombra dei [LAm]fossi
ma sono [REm]mille pa[MI7]paveri [LAm]rossi.
"Lungo le s[REm]ponde del mio tor[LAm]rente
voglio che [REm]scendano i lucci argen[LAm]tati
non più i ca[REm]daveri [SOL7]dei sol[DO]dati
portati in [MI7]braccio dalla cor[LAm]rente".
Così di[REm]cevi ed era d''In[LAm]verno
e come gli [REm]altri, verso l''in[LAm]ferno
te ne vai [REm]triste [SOL7]come chi [DO]deve
ed il vento ti [MI7]sputa in faccia la [LAm]neve.

[LAm]  Fermati [MI7]Piero, fermati a[LAm]desso
lascia che il [REm]vento ti [SOL7]passi un po'' ad[DO]dosso
dei morti in bat[MI7]taglia ti porti la [LAm]voce
chi diede la [REm]vita ebbe in [MI7]cambio una [LAm]croce.
Ma tu non lo u[REm]disti ed il tempo pas[LAm]sava
con le sta[REm]gioni a passo di "[LAm]java"
ed arri[REm]vasti a var[SOL7]car la fron[DO]tiera
in un bel [MI7]giorno di Prima[LAm]vera.
E mentre mar[REm]ciavi con l''anima in s[LAm]palle
vedesti un [REm]uomo in fondo alla [LAm]valle
che aveva il tuo s[REm]tesso i[SOL7]dentico u[DO]more
ma la di[MI7]visa di un altro co[LAm]lore.

[LAm]  Sparagli [MI7]Piero, sparagli [LAm]ora
e dopo un [REm]colpo s[SOL7]paragli an[DO]cora
fino a che [MI7]tu non lo vedrai e[LAm]sangue
cadere in [REm]terra a co[MI7]prire il suo [LAm]sangue.
"E se gli [REm]sparo in fronte o nel [LAm]cuore
soltanto il [REm]tempo avrà per mo[LAm]rire
ma il tempo a [REm]me reste[SOL7]rà per ve[DO]dere
vedere gli [MI7]occhi d''un uomo che [LAm]muore".
E mentre gli [REm]usi questa pre[LAm]mura
quello si [REm]volta, ti vede, ha pa[LAm]ura
ed imbrac[REm]ciata [SOL7]l''artiglie[DO]ria
non ti ri[MI7]cambia la corte[LAm]sia.

[LAm]  Cadesti a [MI7]terra, senza un la[LAm]mento
e ti accor[REm]gesti in un [SOL7]solo mo[DO]mento
che il tempo [MI7]non ti sarebbe bas[LAm]tato
a chieder per[REm]dono per [MI7]ogni pec[LAm]cato.
[LAm]  Cadesti a [MI7]terra, senza un la[LAm]mento
e ti accor[REm]gesti in un [SOL7]solo mo[DO]mento
che la tua v[MI7]it finiva quel [LAm]giorno
e non ci sa[REm]rebbe [MI7]stato ri[LAm]torno.
"Ninetta [REm]mia, crepare di [LAm]Maggio
ci vuole [REm]tanto, troppo co[LAm]raggio.
Ninetta [REm]bella di[SOL7]ritto all''In[DO]ferno
avrei prefe[MI7]rito andarci in In[LAm]verno".
E mentre il [REm]grano ti stava a sen[LAm]tire
dentro le [REm]mani stringevi il fu[LAm]cile
dentro la [REm]bocca strin[SOL7]gevi pa[DO]role
troppo ge[MI7]late per sciogliersi al [LAm]sole.

[LAm]  Dormi se[MI7]polto in un campo di [LAm]grano
non è la [REm]rosa, non [SOL7]è il tuli[DO]pano
che ti fan [MI7]veglia dall''ombra dei [LAm]fossi
ma sono [REm]mille pa[MI7]paveri [LAm]rossi.', 'la-guerra-di-piero');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Una Storia Sbagliata', 'Fabrizio De André', 'it', '[LAb]   [SOLb] [REb]    [LAb]   [SOLb] [REb]
[LAb]   [SOLb] [REb]    [LAb]   [SOLb] [REb]
É una s[REb]toria da dimenticare
É una [SOLb]storia da non raccontare
É una s[REb]toria un pò compli[LAb]cata
É una [SOLb]storia sbag[REb]liata
Cominciò con la luna sul posto
e fi[SOLb]nì con un fiume di inchiostro
É una [REb]storia un poco scon[LAb]tata,
É una s[SOLb]toria sbag[REb]liata,
Storia di[LAb]versa per [SOLb]gente nor[REb]male,
Storia co[LAb]mune per [SOLb]gente spe[REb]ciale
Cos''altro vi [SIbm]serve [LAb] da queste [SOLb]vite
Ora che il [REb]cielo al [LAb]centro le ha col[SOLb]pite,
Ora che il [REb]cielo ai [LAb]bordi le ha scol[REb]pite
[SOLb] [REb]

É una storia di periferia,
É una [SOLb]storia da una botta e via,
É una [REb]storia sconclusio[LAb]nata,
Una [SOLb]storia sbag[REb]liata

Una spiaggia ai piedi del letto,
Stazione [SOLb]termini ai piedi del cuore,
Una [REb]notte un pò conci[LAb]tata,
Una [SOLb]notte sbag[REb]liata,
Notte di[LAb]versa per [SOLb]gente nor[REb]male
Notte co[LAb]mune per [SOLb]gente spe[REb]ciale
Cos''[LAb]altro ti [SIbm]serve [LAb] da queste v[SOLb]ite
Ora che il [REb]cielo al [LAb]centro le ha col[SOLb]pite,
Ora che il [REb]cielo ai [LAb]bordi le ha scol[REb]pite
[SOLb] [REb]

É una st[REb]oria vestita di nero
É una [SOLb]storia da basso impero
É una [REb]storia mica male insab[LAb]biata
É una [SOLb]storia sbag[REb]liata

É una storia da carabinieri
É una [SOLb]storia per parrucchieri
É una [REb]storia un pò sputta[LAb]nata
o è una [SOLb]storia sbagl[REb]iata
Storia di[LAb]versa per [SOLb]gente nor[REb]male
Storia co[LAb]mune per [SOLb]gente spe[REb]ciale
Cos''[LAb]altro vi [SIbm]serve[LAb]  da queste [SOLb]vite
Ora che il [REb]cielo al [LAb]centro le ha col[SOLb]pite,
Ora che il [REb]cielo ai [LAb]bordi le ha scol[REb]pite
[SOLb] [REb]
[REb]   [SOLb]   [REb]  [LAb]  [SOLb]  [REb]

Per il [REb]segno che ci è rimasto
non ri[SOLb]peterci quanto ti spiace,
Non ci ch[REb]iedere più com''è andata,
tanto lo [LAb]sai che è una [SOLb]storia sbagl[REb]iata,
tanto lo [LAb]sai che è una [SOLb]storia sbagl[REb]iata
[LAb]    [SOLb] [REb]     [LAb]    [SOLb] [REb]', 'una-storia-sbagliata');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LAb'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SOLb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Via Del Campo', 'Fabrizio De André', 'it', 'Via del [SOLm]Campo c''è u[RE7]na gra[SOLm]ziosa
gli occhi [SIb]grandi co[MIb]lor di [FA]foglia
tutta [SIb]notte sta [MIb]sulla [REm]soglia[SOLm]
vende a [DOm]tutti la [RE7]stessa [SOLm]rosa

Via del [SOLm]Campo c''è u[RE7]na bam[SOLm]bina,
con le [SIb]labbra co[MIb]lor ru[FA]giada,
gli occhi [SIb]grigi co[MIb]me la s[REm]trada [SOLm]
nascon [DOm]fiori do[RE7]ve cam[SOLm]mina.

Via del [SOLm]Campo c''è u[RE7]na put[SOLm]tana
gli occhi [SIb]grandi co[MIb]lor di [FA]foglia
se di a[SIb]marla ti [MIb]vien la [REm]voglia[SOLm]
basta [DOm]prenderla [RE7]per la [SOLm]mano

E ti [SOLm]sembra di an[RE7]dare lon[SOLm]tano
lei ti [SIb]guarda con [MIb]un sor[FA]riso
non cre[SIb]devi che il [MIb]para[REm]diso  [SOLm]
fosse [DOm]solo lì al [RE7]primo [SOLm]piano

[SIbm] [FA7] [SIbm]
[REb] [SOLb] [LAb]
[REb] [SOLb] [FAm] [SIbm]
[MIb] [FA7] [SIbm]

Via del [SOLm]Campo ci [RE7]va un il[SOLm]luso
a pre[SIb]garla di [MIb]mari[FA]tare
a ve[SIb]derla sa[MIb]lir le [REm]scale [SOLm]
fino a [DOm]quando il bal[RE7]cone è [SOLm]chiuso

Ama e [SOLm]ridi se a[RE7]mor ris[SOLm]ponde
piangi [SIb]forte se [MIb]non ti [FA]sente
dai dia[SIb]manti non [MIb]nasce ni[REm]ente  [SOLm]
dal [DOm]letame [RE7]nascono i [SOLm]fior
dai dia[SIb]manti non [MIb]nasce ni[REm]ente  [SOLm]
dal [DOm]letame [RE7]nascono i [SOLm]fior.', 'via-del-campo');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'FA'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'RE'),
(@last_song_id, 'REb'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SOLb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Volta La Carta', 'Fabrizio De André', 'it', '[LAm]   [DO]   [SOL]    [FA] [MI]
[LAm]   [DO]   [SOL]    [FA] [MI]
[LAm]   [DO]   [LAm]    [SOL]
[LAm]   [SOL]  [FA] [MI]  [LAm]
C''è una [DO]donna che [SOL]semina il [DO]grano
volta la [FA]carta si [DO]vede il vi[SOL]llano
il vi[DO]llano che [SOL]zappa la [DO]terra
volta la [FA]carta [DO]viene la [SOL]guerra
per la[DO] guerra [SOL]non c''è più s[DO]oldati
a piedi [FA]scalzi son [DO]tutti sca[SOL]ppati
Angio[SOL]lina cammina cammina
sulle [FA]sue scarpette [DO]blu
carabi[FA]niere l''ha innamo[DO]rata
volta la [SOL]carta e lui non c''è [DO]più
carabi[FA]niere l''ha innamo[DO]rata
volta la [SOL]carta e lui non c''è [DO]più, [MI]Ehi!
[LAm]   [DO]   [SOL]    [FA] [MI]
[LAm]   [DO]   [SOL]    [FA] [MI]
[LAm]   [DO]   [LAm]    [SOL]
[LAm]   [SOL]  [FA] [MI]  [LAm]

C''è un bam[DO]bino che [SOL]sale un can[DO]cello
ruba ci[FA]liegie e [DO]piume d''uc[SOL]cello
tira sas[DO]sate [SOL]non ha do[DO]lori
volta la [FA]carta c''è il [DO]fante di [SOL]cuori
il fante di [DO]cuori che è un [SOL]fuoco di [DO]paglia
volta la [FA]carta il [DO]gallo ti s[SOL]veglia
Angio[SOL]lina alle sei di mattina
s''intreccia i ca[FA]pelli con foglie d''or[DO]tica
Ha una col[FA]lana di ossi di [DO]pesca
la gira tre [SOL]volte intorno alle [DO]dita
Ha una col[FA]lana di ossi di [DO]pesca
la conta tre [SOL]volte in mezzo alle [DO]dita, [MI]Ehi!
[LAm]   [DO]   [SOL]    [FA] [MI]
[LAm]   [DO]   [SOL]    [FA] [MI]
[LAm]   [DO]   [LAm]    [SOL]
[LAm]   [SOL]  [FA] [MI]  [LAm]

Mia madre ha un mu[DO]lino e un [SOL]figlio infe[DO]dele
gli inzucchera il [FA]naso di [DO]torta di [SOL]mele
Mia madre e il mu[DO]lino son [SOL]nati ri[DO]dendo
volta la [FA]carta c''è un [DO]pilota [SOL]biondo
Pilota [DO]biondo ca[SOL]micie di [DO]seta
cappello di [FA]volpe sor[DO]riso da at[SOL]leta
Angio[SOL]lina seduta in cucina che piange
che [FA]mangia insalata di [DO]more
Ragazzo stra[FA]niero ha un disco d''or[DO]chestra
che gira ve[SOL]loce che parla d''a[DO]more
Ragazzo stra[FA]niero ha un disco d''or[DO]chestra
che gira ve[SOL]loce che parla d''a[DO]more

Madamado[DO]rè ha [SOL]perso sei [DO]figlie
tra i bar del [FA]porto e le [DO]sue mera[SOL]viglie
Madamado[DO]rè sa [SOL]puzza di [DO]gatto
volta la [FA]carta e [DO]paga il ri[SOL]scatto
paga il ri[DO]scatto con le [SOL]borse degli [DO]occhi
piene di [FA]foto di [DO]sogni inte[SOL]rrotti
Angiol[SOL]ina ritaglia i giornali
si veste da [FA]sposa canta vit[DO]toria
chiama i ri[FA]cordi col loro [DO]nome
volta la [SOL]carta e finisce in [DO]gloria
chiama i ri[FA]cordi col loro [DO]nome
volta la [SOL]carta e finisce in [DO]gloria', 'volta-la-carta');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'SOL');

