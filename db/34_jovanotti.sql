-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('A Te', 'Jovanotti', 'it', '[LA]  [MI]  [FA#m7]  [LA]  [RE]  [LA]  [SIm7]  [MI7]
[LA]   A te che sei l''unica al [MI]mondo l''unica ragione
[FA#m7]   per arrivare fino in fond[LA]o ad ogni mio respiro
[RE]   Quando ti guardo Dopo un [LA]giorno pieno di parole
[SIm7]   Senza che tu mi dica n[MI7]iente Tutto si fa chiaro
[LA]   A te che mi hai trovato All'' [MI]angolo coi pugni chiusi
[FA#m7]   Con le mie spalle contro il [LA]muro Pronto a difendermi
[RE]   Con gli occhi bassi Stavo in [LA]fila Con i disillusi
[SIm7]   Tu mi hai raccolto come un [MI7]gatto E mi hai portato con te
[LA]   A te io canto una can[MI]zone Perché non ho altro
[FA#m]   Niente di meglio da of[LA]frirti Di tutto quello che ho
[RE]   Prendi il mio tempo E la ma[LA]gia Che con un solo salto
[SIm7]   Ci fa volare dentro l''[MI]aria Come bollicine

[RE]   A te che sei Semplicement[LA]e sei
Sostanza dei giorni[SIm7] miei [LA] Sostanza dei giorni[MI] miei

[SIb]   A te che sei il mio grande a[FA]more Ed il mio amore grande
[SOLm]   A te che hai preso la mia [SIb]vita E ne hai fatto molto di più
[MIb]   A te che hai dato senso al t[SIb]empo Senza misurarlo
[DO7]   A te che sei il mio amore [FA]grande Ed il mio grande amore
[SIb]   A te che io Ti ho visto [FA]piangere nella mia mano
[SOLm]   Fragile che potevo uc[SIb]ciderti Stringendoti un po''
[MIb]   E poi ti ho visto Con la [SIb]forza di un aeroplano
[DO7]   Prendere in mano la tua [FA]vita E trascinarla in salvo
[SIb]   A te che mi hai insegnato i [FA]sogni E l''arte dell''avventura
[SOLm]   A te che credi nel co[SIb]raggio E anche nella paura
[MIb]   A te che sei la miglior [SIb]cosa Che mi sia successa
[DO7]   A te che cambi tutti i [FA]giorni E resti sempre la stessa

[MIb]  A te che sei Semplicement[SIb]e sei
Sostanza dei giorni [DOm7]miei  [SIb] Sostanza dei sogn[FA]i miei
A te ch[MIb]e sei Essenzialmente[SIb] sei
Sostanza dei sogni[DOm7] miei [SIb] Sostanza dei giorn[FA]i miei [SOL]

[DO]   A te che non ti piaci [SOL]mai E sei una meraviglia
[LAm7]   Le forze della natu[DO]ra si concentrano in te
[FA]   Che sei una roccia sei una [DO]pianta sei un uragano
[RE7]   Sei l''orizzonte che mi ac[SOL]coglie quando mi allontano
[DO]   A te che sei l''unica a[SOL]mica Che io posso avere
[LAm7]   L''unico amore che vorr[DO]ei Se io non ti avessi con me
[FA]   A te che hai reso la mia [DO]vita Bella da morire
[RE7]   Che riesci a render la fa[SOL]tica Un immenso piacere
[DO]   A te che sei il mio grande a[SOL]more Ed il mio amore grande
[LAm7]   A te che hai preso la mia v[DO]it E ne hai fatto molto di più
[FA]   A te che hai dato senso al [DO]tempo Senza misurarlo
[RE7]   A te che sei il mio amore [SOL]grande Ed il mio grande amore

[FA]   A te che sei Semplicement[DOadd9]e sei
Sostanza dei giorni[REm7] miei  [DO6]  Sostanza dei sogn[SOL]i miei
A te che [FA]sei Semplicemente [DOadd9]sei
Compagna dei giorni [REm7]miei  [DO6] Sostanza dei sogn[SOL]i miei
[FA]  [DO]  [REm] [DO6] [SOL]
[FA]  [DO]  [REm] [DO6] [SOL]
[FA]  [DO]  [REm] [DOadd9] [SOL]', 'a-te');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DOm'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIb'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Chiaro di Luna', 'Jovanotti', 'it', '[RE]  [FA#]  [SOL]  [LA]
Hey, hey, hey, hey, he[RE]y
Proverò a pensarti mentre mi sorr[FA#]idi
La capacità che hai di rasseren[SOL]are
Mi hai insegnato cose che non ho impar[FA#]ato
Per il gusto di poterle reimpar[SIm7]are
Ogni giorno mentre guardo te che v[RE]ivi
E mi meraviglio di come sai s[MI]tare
Vera dentro un tempo tutto artific[SOL]iale
Nuda tra le m[LA]aschere di carnev[RE]ale
Luce dei miei occhi, sangue nelle art[FA#]erie
Selezionatrice delle cose s[SOL]erie
Non c''è niente al mondo che mi decon[FA#]centri
Non c''è cosa bella dove tu non c''[SIm7]entri
Dicono “finiscila con questa s[RE]toria
Di essere romantico fino alla no[MI]ia”
Certo hanno ragione, è gente intellig[SOL]ente
Ma di aver ra[LA]gione non mi frega ni[RE]ente
Voglio avere torto mentre tu mi b[FA#]aci
Respirare l''aria delle tue nar[SOL]ici
Come quella volta che abbiamo sco[FA#]perto
Che davanti a noi c''era uno spazio a[SIm7]perto
Che insieme si può andare lontanissim[RE]o
Guardami negli occhi come fossim[MI]o
Complici di un piano rivoluzio[SOL]nario
Un amore [LA]straordinario

E non e[SIm]siste paesaggio più bello della tua[LA] schiena
Quella st[SIm]rada che porta [LA]fino alla bocca[SOL] tua
Non e[SIm]siste esperienza più mistica e più [LA]terrena
Di bal[SOL]lare abbrac[MI]ciato con [LA]te al chiaro [RE]di luna

[RE] Emozioni forti come il primo gi[FA#]orno
Che fanno sparire le cose che ho in[SOL]torno
Cercherò il tuo sguardo nei posti affol[FA#]lati
La tua libertà oltre i fili spi[SIm7]nati
Non potrai capire mai cosa sca[RE]teni
Quando mi apri la finestra dei tuoi se[MI]ni
Quel comandamento scritto sui cu[SOL]scini
Gli innamorati restan [LA]sempre ragazzini [RE]
Io non lo so dove vanno a finire le ore[FA#]
Quando ci scorrono addosso e se ne vanno via[SOL]
Il tempo lava ferite che non può guarire[FA#]
L''amore è senza rete e senza anestesia[SIm7]
C''è un calendario sul muro della mia officina[RE]
Per ogni mese una foto futura di te[MI]
Che sei ogni giorno più erotica, o mia Regina[SOL]
Non c''è un secondo da [LA]perdere

Impaz[SIm]zisco baciando la pelle della tu[LA]a schiena
Quella [SIm]strada che porta[LA] fino alla bocca[SOL] tua
Non e[SIm]siste esperienza più mistica e più [LA]terrena
Di bal[SOL]lare abbrac[MI]ciato con[LA] te al chiaro [RE]di luna  [FA#]
Abbracciato con [SOL]te    [LA]
Abbracciato con [RE]te... [FA#]
Abbracciato con [SOL]te...
Con [LA]te al chiaro[RE] di Luna  [FA#]
Hey, hey, hey, hey, h[SOL]ey    [FA#]
Hey, hey, hey, hey, h[SIm]ey    [LA]
Hey, hey, hey, hey, h[MI]ey        [SOL]
Hey, [LA]hey, hey, hey, [RE]hey   [FA#]      [MIm]     [FA#m]      [SOL]     [LA]
Abbracciato con [RE]te', 'chiaro-di-luna');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Fango', 'Jovanotti', 'it', '[SI]  [SOL#m7]  [FA#]  [MI]
Io lo [SI]so che non sono solo
anche quando sono solo
[SOL#m7]io lo so che non sono solo
io lo [FA#]so che non sono solo
anche quando sono solo[MI]

sotto un [SI]cielo di stelle e di satelliti
tra i col[SOL#m7]pevoli le vittime e i superstiti
un cane ab[FA#]baia alla luna
un uomo guarda la sua mano
sembra q[MI]uella di suo padre
quando da bambino
lo pren[SI]deva come niente e lo sollevava su
era [SOL#m7]bello il panorama visto dall''alto
si get[FA#]tava sulle cose prima del pensiero
la sua [MI]mano era piccina ma afferrava il mondo intero
ora [SI]la città è un film straniero senza sottotitoli
le [SOL#m7]scale da salire sono scivoli,
s[FA#]civoli, scivoli il ghiaccio sulle cose
la [MI]tele dice che le strade son pericolose
ma l[SI]''unico pericolo che sento veramente
è q[SOL#m7]uello di non riuscire più a sentire niente
il pro[FA#]fumo dei fiori l''odore della città
il suono [MI]dei motorini il sapore della pizza
le [SI]lacrime di una mamma le idee di uno studente
gli in[SOL#m7]croci possibili in una piazza
di [FA#]stare con le antenne alzate verso il cielo

[MI] io lo so che non sono solo
io lo [SI]so che non sono solo
anche quando sono solo
[SOL#m7] io lo so che non sono solo
e [FA#]rido e piango e mi [MI]fondo
con il cielo e con il Fango
io lo [SI]so che non sono solo
anche quando sono solo
[SOL#m7] io lo so che non sono solo
e [FA#]rido e piango e mi [MI]fondo
con il cielo e con il fango

la cit[SI]tà un film straniero senza sottotitoli
una [SOL#m7]pentola che cuoce pezzi di dialoghi
come [FA#]stai quanto costa che ore sono
che succede che si [MI]dice chi ci crede
e allora ci si vede
ci si [SI]sente soli dalla parte del bersaglio
e di[SOL#m7]venti un appestato quando fai uno sbaglio
un car[FA#]tello di sei metri dice tutto è intorno a te
ma ti [MI]guardi intorno e invece non c''è niente
un mondo [SI]vecchio che sta insieme solo grazie a quelli che
hanno an[SOL#m7]cora il coraggio di innamorarsi
e una [FA#]musica che pompa sangue nelle vene
e che fa ve[MI]nire voglia di svegliarsi e di alzarsi
s[SI]mettere di lamentarsi
che l''[SOL#m7]unico pericolo che senti veramente
è q[FA#]uello di non riuscire più a sentire niente
di [MI]non riuscire più a sentire niente
il [SI]battito di un cuore dentro al petto
la pas[SOL#m7]sione che fa crescere un progetto
l''appe[FA#]tito la sete l''evoluzione in atto
l''ener[MI]gia che si scatena in un contatto

io lo [SI]so che non sono solo
anche quando sono solo
[SOL#m7] io lo so che non sono solo
e [FA#]rido e piango e mi [MI]fondo
con il cielo e con il Fango
io lo [SI]so che non sono solo
anche quando sono solo
[SOL#m7] io lo so che non sono solo
e [FA#]rido e piango e mi [MI]fondo
con il cielo e con il fango
[SI]   [SOL#m7]   [FA#]
e mi [MI]fondo con il cielo e con il fango
[SI]   [SOL#m7]   [FA#]
e mi [MI]fondo con il cielo e con il fango
[SI]   [SOL#m7]   [FA#]   [MI]', 'fango');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Gli Immortali', 'Jovanotti', 'it', '[LAm]  [FA]  [DO]  [SOL]
[LAm]  Sotto la curva del c[FA]ielo
[DO]  in un applauso di s[SOL]telle
[LAm]  ho salutato la mia [FA]gioventù
[DO]  per ritornare bam[SOL]bino,
[LAm]  procedendo in a[FA]vanti
[DO]  senza passare dal[SOL]la saggezza
[LAm]  masticando una [FA]gomma
[DO]  al gusto di bicic[SOL]letta
[FA]  che non finisce mai
[SOL]  neanche se te ne vai
[DO]  E lo ridico ancora
[MIm]  per impararlo a memoria
[FA]  in questi giorni impaz[SOL]ziti
[DO]  di polvere di gloria
[FA]  e lo ripeto an[SOL]cora
[MIm]  fino a strapparmi le [LAm]corde vocali
[FA]  ora che siamo qui
[SOL]  Noi siamo gli Immor[DO]tali

[LAm]  [FA]  [DO]  [SOL]
[LAm]  Seduta dentro a un [FA]aereo
[DO]  con il biglietto di un[SOL]''altra
[LAm]  hai salutato la tua [FA]classe di eroi
[DO]  per fare il grande [SOL]salto,
[LAm]  per diventare la [FA]donna che sei
[DO]  attraversando o[SOL]ceani di sguardi
[LAm]  senza passare dal[FA]la tristezza
[DO]  innamorandoti [SOL]dei bugiardi
[FA]  masticando una gomma
[SOL]  al gusto di dopobarba
[FA]  che non finisce mai
[SOL]  tra mezzanotte e l''Alba
[DO]  Te lo ridico ancora
[MIm]  per impararlo a memoria
[FA]  in questi giorni impaz[SOL]ziti
[DO]  di polvere di gloria
[FA]  e lo ripeto an[SOL]cora
[MIm]  fino a strapparmi le [LAm]corde vocali
[FA]  ora che stiamo qui-a[SOL]-a
Noi Siamo Gli Immor[DO]tali

[SIm]  [SOL]  [RE]  [LA]
[SIm]  E hai disegnato a co[SOL]lori
[RE]  il mondo che hai i[LA]mmaginato
[SIm]  te ne vai in giro a fare [SOL]tentativi,
[RE]  finche non avrà [LA]combaciato
[SIm]  e fai il lavoro s[SOL]porco-o-o
[RE]  per non far finta di esse[LA]re pulito
[SIm]  hai qualche super po[SOL]tere
[RE]  da usare contro il ne[LA]mico,
[SOL]  masticando una gomma
[LA]  dal sapore di infinito
[SOL]  che non finisce mai
che non finisce [LA]mai

non so se si è capito
[RE]  E lo ridico ancora
[FA#m]  per impararlo a memoria
[SOL]  in questi giorni impaz[LA]ziti
[RE]  che qui si fa la storia
[SOL]  e lo ripeto an[LA]cora
[FA#m]  fino a strapparmi le [SIm]corde vocali
[SOL]  ora che siamo qui
[LA]  ora che siamo qui
[SOL]  ora che siamo qui
[LA]  noi siamo gli immor[RE]tali [FA#m]      [SOL]    [SIb]    [DO]
noi siamo gli immor[RE]tali [FA#m]      [SOL]
[SIb] ora che s[DO]iamo q[RE]ui  [FA#m]      [SOL]
[SIb] ora che s[DO]iamo q[RE]ui  [FA#m]      [SOL]
[SIb] ora che s[DO]iamo q[RE]ui', 'gli-immortali');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('L’Estate Addosso', 'Jovanotti', 'it', '[MI]  [DO#m] [MI]   [SI] [DO#m]   [SI] [DO#m]
[SI] [LA]   [DO#m] [LA]   [DO#m] [MI]   [DO#m] [MI]   [DO#m]
[MI] L''estate addosso
[DO#m]  un [MI]anno è già passato  [SI]
la s[DO#m]piaggia si è ristretta anco[SI]ra [DO#m]un metro [SI]
[LA]  le mareggiate
[DO#m]  le [LA]code di balena [DO#m]
[MI]  il cielo senza luna

l''estate addosso
[DO#m]  il [MI]gesso a un braccio rotto [SI]
la [DO#m]voglia di tuffarsi [SI]
guar[DO#m]dando entrare in acqua tu[SI]tti gli [LA]altri
ma lei mi ha visto [DO#m]
[LA]  che sono qui da [MI]solo

e forse parlerà con me
canzoni estive [DO#m]
mi[MI]nacce radioattive [SI]
dis[DO#m]tanti come un viaggi[SI]o in [DO#m]moto in due [SI]
[LA]  fino ad un locale ap[DO#m]erto [LA]fino all''alba [DO#m]
ri[MI]cordo di un futuro già vissuto da qualcuno
[SI]  prima che il vento si porti via [LA]tutto
e che settembre ci porti una strana [SI]felicità

pensando a cieli infuocati
ai brevi a[LA]mori infiniti
re[DO#m]spira questa [SI]liber[MI]tà
ah ah ah [DO#m]ah
l''estate e la liber[LA]tà    [MI]

[MI]  l''estate addosso [DO#m]
bel[MI]lissima e crudele [SI]
le s[DO#m]telle se le guardi [SI]
non [DO#m]vogliono cadere  [SI]
l''a[LA]nello è sulla spiaggia [DO#m]
tra un [LA]mare di lattine [DO#m]
la p[MI]rotezione zero
spalmata sopra il cuore

l''estate addosso
[DO#m]  come [MI]un vestito rosso [SI]
la [DO#m]musica che soffia via [SI]da un [DO#m]bar   [SI]
cuc[LA]curucu paloma
[DO#m]  l''am[LA]ore di una sera [DO#m]
gli a[MI]mici di una vita
la maglia dei mondiali scolo[DO#m7]rita

[SI]  prima che il vento si porti via [LA]tutto
e che settembre ci porti una strana [SI]felicità
pensando a cieli infuocati
ai brevi a[LA]mori infiniti
re[DO#m]spira questa [SI]liber[MI]tà
ah ah ah [DO#m]ah
l''estate e la liber[LA]tà    [MI]

[MI] l''estate addosso
un anno è già passato
vie[DO#m]tato non innamorarsi ancora
saluti dallo spazio
le fragole maturano anche [MI]qua   [DO#m]      [LA]     [MI]
respira questa liber[MI]tà  [DO#m]
l''estate e la liber[LA]tà  [MI]
l''estate la liber[MI]tà  [DO#m]      [LA]    [MI]', 'lestate-addosso');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Mezzogiorno', 'Jovanotti', 'it', '[LA]  [RE]  [LA]  [RE]
Ca[LA]selli d''autostrada tutto il tempo si consuma
ma [RE]Venere riappare sempre fresca dalla schiuma
la [LA]foto della scuola non mi assomiglia più
ma i [RE]miei difetti sono tutti intatti
e [LA]ogni cicatrice è un''autografo di Dio
nes[RE]suno potrà viver la mia vita al posto mio
per [LA]quanto mi identifichi nel battito di un altro
sa[RE]rà sempre attraverso questo cuore
e g[LA]iorno dopo giorno passeranno le stagioni
ma [RE]resterà qualcosa in questa strada
non mi è con[LA]cesso più di regalarti i miei casini
mi [RE]butto dentro vada come vada

S[MI]iamo come il sole a mezzogiorno... ba[LA]by
[MI]senza più nessuna ombra intorno... ba[LA]by...aah
[MI]Siamo come il sole a mezzogiorno... ba[LA]by
[MI]senza più nessuna ombra,
più ness[LA]una ombra int[DO]orno... baby! [LA]    [RE7+]

Un [LA]bacio e poi un bacio e poi un bacio
e poi altri cento
teo[RE7+]ricamente il mondo è più leggero di una piuma
Nes[LA]sun filo spinato potrà rallentare il vento
non [RE7+]tutto quel che brucia si consuma
E [LA]sogno dopo sogno sono sveglio finalmente
per [RE7+]fare i conti con le tue promesse
Un giorno [LA]passa in fretta e non c''è tempo di pensare
muo[RE7+]viamoci che poi diventa sera...

S[MI]iamo come il sole a mezzogiorno... ba[LA]by
[MI]senza più nessuna ombra intorno... ba[LA]by...aah
[MI]Siamo come il sole a mezzogiorno... ba[LA]by
[MI]senza più nessuna ombra,
più ness[LA]una ombra intorno... baby!

[FA#]Gente che viene, gente che va
[SOL]gente che torna, gente che sta
[MI]Il sole se la ride in mezzo al cielo
[SOL#m]a guardare noi che ci facciamo il culo
È un g[FA#]ioco

Mezzogiorno di fuoco
È un [SOL]lampo sulle armature
In [MI]guardia niente da capire
mi s[SOL#m]pecchio in una goccia di sudore

[MI]    [LA]    [MI]    [LA]
Siamo come il sole a mezzogiorno... baby
S[MI]iamo come il sole a mezzogiorno,
[LA]senza più nessuna ombra intorno...
S[MI]iamo come il sole a mezzogiorno,
[LA]senza più nessuna ombra intorno...
S[MI]iamo come il sole a mezzogiorno ba[LA]by
[MI]Siamo come il sole a mezzogiorno ba[LA]by.. aahaha
[MI]    [LA]    [MI]    [LA]', 'mezzogiorno');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA#'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOL#m');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Mi Fido Di Te', 'Jovanotti', 'it', '[LAm]  [FA]  [DO]  [SOL]  [LAm]  [FA]  [DO]  [SOL]
[LAm]Case di pane, riunioni di rane
[FA]vecchie che ballano nelle cadillac
[DO]muscoli d''oro, corone d''alloro
can[SOL]zoni d''amore per bimbi col frack
[LAm]musica seria, luce che varia
[FA]pioggia che cade, vita che scorre
[DO]cani randagi, cammelli e re magi
[SOL]forse fa male eppure mi v[DO]a

di stare colleg[FA]ato
di vivere di un f[DO]iato
di stendermi so[SOL]pra al burrone
di guardare [LAm]giù
la vertigine non [FA]è
paura di ca[DO]dere
ma voglia di vo[SOL]lare

mi [DO]fido di te
mi [FA7+]fido di te
mi [DO]fido di te  [SOL]
mi [LAm]fido di te
io mi [FA7+]fido di te
ehi mi [DO]fido di te
cosa sei disposto a [SOL]perdere

[LAm]Lampi di luce, al collo una croce
[FA]la dea dell''amore si muove nei jeans
[DO]culi e catene, assassini per bene
[SOL]la radio si accende su un pezzo funky
[LAm]teste fasciate, ferite curate
[FA]l''affitto del sole si paga in anticipo prego
[DO]arcobaleno, più per meno meno
[SOL]forse fa male eppure mi [DO]va

di stare colle[FA]gato
di vivere di un f[DO]iato
di stendermi [SOL]sopra al burrone
di guardare g[LAm]iù
la vertigine non [FA]è
paura di ca[DO]dere
ma voglia di vo[SOL]lare

mi [DO]fido di te
mi [FA7+]fido di te
mi [DO]fido di te
cosa sei disposto a [SOL]perdere
mi [LAm]fido di te
io mi [FA7+]fido di te
ehi mi [DO]fido di te
cosa sei disposto a [SOL]perdere

[LAm]rabbia stupore la parte l''attore
dot[FA]tore che sintomi ha la felicità
[DO]evoluzione il cielo in prigione
[SOL]questa non è un''esercitazione
[LAm]forza e coraggio la sete il miraggio
la [FA]luna nell''altra metà
[DO]lupi in agguato il peggio è passato
[SOL]forse fa male eppure mi [DO]va

di stare colle[FA]gato
di vivere di un f[DO]iato
di stendermi [SOL]sopra al burrone
di guardare g[LAm]iù
la vertigine non [FA]è
paura di ca[DO]dere
ma voglia di vo[SOL]lare

mi [DO]fido di te
mi [FA7+]fido di te
mi [DO]fido di te
cosa sei disposto a [SOL]perdere
mi [LAm]fido di te
io mi [FA7+]fido di te
ehi mi [DO]fido di te
cosa sei disposto a [SOL]perdere
[LAm]  [FA]  [DO]  [SOL]     [LAm]  [FA]  [DO]  [SOL]', 'mi-fido-di-te');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'SOL');


