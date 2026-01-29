-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Ci Sono Anch’io', '883', 'ITA', '[LA]  [REadd9]  [LA]  [REadd9]

[LA]  [REadd9]  [LA]  [REadd9]

[LA]Io di ri[REadd9]sposte non ne [LA]ho mai a[REadd9]vute e mai ne a[LA]vrò
Di do[REadd9]mande ne ho [SIm7]quante ne [REadd9]vuoi
e [LA]tu neanche [REadd9]tu mi ferme[LA]rai neanche [REadd9]tu ci riusci[LA]rai
io non [REadd9]sono quel [FA#m7]tipo di [MI]uomo e non lo
sar[LA]ò ma[REadd9]i       [LA]    [REadd9]
Non [LA]so se la [REadd9]rotta è giusta
o [LA]se mi so[REadd9]no perduto ed [LA]è
troppo [REadd9]tardi per [SIm7]tornare in[REadd9]dietro
co[LA]sì è meglio [REadd9]che io vada [LA]via non pen[REadd9]sarci
è colpa [LA]mia
questo [REadd9]mondo non [FA#m7]sa----[MI]rà [REadd9]mio
Non [LA]so se è sol[RE]tanto fanta[LA]sia o se [RE]solo una fo[LA]llia
quella [RE]stella lon[SIm7]tana la[REadd9]ggiù
pe[LA]rò io la [RE]seguo e anche se [LA]so che
non [RE]la raggiunge[LA]rò
potrò [RE]dire ci [FA#m]so----[MI]no an[RE]ch''io
Non [LA]è stato [REadd9]facile per[LA]ché nessun [REadd9]altro a parte [LA]me
ha cre[REadd9]duto pe[SIm7]rò ora [REadd9]so
che [LA]tu vedi [REadd9]quel che vedo [LA]io il tuo [REadd9]mondo
è come il [LA]mio
hai guar[REadd9]dato nell''[FA#m7]uomo che [MI]sono e sa[REadd9]rò
[RE] Ti po[MI]tranno dire [FA#m]che   [RE]  non [MI]può esiste[FA#m]re
niente [RE]che non si compra o si [MI]conta
o si compra per[FA#m]chè
chi è de[RE]serto non vuole
che [MI]qualcosa fiorisca in [FA#m7]te    [MI]   [REadd9]
e [LA]so che non [RE]è una fanta[LA]sia non è [RE]stata una fo[LA]llia
quella [RE]stella la [SIm7]vedi anche [REadd9]tu
per[LA]ciò io la [RE]seguo e adesso [LA]so
che io [RE]la raggiunge[LA]rò
perchè al [RE]mondo ci [FA#m7]so----[MI]no an[REadd9]ch''io
perchè al [LA]mondo ci [FA#m]so---[MI]no an[LA]ch''io
ci [FA#m]so---[MI]no an[LA]ch''io
ci [FA#m]so---[MI]no anch''[REadd9]io', 'ci-sono-anchio');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Come Mai', '883', 'ITA', '[FA]   [DO]   [SIb]   [FA]

[SIb]  [FA]   [DO]    [FA]

Le [FA]notti non fi[REm]niscono, all''[SIb]alba nella [DO]via
le [FA]porto a casa in[REm]sieme a me, ne [SIb]faccio melo[DO]dia
e [SIb]poi mi trovo a [DO]scrivere, chi[REm]lometri di [FA]lettere
spe[SIb]rando di vederti ancora [DO]qui

È i[FA]nutile par[REm]larne sai, non [SIb]capiresti [DO]mai
Se[FA]guirti fino all''[REm]alba e poi, ve[SIb]dere dove [DO]vai
Mi [SIb]sento un po'' bam[DO]bino ma, con [REm]te lo so non [FA]finirà
il [SIb]sogno di sentirsi dentro  un [DO]film

E [SIb]poi all''improv[FA]viso, sei [SIb]arrivata [FA]tu
Non [SIb]so chi l''ha de[FA]ciso, m''hai [DO]preso sempre più
Una [SIb]quotidiana [FA]guerra, con la [SIb]razionali[FA]tà
ma va [SIb]bene purchè [FA]serva, per [SOLm7]fa__rmi us[DO]cire

[FA]Come mai, ma [DO]chi sarai
per [SIb]fare questo a [FA]me
Notti in[SIb]tere ad aspet[FA]tarti
ad [SOLm7]aspettare [DO]te
Dimmi [FA]come mai, ma [DO]chi sarai
per [SIb]farmi stare [FA]quì
qui se[SIb]duto in una s[FA]tanza
pre[DO]gando per un [FA]si

Gli a[FA]mici se sa[REm]pessero, che [SIb]sono proprio [DO]io
Pen[FA]sare che cre[REm]devano, che [SIb]fossi quasi un [DO]dio
Per[SIb]chè non mi fer[DO]mavo mai, nes[REm]suna storia i[FA]nutile
Uc[SIb]cidersi d''amore, ma per [DO]chi?

Lo [SIb]sai all''improv[FA]viso, sei [SIb]arrivata [FA]tu
Non [SIb]so chi l''ha de[FA]ciso, m''hai [DO]preso sempre più
Una [SIb]quotidiana [FA]guerra, con la [SIb]razionali[FA]tà
ma va [SIb]bene purchè [FA]serva, per [SOLm7]fa__rmi us[DO]cire

[FA]Come mai, ma [DO]chi sarai
per [SIb]fare questo a [FA]me
Notti in[SIb]tere ad aspet[FA]tarti
ad [SOLm7]aspettare [DO]te
Dimmi [FA]come mai, ma [DO]chi sarai
per [SIb]farmi stare [FA]quì
qui se[SIb]duto in una s[FA]tanza
pre[DO]gando per un [FA]si
[FA]Come mai, ma [DO]chi sarai
per [SIb]fare questo a [FA]me
Notti in[SIb]tere ad aspet[FA]tarti
ad [SOLm7]aspettare [DO]te
Dimmi [FA]come mai, ma [DO]chi sarai
per [SIb]farmi stare [FA]quì
qui se[SIb]duto in una s[FA]tanza
pre[DO]gando per un [FA]si', 'come-mai');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Gli Anni', '883', 'ITA', '[SOL]

[MIm]  Stessa s[DO]toria, stesso [SOL]posto, stesso [RE]bar
[MIm]  stessa [DO]gente che vien [SOL]dentro, con[RE]suma e poi [MIm]va
non lo [DO]so,  [RE]   che faccio [SOL]qui
esco un [DO]pò,[RE]  e vedo i [MIm]fari delle [RE]auto che [DO]mi
guardano e [MIm]sembrano [RE]chiedermi [DO]chi cer[RE]chiamo [SOL]noi

Gli anni d''oro [RE]del grande Re[LAm]al
Gli anni di Happy [DO]Days e di Ralph [RE]Malph
Gli anni delle im[DO]mense compa[RE]gnie
Gli anni in moto[DO]rino,[RE] sempre in[SOL] due
Gli anni di "Che [RE]belli erano i [LAm]film"
Gli anni dei Roy [DO]Rogers come [RE]jeans
Gli anni di "Qual[DO]siasi cosa [RE]fai"
Gli anni del "Tran[DO]quillo, [RE]siam qui [MIm]no---[RE]----[DO]-i"
"siamo qui [MIm]no---[RE]----[DO]----[RE]-----[SOL]i"

[MIm]  stessa [DO]storia stesso [SOL]posto stesso [RE]bar
[MIm]  una [DO]coppia che co[SOL]nosco c''av[RE]ran la mia [MIm]età
come [DO]va, [RE]  saluta[SOL]no
cosi [DO]io,[RE]  vedo le [MIm]fedi alle [RE]dita dei [DO]due
che porco [MIm]giuda po[RE]trei essere [DO]io qualche [RE]anno [SOL]fa

Gli anni d''oro [RE]del grande Re[LAm]al
Gli anni di Happy [DO]Days e di Ralph [RE]Malph
Gli anni delle im[DO]mense compa[RE]gnie
Gli anni in moto[DO]rino,[RE] sempre in[SOL] due
Gli anni di "Che [RE]belli erano i [LAm]film"
Gli anni dei Roy [DO]Rogers come [RE]jeans
Gli anni di "Qual[DO]siasi cosa [RE]fai"
Gli anni del "Tran[DO]quillo, [RE]siam qui [MIm]no---[RE]----[DO]-i"
"siamo qui [MIm]no---[RE]----[DO]----[RE]-----[SOL]i"

[MIm]  Stessa [DO]storia, stesso [SOL]posto, stesso [RE]bar
[MIm]  stan qua[DO]si chiudendo [SOL]poi me ne an[RE]drò a casa [MIm]mia
solo [DO]lei,[RE]  davanti a [SOL]me
cosa [DO]vuoi, il tempo [MIm]passa per [RE]tutti lo [DO]sai
nessuno in[MIm]dietro lo [RE]riporte[DO]rà nep[RE]pure [SOL]noi

Gli anni d''oro [RE]del grande Re[LAm]al
Gli anni di Happy [DO]Days e di Ralph [RE]Malph
Gli anni delle im[DO]mense compa[RE]gnie
Gli anni in moto[DO]rino,[RE] sempre in[SOL] due
Gli anni di "Che [RE]belli erano i [LAm]film"
Gli anni dei Roy [DO]Rogers come [RE]jeans
Gli anni di "Qual[DO]siasi cosa [RE]fai"
Gli anni del "Tran[DO]quillo, [RE]siam qui [MIm]no---[RE]----[DO]-i"
"siamo qui [MIm]no---[RE]----[DO]----[RE]-----[SOL]i"', 'gli-anni');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Hanno Ucciso L’Uomo Ragno', '883', 'ITA', '[LAm]Solita notte da [FA]lupi nel Bronx
[SOL]nel locale stan suonando un [RE]blues degli Stones
[LAm]loschi individui al ban[FA]cone del bar
[SOL]pieni di whisky e [DO]mar - [SOL]ga - [LAm]ri - [SOL]das

[DO]Tutto ad un tratto la [SOL]porta fa "slam"
[REm]il guercio entra di corsa con u[LAm]na novi[SOL]tà
[DO]dritta sicura si [SOL]mormora che
i can[REm]noni hanno fatto "[LAm]bang"  [SOL]

Hanno uc[LAm]ciso l''Uomo [FA]Ragno
chi sia [DO]stato non si [SOL]sa
forse [LAm]quelli della [FA]mala
forse [DO]la pubblici[SOL]tà
hanno uc[LAm]ciso l''Uomo [FA]Ragno
non si [DO]sa neanche il pe[SOL]rché
avrà [LAm]fatto qualche [FA]sgarro
a qualche in[DO]dustria di caf[SOL]fè

[LAm]Alla centrale del[FA]la polizia
il [SOL]commissario dice che vo[RE]lete che sia
[LAm]quel che è successo non [FA]ci fermerà
il [SOL]crimine non [DO]vin - [SOL]ce - [LAm]rà   [SOL]

[DO]ma nelle strade c''è il [SOL]panico ormai
nes[REm]suno esce di casa nessu[LAm]no vuole [SOL]guai
[DO]ed agli appelli alla [SOL]calma in TV
a[REm]desso chi ci crede [LAm]più   [SOL]

Hanno uc[LAm]ciso l''Uomo [FA]Ragno
chi sia [DO]stato non si [SOL]sa
forse [LAm]quelli della [FA]mala
forse [DO]la pubblici[SOL]tà
hanno uc[LAm]ciso l''Uomo [FA]Ragno
non si [DO]sa neanche il pe[SOL]rché
avrà [LAm]fatto qualche [FA]sgarro
a qualche in[DO]dustria di caf[SOL]fè

[LAm]giù nelle strade si [FA]vedono gang
di [SOL]ragionieri in doppio petto [RE]pieni di stress
[LAm]se non ti vendo mi [FA]venderai tu
per [SOL]100 lire o [DO]po - [SOL]co -  [LAm]più  [SOL]
le [DO]facce di vogue sono [SOL]miti per noi
at[REm]tori troppo belli sono gli [LAm]unici e[SOL]roi
in[DO]vece lui si lui [SOL]era una star
ma [REm]tanto non ritorne[LAm]rà    [SOL]

Hanno uc[LAm]ciso l''Uomo [FA]Ragno
chi sia [DO]stato non si [SOL]sa
forse [LAm]quelli della [FA]mala
forse [DO]la pubblici[SOL]tà
hanno uc[LAm]ciso l''Uomo [FA]Ragno
non si [DO]sa neanche il pe[SOL]rché
avrà [LAm]fatto qualche [FA]sgarro
a qualche in[DO]dustria di caf[SOL]fè', 'hanno-ucciso-luomo-ragno');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Nessun Rimpianto', '883', 'ITA', '[DO]  [FA]  [LAm]  [SOL]  [DO]  [FA]  [LAm]  [SOL]  [FA]

[DO]  Tutti mi diceva[FA]no ve[SOL]drai [FA]
[DO]  è successo  a tutti [FA]però [SOL]poi   [MIm]
[LAm]  ti alzi un gior[SOL]no e non [FA]ci pensi più[SOL]
[DO]  la scorderai[FA]    [DO]  ti scorde[SOL]rai di [LAm]lei
solo che non [SOL]va pro[FA]prio co[DO]sì
[MIm]ore s[LAm]pese a guar[SOL]dare gli [FA]ulti[DO]mi
at[DO7+]timi in [LAm]cui tu eri [SOL]qui con me
[FA]  dove ho sba[DO]gliato e perché
[FA]  ma poi mi [REmadd9]son risposto [SOL]che, non ho

[DO]  Nessun Rim[FA]pianto, [LAm]  Nessun ri[SOL]morso
Solt[DO]anto certe [FA]volte c[LAm]apita c[SOL]he
appena [DO]prima di do[FA]rmire mi [LAm]sembra di sen[SOL]tire
il [DO]tuo ricordo [FA]che mi bussa [LAm]e mi [SOL]fa male un po''[DO]

[DO]  come dicon tutti il [FA]tempo [SOL]è    [FA]
[DO]   l'' unica cura pos[FA]sibi[SOL]le    [MIm]
[LAm]  solo l''orgo[SOL]glio [FA]ci mette un po'' [SOL]
[DO]  un pò di più[FA]    [DO]  per riti[SOL]rarsi [LAm]su
però mi ha aiu[SOL]tato a [FA]chieder[DO]mi
[MIm]se era [LAm]giusto essere [SOL]tratta[FA]to co[DO]sì
[DO7+]da un per[LAm]sona  che di[SOL]ceva di
[FA]  amarmi e [DO]proteggermi
[FA]  prima di ab[REmadd9]bandonarmi [SOL]qui... non ho

[DO]  Nessun Rim[FA]pianto, [LAm]  Nessun ri[SOL]morso
Solt[DO]anto certe [FA]volte c[LAm]apita c[SOL]he
appena [DO]prima di do[FA]rmire mi [LAm]sembra di sen[SOL]tire
il [DO]tuo ricordo [FA]che mi bussa [LAm]ma io [SOL]non aprirò

Strumentale:
[FA7+] [DO9] [FA7+] [SOL7]

[DO]  Nessun Rim[FA]pianto, [LAm]  Nessun ri[SOL]morso
Solt[DO]anto certe [FA]volte c[LAm]apita c[SOL]he
appena [DO]prima di do[FA]rmire mi [LAm]sembra di sen[SOL]tire
il [DO]tuo ricordo [FA]che mi bussa [LAm]e mi [SOL]fa male un po''[DO]

[DO]  [FA]  [LAm]  [SOL]     [DO]  [FA]  [LAm]  [SOL]

[DO]  [FA]  [LAm]  [SOL]     [DO]  [FA]  [LAm]  [SOL]', 'nessun-rimpianto');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Nord Sud Ovest Est', '883', 'ITA', '[SOL]   [DO] [RE]   [DO] [MIm]  [RE]  [DO]   [RE]

[SOL]  Ma perché sei an[DO]data vi[RE]a,
mi son persa [DO]nella not[SOL]te
perché non mi hai [DO]detto [RE]che
non eri mia, [DO]non lo s[SOL]o
sarà il vento o [DO]sarai tu[RE]     [DO]
la [SOL]voce che risponde ai [DO]miei per[RE]ché   [DO]
[SOL]  Dai galoppa [DO]più che pu[RE]oi,
corri vai non [DO]ti ferma[SOL]re
che di strada [DO]ce n''è anc[RE]ora
tanta sai, [DO]sì lo s[SOL]o
vedo una can[DO]tina ch[RE]e    [DO]
mi [SOL]potrà toglier sete e [DO]polve[RE]re     [DO]

[MIm]  Lancio qualche pesos al [RE]cantinero
[SOL]che non [RE]parla [DO]mai
[MIm]  accanto a me c''è un gringo, u[RE]no straniero
mi [SOL]chiede: "ma[RE]n, dove [DO]vai?"  [DO]

[SOL]  Nord Sud [DO]Ovest Es[RE]t,   [DO]
e [MIm]forse quel che [RE]cerco neanche [DO]c''è  [RE]
[SOL]Nord Sud [DO]Ovest Es[RE]t,      [DO]
sta[MIm]rò cercando [RE]lei o forse m[DO]e   [RE]

[SOL]  [DO] [RE]  [DO] [SOL]  [DO] [RE]  [DO]

[SOL]  Tra deserto e [DO]prater[RE]ie,
ma perché ti [DO]sei ferma[SOL]to?
ero stanco ed [DO]affam[RE]ato amica mia, [DO]sì lo s[SOL]o
le capanne e u[DO]na trib[RE]ù,    [DO]
dal [SOL]basso lo stregone [DO]guarda in [RE]su    [DO]
[SOL]  Uomo bianco [DO]vieni qu[RE]i,
stai attento [DO]non ci anda[SOL]re
posso legger[DO]ti il fut[RE]uro se lo vuoi, [DO]dì di n[SOL]o
gli sorrido [DO]dico oka[RE]y,    [DO]
nei [SOL]sassolini osserva i [DO]fatti [RE]miei   [DO]

[MIm]  Viso pallido ti [RE]sta ingannando,
[SOL]non la [RE]trove[DO]rai
[MIm]  sono mesi che sta[RE]i cavalcando
[SOL]dimmi [RE]dove [DO]andrai  [DO]

[SOL]  Nord Sud [DO]Ovest Es[RE]t,   [DO]
e [MIm]forse quel che [RE]cerco neanche [DO]c''è  [RE]
[SOL]Nord Sud [DO]Ovest Es[RE]t,      [DO]
sta[MIm]rò cercando [RE]lei o forse m[DO]e   [RE]

[SOL]  [DO] [RE]  [DO] [SOL]  [DO] [RE]  [DO]
[SOL]  La città è in [DO]festa e tu[RE],
finalmente [DO]sei arriva[SOL]to
hai lo sguardo [DO]scuro n[RE]on mi guardi più, [DO]si lo s[SOL]o
il caballero a[DO]ccanto a t[RE]e     [DO]
per[SOL]ché ti sta abbracciando e [DO]guarda [RE]me    [DO]
[SOL]  Accarezzo un [DO]po'' la co[RE]lt,
Dio ti prego [DO]non lo fa[SOL]re
poi mi giro [DO]guardo in c[RE]ielo
dove andrò, a[DO]dios mi am[SOL]or!
ballan tutti in[DO]torno a me[RE]      [DO]
sot[SOL]to i colori delle [DO]lampa[RE]de   [DO]

[MIm]  Ed il vento mi sta [RE]sussurrando
[SOL]non ti [RE]ferme[DO]rai
[MIm]  c''è qualcuno che ti [RE]sta aspettando
[SOL]tu sai [RE]dove an[DO]drai   [DO]

[SOL]  Nord Sud [DO]Ovest Es[RE]t,   [DO]
e [MIm]forse quel che [RE]cerco neanche [DO]c''è  [RE]
[SOL]Nord Sud [DO]Ovest Es[RE]t,      [DO]
sta[MIm]rò cercando [RE]lei o forse m[DO]e   [DO]
[SOL]  Nord Sud [DO]Ovest Es[RE]t,   [DO]
e [MIm]forse quel che [RE]cerco neanche [DO]c''è  [RE]
[SOL]Nord Sud [DO]Ovest Es[RE]t,      [DO]
sta[MIm]rò cercando [RE]lei o forse m[DO]e...[DO]

[SOL]  [DO] [RE]  [DO] [MIm] [RE] [DO] [DO]', 'nord-sud-ovest-est');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

