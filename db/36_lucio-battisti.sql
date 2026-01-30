-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Acqua Azzurra Acqua Chiara', 'Lucio Battisti', 'ITA', '[RE]  [LA]  [SOL]  [FA#] [SOL] [LA]
[RE]  [LA]  [SOL]  [LA]  [SOL]  [LA]
Ogni notte ritor[LA]nar per cercarla in qualche [MI]bar
domandare ciao che [SIm]fai e poi u[MI]scire insieme a [LA]lei
Ma da quando ci sei tu tutto [FA#7]questo non c''è [SIm]più

Acqua az[RE]zurra acqua ch[LA]iara
con le [SOL]mani posso finalmente [FA#]bere [SOL]    [LA]
nei tuoi [RE]occhi innoc[LA]enti posso an[SOL]cora ritro[LA]vare
il pro[SOL]fumo di un amore [LA]puro, puro [SOL]come il tuo a[LA]mor

Ti telefono se [LA]vuoi non so ancora se c''è [MI]lui
accidenti che fa[SIm]rò quattro a[MI]mici trove[LA]rò
Ma da quando ci sei tu tutto [FA#7]questo non c''è [SIm]più

Acqua az[RE]zurra acqua [LA]chiara
con le [SOL]mani posso finalmente [FA#]bere [SOL]    [LA]
nei tuoi [RE]occhi innoc[LA]enti posso an[SOL]cora ritro[LA]vare
il pro[SOL]fumo di un amore [LA]puro, puro [SOL]come il tuo a[LA]mor
da q[FA#7]uando ci sei tu tutto questo non c''è più

Acqua az[RE]zurra acqua ch[LA]iara
con le [SOL]mani posso finalmente [FA#]bere  [SOL]    [LA]
acqua az[RE]zurra papapap[LA]a    [SOL]    [LA]   [SI]

Son le quattro e mezza [SI]ormai
non ho voglia di [FA#]dormir
a quest''ora [DO#m]cosa vuoi [SOL#m]   mi va [FA#]bene pure [SI]lei
Ma da quando ci sei tu[SOL#7]
tutto questo non c''è [DO#m]più uuh

Acqua az[MI]zurra acqua [SI]chiara
con le [LA]mani posso finalmente [SOL#]bere  [LA]   [SI]
Acqua az[MI]zurra acqua [SI]chiara
papada [LA]pada.. papada [SOL#]pa.. pa[LA]dapa[SI]pa
Acqua az[MI]zurra acqua [SI]chiara
con le [LA]mani posso finalmente [SOL#]bere  [LA]   [SI]
Acqua az[MI]zurra acqua [SI]chiara
papada [LA]pada.. papada [SOL#]pa.. pa[LA]dapa[SI]pa', 'acqua-azzurra-acqua-chiara');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOL#'),
(@last_song_id, 'SOL#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Dieci Ragazze', 'Lucio Battisti', 'ITA', '[LAm]  Ho visto un uomo che moriva per amore,
ne ho visto un altro che più lacrime [FA]non ha
Nessun col[LAm]tello mai ti può fe[FA]rir di più
di un grande amore che ti stringe il c[MI]uor

[LAm]Dieci ragazze per me posson bastare
dieci ragazze per me voglio di[MI]menticare
capelli [LAm]biondi da accarez[LAm]zare
e labbra [RE]rosse sulle quali mo[FA]rire
[LAm]Dieci ragazze per [MI]me
solo per [LAm]me      [LA5]    [SOL#5]      [FA#5]     [FA]   [MI]

[LAm]Una la voglio perché sa bene ballare
Una la voglio perché ancor non sa
cosa vuol [MI]dir l''amore
[LAm]Una soltanto perc[DO]hé
ha cono[RE]sciuto tutti tranne [FA]me
[LAm]Dieci ragazze co[MI]sì che dicono solo di [LAm]sì

[MI]  Vorrei sapere chi ha [LAm]detto
che non vivo [SOL]più senza [LAm]te   [SOL]    [MI7]
[LAm]Matto, quello è proprio [SOL]matto per[DO]ché
forse non [MI]sa
che posso averne [LAm]una per il [SOL]giorno
[LAm]una per la [SOL]sera
però quel [LAm]matto mi conosce
perché ha detto una cosa vera   [FA7]

[SIbm]Dieci ragazze per me posson bastare
dieci ragazze per me voglio di[FA]menticare
capelli [SIbm]biondi da accare[REb]zzare
e labbra [MIb]rosse sulle quali mo[SOLb]rire
[SIbm]Dieci ragazze co[FA7]sì che dicon solo di [SIbm]sì

[FA] Vorrei sapere chi ha [SIbm]detto
che non vivo [LAb]più senza [SIbm]te     [LAb]    [FA7]
[SIbm]Matto, quello è proprio [LAb]matto per[REb]ché
forse non [FA]sa
che posso averne [SIbm]una per il [LAb]giorno
[SIbm]una per la [LAb]sera
però quel [SIbm]matto mi conosce
perché ha detto una cosa vera  [SOLb7]

[SIm]Dieci ragazze per me
[SOL]dieci ragazze per me
[MI]dieci ragazze per me
però io muoio per [SIm]te  [SOL7]
però io muoio per [SIm]te  [SOL7]
[SIm]  [SOL]  [SIm]  [SOL]  [SIm]  [SOL]
[SIm]  [FA#m]  [SIm]', 'dieci-ragazze');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAb'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIb'),
(@last_song_id, 'RE'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOL#'),
(@last_song_id, 'SOLb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('I Giardini di Marzo', 'Lucio Battisti', 'ITA', '[SOL#m] [RE#m7] [MI7+]    [SOL#m] [RE#m7] [MI7+]
Il car[SOL#m]retto passava e quell''[RE#m]uomo
gridava ”[MI7+]gelati”
al ven[SOL#m]tuno del mese i nostri [RE#m]soldi
erano già[MI7+] finiti
io pen[SOL#m]savo a mia madre e [RE#m]rivedevo i
suoi ves[MI7+]titi
il più [SOL#m]bello era nero coi [RE#m]fiori non
ancora appas[MI7+]siti
[SOL#m] [RE#m7] [MI7+]    [SOL#m] [RE#m7] [MI7+]

All''us[SOL#m]cita di scuola i ra[RE#m7]gazzi
vendevano i [MI7+]libri
io res[SOL#m]tavo a guardarli cer[RE#m7]cando il
coraggio pe[MI7+]r imitarli
poi scon[SOL#m]fitto tornavo a gio[RE#m7]car con la
mente e i [MI7+]suoi tarli
e la [SOL#m]sera al telefono [RE#m7]tu mi dicevi
[MI7+] perché non parli...[FA#]     [RE#]

Che anno [SI]è che giorno [FA#]è questo è il
[DO#m]Tempo di vivere con [SOL#m]te le mie mani [SI]come
vedi non t[DO#m]remano più
e ho nell''[FA#]anima [RE#7]   in fondo all''anima
cieli im[SI]mensi
e immenso a[FA#]more e poi an[DO#m]cora ancora
amore amor per [SOL#m]te
fiumi azzurri [SI]e colline e [DO#m]praterie[DO#m]  dove
[FA#]corrono dol[RE#7]cissime
le [SOL#m]mie malinconie l''universo [SI]trova
spazio [DO#m]dentro me...
ma il co[SOL#m]raggio di vivere [RE#m7]quello ancora non [MI7+]c''è
[SOL#m] [RE#m7] [MI7+]    [SOL#m] [RE#m7] [MI7+]
[SOL#m] [RE#m7] [MI7+]    [SOL#m] [RE#m7] [MI7+]

I giar[SOL#m]dini di marzo si [RE#m7]vestono di nuovi
co[MI7+]lori
e le [SOL#m]giovani donne in quel [RE#m7]mese vivono
nuov[MI7+]i amori
cammi[SOL#m]navi al mio fianco e ad un [RE#m7]tratto
dicesti[MI7+] tu muori
se mi ai[SOL#m]uti son certa che [RE#m7]io ne verrò [MI7+]fuori
ma non [SOL#m]una parola chia[RE#m7]rì i miei pen[MI7+]sieri
conti[SOL#m]nuai a camminare la[RE#m7]sciandoti
attrice di[MI7+] ieri  [FA#]     [RE#]

Che anno [SI]è che giorno [FA#]è questo è il
[DO#m]Tempo di vivere con [SOL#m]te le mie mani [SI]come
vedi non t[DO#m]remano più
e ho nell''[FA#]anima [RE#7]   in fondo all''anima
cieli im[SI]mensi
e immenso a[FA#]more e poi an[DO#m]cora ancora
amore amor per [SOL#m]te
fiumi azzurri [SI]e colline e [DO#m]praterie[DO#m]  dove
[FA#]corrono dol[RE#7]cissime
le [SOL#m]mie malinconie l''universo [SI]trova
spazio [DO#m]dentro me...
ma il co[SOL#m]raggio di vivere [RE#m7]quello ancora non [MI7+]c''è
[SOL#m] [RE#m7] [MI7+]    [SOL#m] [RE#m7] [MI7+]   [SOL#m11]', 'i-giardini-di-marzo');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE#'),
(@last_song_id, 'RE#m'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Il Mio Canto Libero', 'Lucio Battisti', 'ITA', '[LA]  [DO#m]  [RE]  [LA]
In un mondo [LA]che non ci vuole [DO#m]più
il mio canto [RE7+]libero sei [LA]tu
e l''immensità si apre intorno a [DO#m]noi
aldilà del [RE7+]limite degli occhi t[LA]uoi

[LA]Nasce il sentimento, [DO#m]nasce in mezzo al pianto
e s''innalza al[RE7+]tissimo e [LA]va
E [LA]vola sulle accuse della gente
a [DO#m]tutti i suoi retaggi indifferente
sorretto da un a[RE7+]nelito d''amor di [LA]vero amore

In un mondo [LA]che prigioniero [DO#m]è
respiriamo [RE7+]liberi io e [LA]te
e la verità si offre nuda a [DO#m]noi
e limpida è l''im[RE7+]magine or[LA]mai

[LA]Nuove sensazioni, [DO#m]giovani emozioni
si esprimono pu[RE7+]rissime in [LA]noi
La [LA]veste dei fantasmi del passato
ca[DO#m]dendo lascia il quadro immacolato
e s''alza un vento ti[RE7+]epido d''amore di [LA]vero amore

[RE]E riscopro [LA]te   [RE]   [LA]
dolce com[DO#m]pagna che
[RE7+]  non sai dove andare ma sai che o[LA]vunque andrai
[SOL]  al fianco tuo mi a[LA]vrai.. [SIm]se tu lo vuoi [MI]
[LA]  [DO#m]  [RE]  [LA]
[LA]  [DO#m]  [RE]  [LA]

[LA]Pietre un giorno case
rico[DO#m]perte dalle rose selvatiche
ri[RE]vivono, ci [LA]chiamano
[LA]Boschi abbandonati
e per[DO#m]ciò sopravvissuti vergini
si [RE]aprono, ci ab[LA]bracciano [SOL]     [FA#7]

In un mondo [SI]che prigioniero [RE#m]è
respiriamo [MI]liberi io e [SI]te
e la verità si offre nuda a [RE#m]noi
e limpida è l''im[MI]magine or[SI]mai

[SI]Nuove sensazioni, [RE#m]giovani emozioni
si esprimono pu[MI]rissime in [SI]noi
[SI]La veste dei fantasmi del passato
ca[RE#m]dendo lascia il quadro immacolato
e s''alza un vento [MI]tiepido d''amore di [SI]vero amore
[MI]e riscopro [SI]te.. tu [MI]tu tu [SI]tu.. tu [MI]tu tu [SI]tu..', 'il-mio-canto-libero');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'RE#m'),
(@last_song_id, 'SI'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Il Tempo di Morire', 'Lucio Battisti', 'ITA', '
(continua come Intro)
Motoci[DO]cletta, [FA]   [DO]
dieci H. [DO]P.   [FA]   [DO]
tutta cro[DO]mata,[FA]   [DO]
e'' tua se dici [SOL]si,   [DO]   [SOL]
mi costa una [DO]vita, [FA]   [DO]
per niente la da[FA]rei, [SIb]    [FA]
ma ho il cuore ma[SOL]lato,[FA]
e so'' che guari[DO]rei  [FA]   [DO]

Non dire [DO]no,  [FA]   [DO]
Non dire [DO]no,  [FA]   [DO]
Non dire [DO]no,  [FA]   [DO]
Non dire [SOL]no,   [DO]   [SOL]
Lo so'' che ami un [DO]altro [FA]   [DO]
ma che ci posso [FA]fare [SIb]    [FA]
io sono un dispe[SOL]rato [FA]
perchè ti voglio a[DO]mare,[FA]   [DO]

perchè ti voglio a[DO]mare,[FA]   [DO]
perchè ti voglio a[DO]mare,[FA]   [DO]
perchè ti voglio a[DO]mare,[FA]   [DO]
stanotte adesso [SOL]si___![DO]   [SOL]
mi basta il tempo di mo[DO]rire,[FA]   [DO]
fra le tue braccia co[FA]si'', [SIb]    [FA]
domani puoi dimenti[SOL]care domani, ma a[FA]desso,
adesso dimmi di [DO]si.  [FA]   [DO]

Non dire [DO]no,  [FA]   [DO]
Non dire [DO]no,  [FA]   [DO]
Non dire [DO]no,  [FA]   [DO]
Non dire [SOL]no,   [DO]   [SOL]

prendi tutto quello che [SOL]ho!   [DO]   [SOL]
mi basta il tempo di mo[DO]rire,[FA]   [DO]
fra le tue braccia co[FA]si'', [SIb]    [FA]
domani puoi dimenti[SOL]care domani, ma a[FA]desso,
adesso dimmi di [DO]si   [FA]   [DO]
adesso dimmi di [DO]si,  [FA]   [DO]
adesso dimmi di [DO]si,  [FA]   [DO]
adesso dimmi di [DO]si!  [FA]   [DO]

Non dire [DO]no,  [FA]   [DO]
non dire [DO]no,  [FA]   [DO]
non dire [DO]no,  [FA]   [DO]
non dire [DO]no,  [FA]   [DO]
Lo so'' che ami un [DO]altro [FA]   [DO]
ma che ci posso [FA]fare [SIb]    [FA]
io sono un dispe[SOL]rato [FA]
perchè ti voglio a[DO]mare,[FA]   [DO]
perche'' ti voglio a[DO]mare,[FA]   [DO]
perche'' ti voglio a[DO]mare,[FA]   [DO]
perche'' ti voglio a[DO]mare,[FA]   [DO]
stanotte adesso [SOL]si___!
mi basta il tempo di mo[DO]rire,[FA]   [DO]
fra le tue braccia co[FA]si'', [SIb]    [FA]
domani puoi dimenti[SOL]care domani, ma a[FA]desso,
adesso dimmi di [DO]si   [FA]   [DO]
adesso dimmi di [DO]si   [FA]   [DO]
adesso dimmi di [DO]si,  [FA]   [DO]
adesso dimmi di [SOL]si,  [FA]
dimmi di [DO]si,  [FA]   [DO]
ma che ci posso [FA]fare [SIb]    [FA]
io sono un dispe[SOL]rato [FA]
perchè ti voglio a[DO]mare,[FA]   [DO]
io sono un dispe[SOL]rato
perchè ti voglio a[LAb]mare', 'il-tempo-di-morire');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Collina dei Ciliegi', 'Lucio Battisti', 'ITA', 'E se dav[DO]vero tu vuoi vivere
una vita luminosa e più frag[MI7]rante
can[FA]cella col coraggio quella [SOL]supplica dagli occhi[DO]
troppo spesso la saggezza è solamente
la prudenza più sta[MI7]gnante
e quasi [FA]sempre dietro la coll[SOL]ina il sole [DO]
Ma perché tu non ti vuoi azzurra e lu[MI7]cente
ma perc[FA7+]hé tu non vuoi spaziare con me
volando intorno la tradizione
come un colombo intorno a un pallone frenato
e con un colpo di becco
bene aggiustato forato e lui giù, giù, giù

e [LAm]noi an[MIm]cora an[FA]cor più su [DO]
pla[LAm]nando sopra [MIm]boschi di [FA]braccia tes[DO]e
[LAm]un sor[MIm]riso che non h[FA7+]a
[LAm]né più un [MIm]volto, né [FA]più un''et[DO]à

[LAm]  [MIm] [FA]  [DO]
E [LAm]respirando brezze che dil[MIm]agano su terre
senza [FA7+]limiti e confini
ci al[LAm]lontaniamo e [MIm]poi ci ritro[FA]viamo più vic[DO]ini
[LAm]e più in [MIm]alto e più in [FA7+]là
(se chiudi gli occhi un istante)
[LAm]ora [MIm]figli dell''im[FA]mensità[DO]
Se segui la mia mente se segui la mia [MI7]mente
abban[FA]doni facilmente le an[SOL]tiche gelosi[DO]e
ma non ti accorgi che è solo la paura
che inquina e uccide i senti[MI7]menti
le [FA]anime non hanno se[SOL]sso né sono mi[DO]e
Non non temere, tu non sarai preda dei [MI7]venti
ma perc[FA7+]hé non mi dài, la tua mano perché?

Potremmo correre sulla collina
e fra i ciliegi veder la mattina [FA](e il giorno)
[FA7+]  E dando un calcio ad un sasso
residuo d''inferno e farlo rotolar giù, giù, giù
e [LAm]noi an[MIm]cora an[FA]cor più su [DO]
pla[LAm]nando sopra [MIm]boschi di [FA]braccia tes[DO]e
[LAm]un sor[MIm]riso che non h[FA7+]a
[LAm]né più un [MIm]volto, né [FA]più un''et[DO]à
E [LAm]respirando brezze che dil[MIm]agano su terre
senza [FA7+]limiti e confini
ci al[LAm]lontaniamo e [MIm]poi ci ritro[FA]viamo più vic[DO]ini
[LAm]e più in [MIm]alto e più in [FA7+]là
[LAm]ora [MIm]figli dell''im[FA]mensità[DO]', 'la-collina-dei-ciliegi');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Canzone del Sole', 'Lucio Battisti', 'ITA', '[LA] [MI] [RE] [MI]
[LA] [MI] [RE] [MI]
[LA]   Le bionde [MI]trecce gli occhi az[RE]zurri e poi [MI]
[LA]   le tue cal[MI]zette rosse [RE]      [MI]
[LA]   e l''inno[MI]cenza sulle [RE]gote tue [MI]
[LA]   due arance an[MI]cor più rosse [RE]      [MI]
[LA]   e la can[MI]tina buia d[RE]ove noi  [MI]
[LA]   respira[MI]vamo piano [RE]      [MI]
[LA]   e le tue [MI]corse l''eco [RE]dei tuoi no[MI] o no
[LA]   mi stai fa[MI]cendo paura [RE]      [MI]
[LA]   Dove sei [MI]stata cos''hai [RE]fatto mai
[MI]   una d[LA]onna[MI] donna[RE] donna[MI] dimmi
[LA]   cosa vuol [MI]dir sono una [RE]donna ormai
[MI]   Ma quante [LA]braccia ti hanno s[MI]tretto tu lo [RE]sai
per diven[MI]tar quel che s[LA]ei
che importa [MI]tanto tu non [RE]me lo dirai[MI] purtroppo
[LA]   Ma ti ri[MI]cordi l''acqua v[RE]erde e noi  [MI]
[LA]   le rocce b[MI]ianco il fondo [RE]        [MI]
[LA]   di che co[MI]lore sono gli [RE]occhi tuoi  [MI]
[LA]   se me lo ch[MI]iedi non ris[RE]pondo  [MI]
[LA]   Oh mare [MI]nero Oh mare [RE]nero Oh mare [MI]ne...
[LA]   tu eri [MI]chiaro e traspa[RE]rente come m[MI]e
[LA]   Oh mare [MI]nero Oh mare [RE]nero Oh mare [MI]ne...
[LA]   tu eri [MI]chiaro e traspa[RE]rente come m[MI]e
[LA] [MI] [RE] [MI]   [LA] [MI] [RE] [MI]
[LA] [MI] [RE] [MI]   [LA] [MI] [RE] [MI]

Le bicic[LA]lette abbando[MI]nate sopra il p[RE]rato e poi  [MI]
[LA]   noi due dis[MI]tesi all''ombra [RE]      [MI]
[LA]   un fiore in [MI]bocca può ser[RE]vire sai [MI]
[LA]   più allegro [MI]tutto sembra [RE]      [MI]

[LA]   e d''improv[MI]viso quel si[RE]lenzio tra noi [MI]
[LA]   e quel tuo sg[MI]uardo strano [RE]      [MI]
[LA]   ti cade il [MI]fiore dalla [RE]bocca e poi[MI] Oh no
[LA]   ferma ti [MI]prego la m[RE]ano    [MI]
[LA]   Dove sei [MI]stata cos''hai [RE]fatto mai
[MI]   una d[LA]onna[MI] donna[RE] donna[MI] dimmi
[LA]   cosa vuol [MI]dir sono una [RE]donna ormai
[MI]   Io non co[LA]nosco quel sor[MI]riso sic[RE]uro[MI] che hai
non so chi [LA]sei non so più chi [MI]sei
mi fai pa[RE]ura oram[MI]ai
purtroppo[LA] ma ti ric[MI]ordi le onde g[RE]randi e noi [MI]
[LA]   gli spruzzi e [MI]le tue risa [RE]      [MI]
[LA]   cos''è ri[MI]masto in fondo agli [RE]occhi tuoi  [MI]
[LA]   la fiamma è s[MI]penta o è acc[RE]esa?    [MI]
[LA]   Oh mare [MI]nero Oh mare [RE]nero Oh mare [MI]ne...
[LA]   tu eri [MI]chiaro e traspa[RE]rente come m[MI]e
[LA]   Oh mare [MI]nero Oh mare [RE]nero Oh mare [MI]ne...
[LA]   tu eri [MI]chiaro e traspa[RE]rente come m[MI]e
[LA]   no no no[MI] no no no no [RE]no no        [MI]

[LA]No!........[MI]...       Il [RE]sole quando s[MI]orge
sorge p[LA]iano e [MI]poi la [RE]luce si dif[MI]fonde
tutto in[LA]torno a [MI]noi le [RE]ombre dei fan[MI]tasmi
della [LA]notte sono [MI]alberi o ces[RE]pugli ancora in f[MI]iore
sono gli [LA]occhi di una [MI]donna ancora p[RE]ieni d''am[MI]ore
[LA]Eh [MI]eh…[RE] na[MI]nana  [LA]    [MI]    [RE]    [MI]     [LA]    [MI]    [REadd9]', 'la-canzone-del-sole');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Un’Avventura', 'Lucio Battisti', 'ITA', '[LAb]  [REb]  [LAb] [MIb]
[LAb]  [REb]  [MIb]
Non sa[LAb]rà
Un''avventura
Non può [DOm]essere soltanto una prima[FA7]vera
Questo a[SIbm]more  [SIbm]
Non è una [MIb]stella
Che al mat[REb]tino se ne [MIb]va,
Oh no [REb]no no no no [MIb]no
Non sa[LAb]rà

Un''avventura
Questo a[DOm]more è fatto solo di poe[FA7]sia
Tu sei [SIbm]mia,
Tu sei [MIb]mia
Fino a [REb]quando gli occhi [MIb]miei
Avran [REb]luce per guar[MIb]dare gli occhi [LAb]tuoi

Innamo[LAb]rato
Sempre di [DOm]più
In fondo all''[REb]anima
Per semp[LAb]re tu   [MIb]
Perché non è una pro[LAb]messa
Ma è quel che sa[DOm]rà
Domani e [REb]sempre
Sempre viv[LAb]rà,
Sempre viv[MIb]rà,
Sempre vi[LAb]vrà,
Sempre viv[MIb]rà

No, non sarà
Un''avven[LAb]tura, un''avventura
Non è un [DOm]fuoco che col vento può mo[FA7]rire
Ma viv[SIbm]rà
Quanto il [MIb]mondo
Fino a [REb]quando gli occhi [MIb]miei
Avran [REb]luce per guar[MIb]dare gli occhi [LAb]tuoi
Innamo[LAb]rato
Sempre di [DOm]più
In fondo all''[REb]anima
Per semp[LAb]re tu   [MIb]
Perché non è una pro[LAb]messa
Ma è quel che sa[DOm]rà
Domani e [REb]sempre
Sempre viv[LAb]rà,  [MIb]
Perché io sono innamo[LAb]rato
E sempre di [DOm]più
In fondo all''[REb]anima
Ci sei per semp[LAb]re tu..[MIb].', 'unavventura');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIbm');

