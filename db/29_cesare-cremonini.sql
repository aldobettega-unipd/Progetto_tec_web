-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Buon Viaggio', 'Cesare Cremonini', 'ITA', '[FA]  [FA7+]  [FA]  [FA7+]  [FA7] [SIb] [SIbm] [DO7]
Buon v[FA]iaggio
Che sia un''an[FA7+]data o un ri[FA]torno
Che sia una [FA7+]vita o solo un g[SIb]iorno
Che sia per sempre o un se[DO7]condo
L''in[FA]canto sarà go[FA7+]dersi un po'' la st[FA]rada
Amore [FA7+]mio comunque [SIb]vada
Fai le valigie e chiudi [DO7]le luci di casa

Co[SIb]raggio lasciare tutto indietro e andare
Partire per ricominc[FA]iare
Che non [DO]c''è niente di più [SIb]vero
Di un miraggio
E per quanta strada ancora c''è da [DO]fare
Amerai il fi[FA]nale
[SIb]    Share the love Share the love
Share the love Share the l[FA]ove
[SIb]Share the love Share the love
Share the love Share the love [FA]

Chi ha det[FA]to
Che tutto q[FA7+]uello che cerch[FA]iamo
Non è sul [FA7+]palmo di una [SIb]mano
E che le stelle puoi guar[DO7]darle
Solo da lontano
Ti as[FA]petto
Dove la m[FA7+]ia città scom[FA]pare
E l''ori[FA7+]zzonte è verti[SIb]cale
Ma nelle foto hai gli occhi [DO7]rossi
E vieni male

Co[SIb]raggio lasciare tutto indietro e andare
Partire per ricominc[FA]iare
Che se ci [DO]pensi siamo [SIb]solo di passaggio
E per quanta strada ancora c''è da [DO]fare
Amerai il fi[FA]nale

[SIb]Share the love Share the love
Share the love Share the love [FA]
[SIb]Share the love Share the love
Share the love Share the love

Il [DO]mondo è solo un mare di pa[SIb]role
E come un pesce puoi nuo[FA]tare solamente
Quando le [SIb]onde sono buone
E per q[DO]uanto sia difficile spie[SIb]gare
Non è importante [FA]dove
Conta solamente an[SIb]dare
Comunque vada
Per quanta strada ancora c''è da [DO]fare  [FA]
[SIb]Share the love Share the love
Share the love Share the love [FA]
[SIb]Share the love Share the love

Share the love Share the love
Buon [FA]viaggio
Che sia un''an[FA7+]data o un ri[FA]torno
Che sia una [FA7+]vita o solo un [SIb]giorno
E siamo solo di pas[FA]saggio
Voglio go[FA7+]dermi un po'' la st[FA]rada
Amore [FA7+]mio comunque [SIb]vada
Buon [FA]viaggio

[SIb]Share the love Share the love
Share the love Share the love [FA]
[SIb]Share the love Share the love
Share the love Share the love [FA]', 'buon-viaggio');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SIbm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Nuova Stella di Broadway', 'Cesare Cremonini', 'ITA', '[SIm7]  [SOLadd9]  [RE]  [RE7+]
[SIm7]  [SOLadd9]  [RE]  [REadd9]
Lui era un [SIm7]businessman con un''i[SOL]dea in testa
[RE]Lei ballerina di [REadd9]jazz     [RE7+]
Leggeva [SIm7]William Blake vicino a u[SOL]na finestra
[RE]Lui beveva caf[REadd9]fè
Guardando [SIm7]quelle gambe muoversi pe[SOL]nsò:
"E'' una stella!"
[RE]  Pensava a Fred Ast[REadd9]aire
E chi non [FA#m]ha mai visto nascere una [MIm7]Dea
E chi non [FA#m]ha mai visto nascere una [SOL]Dea
Non lo [SOLm7]sa che cos''è[RE] la fe[SOL#m7]li-----cit[LA4]à    [LA]
[LA]Lui, garofano rosso e pa[SIm]role
Una [RE]vecchia Cabriolet
[LA]Lei, vestita come la[SIm] Rogers
[RE]Fulmini e saette [LA]lassù
Nel c[FA#]ielo blu, il loro [SOL]nome
Ar[RE]gento fra le stell[LA4]e    [LA]
[SOL]New York, New Y[RE]ork
[LA]  È una scommessa d''a[MIm7]more
Tu ch[SOL]iamami e ti vesti[RE]rò
[LA]  Come una stella di B[MIm7]roadway
[SOL]New York, New [RE]York
[LA]  È una scommessa d''a[MIm7]more
Tu c[SOL]hiamami e ti vesti[RE]rò
[LA]  Come una stella di...
[SIm7]  [SOL]  [RE]  [RE7+]
[SIm7]  [SOL]  [RE]  [RE7+]
Lui si svegl[SIm]iò senza lei, nudo [SOL]nella tempesta
[RE]Là fuori Union S[RE7+]quare
Entrava [SIm]luce al neon dal vetro [SOL]di una finestra
[RE]  L''odore del caf[RE7+]fè
Guardando [SIm]quelle gambe muoversi pen[SOL]sò:
"È una stella!"
[RE]  Pensava a Fred Ast[RE7+]aire
E chi non [FA#m7]ha mai visto nascere una [SOL]Dea
Non lo [SOLm7]sa che cos''[RE]è la fel[SOL#m7]i------cit[LA4]à    [LA]

[LA]Lui, garofano rosso e pa[SIm]role
Una [RE]vecchia Cabriolet
[LA]Lei, vestita come la [SIm]Rogers
[RE]Fulmini e saette [LA]lassù
Nel c[FA#]ielo blu, il loro [SOL]nome
Ar[RE]gento fra le stel[LA4]le   [LA]
[SOL]New York, New Y[RE]ork
[LA]  È una scommessa d''a[MIm7]more
Tu ch[SOL]iamami e ti vesti[RE]rò
[LA]  Come una stella di B[MIm7]roadway
[SOL]New York, New [RE]York
[LA]  È una scommessa d''a[MIm7]more
Tu [SOL]chiamami e ti vesti[RE]rò
[LA]  Come una stella di...

[SOL]  [RE]  [LA]  [MIm7]   [SOL]  [RE]  [LA]  [MIm7]
[SOL]  [RE]  [LA]  [MIm7]   [SOL]  [RE]  [LA]  [MIm7]
[SOL]New York, New Y[RE]ork
[LA]  È una scommessa d''a[MIm7]more
Tu ch[SOL]iamami e ti vesti[RE]rò
[LA]  Come una stella di B[MIm7]roadway
[SOL]New York, New [RE]York
[LA]  È una scommessa d''a[MIm7]more
Tu c[SOL]hiamami e ti vesti[RE]rò
[LA]  Come una stella di...', 'la-nuova-stella-di-broadway');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOL#m'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Logico #1', 'Cesare Cremonini', 'ITA', '[LAb] [SOLm] [DOm]  [MIb] [MIb]  [LAb]
[LAb] [SOLm] [DOm]  [MIb] [MIb]  [LAb]
[LAb] [SOLm] [DOm]  [MIb] [MIb]  [LAb]
[LAb] [SOLm] [DOm]  [MIb] [MIb]  [LAb]
[LAb]Logic[SOLm]o sì,[DOm] è logico
Ma è [MIb]tutto quello ch[LAb]e so
Per ogni d[SOLm]omanda com[DOm]poni un verso
[MIb] Non siamo soli in [LAb]questo universo
[LAb]Logic[SOLm]o sì,[DOm] è logico
Per [MIb]tutti, persino[LAb] per te
Ragazza dag[SOLm]li occhi c[DOm]aleidoscopio
[MIb]  Solo la luce [LAb]corre nel vuoto
[SIb]E non succede quasi [DOm]mai a due come [MIb]noi

Di credere che sia possibile
Tro[LAb]vare un complice in questo disordine
T[SIb]racciare un''orbita nell''atmosfera
A[LAb7+]more mio la logica non è sincera
Chis[DOm]sà se a[SIb]mare è una cos[FA]a vera

[LAb] [SOLm] [DOm]  [MIb] [MIb]
[LAb] [SOLm] [DOm]  [MIb] [MIb]
[LAb]Logic[SOLm]o sì, [DOm]è logico
Non [MIb]chiedersi come [LAb]e perché
All you need is [SOLm]love, Mi[DOm]nd Games and I Love Her
[MIb]  È solo musica [LAb]e fibre nervose
E [SIb]non succede quasi [DOm]mai a due come [MIb]noi
Di credere che sia possibile
Tro[LAb]vare un complice in questo disordine
Trac[SIb]ciare un''orbita nell''atmosfera
A[LAb]more mio la logica non è sincera
Sia[MIb]mo molecole oltre le nuvole
Cor[LAb]sie chilometriche, raggi di luce
Di [SIb]bombe atomiche pronte ad esplodere
Sta[LAb]sera la logica non è sincera
Chis[DOm]sà se a[SIb]mare è una cosa[LAb] vera
Chis[DOm]sà se a[SIb]mare è una cosa[FAm7] vera
Non succede quasi [MIb]mai
Non suc[SIb]cede quasi [FAm7]mai
Non succede quasi [MIb]mai  [SIb]     [LAb]
[LAb] [SOLm] [DOm]  [MIb] [MIb]  [LAb]
[LAb] [SOLm] [DOm]  [MIb] [MIb]  [LAb]
[LAb]Logi[SOLm]co sì, [DOm]è logico
[MIb]Logi[MIb]co sì, è[LAb] logico
[LAb]Logi[SOLm]co sì, [DOm]è logico
[MIb]Logi[MIb]co sì, è[LAb] logico
[LAb]Logi[SOLm]co sì, [DOm]è logico
[MIb]Logi[MIb]co sì, è[LAb] logico', 'logico-1');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'FA'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Poetica', 'Cesare Cremonini', 'ITA', '[LAm]  [FA7+]  [DO6]  [MI7]
[LAm]  [FA7+]  [DO6]  [MI7]
[LAm]Anche quando poi saremo s[FA6]tanchi
troveremo il modo [DO]per
navigare nel [MI7]buio
che tanto è [LAm]facile
abb[FA6]andonarsi alle [DO]onde
che [MI7]si infrangono su di [LAm]noi  [FA6]     [DO]    [MI7]
[LAm]Dimmi dove sei
vorrei par[REm]larti
di tutte quelle cose [DO]che
ho mandato già in fu[MI7]mo
per colpa della soli[LAm]tudine
non l''[FA6]ho mai detto a nes[DO]suno
a nes[MI7]suno tranne che a [LA]te
questa [RE7+]sera sei bel[LA]lissima  [RE7+]
se [LA]sai che non[RE7+] è finita abb[FA#m]racciami [RE7+]

E [LAm]anche quando poi saremo s[FA7+]tanchi
troveremo il modo [DO]per
navigare nel [MI7]buio
che tanto è [LAm]facile
abb[FA6]andonarsi alle [DO]onde
che [MI7]si infrangono su di [LAm]noi   [REm]     [DO]    [MI7]

[LAm]  [FA7+]  [DO]  [MI7]
[LAm]Dimmi come stai
perché non [REm]parli
ora tienimi con [DO]te
la tua mano nel [MI7]buio
guarisce la mia soli[LAm]tudine
non l''[FA]ho mai chiesto a nes[DO]suno
a nes[MI7]suno, tranne che a [LA]te

questa [RE7+]sera sei bel[LA]lissima  [RE7+]
se [LA]sai che non[RE7+] è finita abb[FA#m]racciami [RE7+]
anche [LA]se pense[RE7+]rai che non è p[LA]oetica
questa [RE7+]vita ci ha sorriso e lo [LA]sai
non è [RE7+]mai finita abb[FA#m]racciami
Abbracc[RE7+]iami
Ab[LA]bracciami [RE7+]      [LA]    [RE7+]
Troveremo il modo [LA]anche quando poi saremo [RE7+]stanchi
Troveremo il modo [LA]anche quando poi saremo [RE7+]stanchi
Troveremo il modo [LA]anche quando poi saremo [RE7+]stanchi
Troveremo il modo [LA]anche quando poi saremo [RE7+]stanchi
Troveremo il modo [LA]anche quando poi saremo [RE7+]stanchi
Troveremo il modo [LA]anche quando poi saremo [RE7+]stanchi
[LA]  [RE7+]  [LA]  [RE7+]', 'poetica');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm');

