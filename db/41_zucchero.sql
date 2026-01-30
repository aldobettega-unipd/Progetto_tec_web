-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati

-- ha parole inglesi
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Baila Morena', 'Zucchero', 'it', '[SOLm7]   [DO7] [SOLm7]   [DO7]
[SOLm7]   [DO7] [SOLm7]   [DO7]
[SOLm7]  Adesso credo nei miracol[DO7]i
[SOLm7] in questa notte di tequila boom [DO7]boom
[SOLm7]  Sei cosa sexy cosa  sexy thi[DO7]ng
[SOLm7]ormai ti ho messo gli occhi addosso e lo [DO7]sai
[SOLm7]  [DO]   [SOLm7]  [DO]

[SOLm7]  Che devi avere un caos dentro di [DO7]te
[SOLm7]  per far fiorire una stella che [DO7]balla
[SOLm7]  Inferno e paradiso dentro di te[DO7]
[SOLm7] la luna è un sole guarda come brilla
[DOm7]Baby  [FA]  the night is on f[SOLm]ire
[SIb]  siamo [DO]fiamme nel cielo
[RE7]Lampi in mezzo al buio... what you say

[SOLm]Baila..[MIb]. baila more[SIb]na...
[FA]  sotto questa luna [SOLm]piena
[MIb]  Under the [SIb]moonlight..
[FA]  under the [SOLm]moonlight[DO]    [SOLm7]       [DO]

[SOLm7]Vai chica vai cocca che mi [DO7]sa cocca
[SOLm7]  che questa sera qualche [DO7]cosa ti tocca
[SOLm7] Ho un cuore d''oro sai il [DO7]cuore di un santo
[SOLm7] per così poco me la [DO7]merito tanto
[DOm7]Baby  [FA]  the night is on f[SOLm7]ire
[SIb]  siamo [DO]fiamme nel cielo
[RE7]Scandalo nel buio... what you say

[SOLm]Baila..[MIb]. baila more[SIb]na...
[FA]  sotto questa luna [SOLm]piena
[MIb]  Under the [SIb]moonlight [FA]
[SOLm]Baila..[MIb]. under the [SIb]moonlight...
[FA]  sotto questa luna [SOLm]piena
[MIb]  baila More[SIb]na....
[FA]  yeah yeah [SOLm7]yeah!  [DO7]     [SOLm7]       [DO7]
[SOLm7]  [DO7]  [SOLm7]  [DO7]

[SOLm]  You got me hurtin so bad, so bad
I got to have it, so bad
[RE7]  what you say... what you say

[SOLm]Baila..[MIb]. baila More[SIb]na...
[FA]  sotto questa luna [SOLm]piena
[MIb]  Under the m[SIb]oonlight [FA]
E [SOLm]daila..[MIb]. under the [SIb]moonlight..
[FA]  sotto questa luna [SOLm]piena
[MIb]  daila more[SIb]na....
[FA]  sotto questa luna [SOLm7]piena
[DO]  sotto questa luna [SOLm7]piena
[DO]  sotto questa luna [SOLm7]piena
[DO]  Under the [SOLm7]moonlight
[SIb]  [DO]   [RE7]', 'baila-morena');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DOm'),
(@last_song_id, 'FA'),
(@last_song_id, 'MIb'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Come il Sole all''Improvviso', 'Zucchero', 'it', 'Nel mond[LA]o io cam[RE]minerò[LA]
[RE]tanto che [LA]poi i [MI7]piedi mi faranno [LA]male  [MI]
io ca[MI]mminer[MI]ò    [MI7]
un''altra [LA]volta  [SIm7]
[MI7]e a tutti [LA]io do[RE]mander[LA]ò
[RE]finché ris[LA]poste [MI7]non ce ne saranno [LA]più  [MI]
io do[MI7]mander[MI]ò   [MI7]
un''altra [LA]volta
Amerò in [SIm7]modo [RE]che il mio [LA]cuore
mi farà [SIm7]tanto [RE]male [FA#m7]che
male che come il [SIm7]sole all''[RE]improv[LA]viso
scoppie[SIm7]rà scoppie[LA]rà   [MI]

Nel mon[LA]do io la[RE]vorerò[LA]
[RE]tanto che [LA]poi le [MI7]mani mi faranno [LA]male  [MI]
Io la[MI]vorerò[MI] un''altra [LA]volta
Amerò in [SIm7]modo [RE]che il mio [LA]cuore
mi farà [SIm7]tanto [RE]male [FA#m7]che
tanto che [SIm7]come il sole all''[RE]improv[LA]viso
scoppie[SIm7]rà, scoppie[LA]rà   [MI]

[FA7+]  [REm7]  [LAadd9]  [FA#m7]
[FA7+]  [REm7]  [MIm7]
[FA7+]  [REm7]  [LAadd9]  [FA#m7]
[FA7+]  [REm7]  [MI7]
Nel mondo [LA]tutti io [RE]guarder[LA]ò
[MI7]tanto che [LA]poi gli [MI7]occhi mi faranno [LA]male  [MI]
ancora g[MI]uarder[MI7]ò un''altra [LA]volta
Amerò in [SIm7]modo [RE]che il mio [LA]cuore
mi farà [SIm7]tanto [RE]male [FA#m7]che
tanto che come il s[SIm7]ole all''[RE]improv[LA]viso
scoppie[SIm7]rà, scoppie[LA]rà   [MI]

Nel mon[LA]do io non [RE]amerò [LA]
[RE]tanto che [LA]poi il [MI7]cuore non mi farà [LA]male', 'come-il-sole-allimprovviso');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIm');

-- ha parole inglesi
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Diavolo In Me', 'Zucchero', 'it', 'I''ve got a devil in [MI7]me  [LA7]     [MI7]    [LA7]
[MI7] [LA7]  [MI7] [LA7]
[MI7]Gloria nell''[LA7]alto dei[MI7] cieli [LA7]
[MI7]  ma non c''è [LA7]pace quag[MI7]giù    [LA7]
[MI7]non ho bi[LA7]sogno di [MI7]veli   [LA7]
[MI7]  sei già un [LA7]angelo [MI7]tu

che accendi un [LA7]Diavolo in [MI7]me    [LA7]
[MI7]  accendi un [LA7]Diavolo in [MI7]me    [LA7]
[MI7]  perchè c''è un [LA7]Diavolo in [MI7]me    [LA7]baby
[MI7]  forse c''è un [LA7]Diavolo in [MI7]me!   [LA7]

[MI7]Le strade [LA7]delle si[MI7]gnore [LA7]
[MI7]  sono infi[LA7]nite lo [MI7]sai   [LA7]
[MI7]anch''io ti [LA7]sono nel [MI7]cuore [LA7]
[MI7]  e allora [LA7]cosa mi [MI7]fai

accendi un [LA7]Diavolo in [MI7]me    [LA7]
[MI7]  accendi un [LA7]Diavolo in [MI7]me    [LA7]
[MI7]  perchè c''è un [LA7]Diavolo in [MI7]me    [LA7]baby
[MI7]  forse c''è un [LA7]Diavolo in [MI7]me!   [LA7]

[MI7]T-R, saluta i tuoi   [LA7]O-U, e bacia i miei
[MI7]                [LA7]
[MI7]T-R, spengo cicche   [LA7]O-U, tu accendi me
[MI7]                   [LA7]

[MI7]Dai che non [LA7]siamo dei [MI7]santi [LA7]
[MI7]  le tenta[LA7]zioni del [MI7]suolo [LA7]
[MI7]sono [LA7]cose pic[MI7]canti [LA7]
[MI7]  belle da [LA7]prendere al [MI7]volo  [LA7]

accendi un[LA7] Diavolo in[MI7] me   [LA7]
[MI7]  accendi un [LA7]Diavolo in [MI7]me    [LA7]
[MI7]  perchè c''è un [LA7]Diavolo in [MI7]me    [LA7]baby
[MI7]  forse c''è un [LA7]Diavolo in [MI7]me!   [LA7]
[MI]   [RE]
[MI]   [RE]

[MI7]T-R      [LA7]O-U
[MI7]   [LA7]
[MI7]T-R      [LA7]O-U
[MI7]   [LA7]

[MI7]Gloria nell''[LA7]alto dei[MI7] cieli [LA7]
[MI7]  ma non c''è [LA7]pace quag[MI7]giù    [LA7]
[MI7]è una ques[LA7]tione di [MI7]peli   [LA7]
[MI7]  sei già un [LA7]angelo [MI7]tu

che accendi un [LA7]Diavolo in [MI7]me    [LA7]
[MI7]  accendi un [LA7]Diavolo in [MI7]me    [LA7]
[MI7]  perchè c''è un [LA7]Diavolo in [MI7]me    [LA7]baby
[MI7]  forse c''è un [LA7]Diavolo in [MI7]me!   [LA7]

[MI]   [RE]
[MI]   [RE]', 'diavolo-in-me');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Guantanamera', 'Zucchero', 'it', '[SOL] [DO]  [RE7]   [SOL] [DO]  [RE7]
[SOL] [DO]  [RE7]  [SOL] [DO]  [RE7]
Sono un ra[SOL]gazzo[DO] sincero [RE7]
da dove [SOL]cresce [DO]la pa[RE7]lma
Sono un ra[SOL]gazz[DO]o sincero [RE7]
da dove c[SOL]resc[DO]e la [RE7]palma
E prima d[SOL]i morire i[DO]o quiero[RE7]
un verso [SOL]puro dall[DO]''alm[RE7]a

G[SOL]uantanamer[RE7]a
Guajira [SOL]guantanamer[RE7]a
[SOL]Guantana[DO]mer[RE7]a
Guajira [SOL]guantana[DO]mera[RE7]

In giugno [SOL]come in[DO] gennaio[RE7]
Coltivo un[SOL]a ros[DO]a bian[RE7]ca
In giugno [SOL]come in[DO] gennai[RE7]o
Coltivo u[SOL]na r[DO]osa b[RE7]ianca
Perché l''a[SOL]mico [DO]sincer[RE7]o
mi da la [SOL]sua ma[DO]no franc[RE7]a
G[SOL]uantanamer[RE7]a
Guajira [SOL]guantanamer[RE7]a
[SOL]Guantana[DO]mer[RE7]a
Guajira [SOL]guantana[DO]mera[RE7]

Un verso è [SOL]di un ver[DO]de chiar[RE7]o
Uno di un [SOL]cremis[DO]i acc[RE7]eso
Un verso è [SOL]di un verd[DO]e chiar[RE7]o
Uno di un [SOL]crem[DO]isi ac[RE7]ceso
è come un [SOL]cervo f[DO]erit[RE7]o
Che cerca [SOL]pace nell[DO]''alm[RE7]a
G[SOL]uantanamer[RE7]a
Guajira [SOL]guantanamer[RE7]a
[SOL]Guantana[DO]mer[RE7]a
Guajira [SOL]guantana[DO]mera[RE7]
A giugno [SOL]come a [DO]gennai[RE7]o
Coltivo u[SOL]na ros[DO]a bian[RE7]ca
A giugno [SOL]come a [DO]genna[RE7]io
Coltivo u[SOL]na ros[DO]a bianc[RE7]a
Per l''a[SOL]mico s[DO]ince[RE7]ro
Che mi dia [SOL]la sua ma[DO]no fra[RE7]nca
G[SOL]uantanamer[RE7]a
Guajira [SOL]guantanamer[RE7]a
[SOL]Guantana[DO]mer[RE7]a
Guajira [SOL]guantana[DO]mera[RE7]
[SOL] [DO]  [RE7]   [SOL] [DO]  [RE7]
[SOL] [DO]  [RE7]  [SOL] [DO]  [RE7]
[SOL] [DO]  [RE7]   [SOL] [DO]  [RE7]
[SOL] [DO]  [RE7]  [SOL] [DO]  [RE7]
Per te che [SOL]mi strap[DO]pi il cuo[RE7]re
E la mia [SOL]vita f[DO]erit[RE7]a
Per te che m[SOL]i strap[DO]pi il cuo[RE7]re
E la mia [SOL]vita[DO] fe[RE7]rita
Coltivo u[SOL]na ro[DO]sa bia[RE7]nca
e non il [SOL]cardo e[DO] l''ortic[RE7]a
G[SOL]uantanamer[RE7]a
Guajira [SOL]guantanamer[RE7]a
[SOL]Guantana[DO]mer[RE7]a
Guajira [SOL]guantana[DO]mera[RE7]
G[SOL]uantanamer[RE7]a
Guajira [SOL]guantanamer[RE7]a
[SOL]Guantana[DO]mer[RE7]a
Guajira [SOL]guantana[DO]mera[RE7]

Sono un ra[SOL]gazzo [DO]sincer[RE7]o
da dove c[SOL]resce [DO]la pal[RE7]ma
Sono un ra[SOL]gazzo s[DO]incero[RE7]

G[SOL]uantanamer[RE7]a
Guajira [SOL]guantanamer[RE7]a
[SOL]Guantana[DO]mer[RE7]a
Guajira [SOL]guantana[DO]mera[RE7]
G[SOL]uantanamer[RE7]a
Guajira [SOL]guantanamer[RE7]a
[SOL]Guantana[DO]mer[RE7]a
Guajira [SOL]guantana[DO]mera[RE7]', 'guantanamera');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Non Mi Avrai', 'Zucchero', 'it', '[REbadd9]
[FAm] Dimmi chi è che come me[MIb] combatterà con lealtà
[REb] io fuggirò e correrò
da un''altra notte me ne andrò
[FAm] La forza che è dentro di me
[MIb] È fuoco e terra e inquietudine
[SIbm7] Combatterò non perderò
l''or[REb]goglio di un guerriero che non muore mai![DOm]

[FAm]Oh Non giudicar tu non devi insinuare,
[REb]Con me non giocare
[LAb]No che non mi arrendo e non mi arrenderò mai no[DOm],
Tu lo [FAm]sai che un fiore può fiorire dal sale
[REb] Come un canto che sale
[LAb]Sono libero e nessuno mi sconfiggerà no[MIb],
[REb] Tu non mi a[DOm]vrai c[FAm]osì   [MIb]         [SIb7]      [REb]
[FAm]   [MIb]  [SIb7]  [REb]

[FAm] Dove sono non lo so
[MIb] Perché va tutto storto non so
[REb] Non è il mio posto questo qui
Là fuori il mondo mi aspetta sì
[FAm] Combatterò e vincerò
[MIb] E tutta l''anima ci metterò
[SIbm7] Nessuno mai mi fermerà
[REb] È l''onda piena è l''onda che va
[DOm]Oh oh oh oh oh ...Come on!

[FAm]Oh Non giudicar tu non devi insinuare,
[REb]Con me non giocare
[LAb]No che non mi arrendo e non mi arrenderò mai no[DOm],
Tu lo [FAm]sai che un fiore può fiorire dal sale
[REb] Come un canto che sale
[LAb]Sono libero e nessuno mi sconfiggerà no[MIb],
[REb] Tu non mi a[DOm]vrai c[FAm]osì...[MIb]         [SIb7]      [REb]
[FAm]  [MIb]  [SIb7]  [REb]

I''m fr[FAm]ee...[MIb]         [SIb7]      [REb]', 'non-mi-avrai');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SIbm');

-- ha parole inglesi
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Occhi', 'Zucchero', 'it', '[FA]  [SIb]  [FA]  [SIb]
[FA]Poi, ho visto gli occhi [SIb]tuoi
[FA]Rotolando verso cas[SIb]a
Chi[FA]amare i miei
Che [SOLm]bella sei
Che [SIb]belle fai

Le belle sere
[FA]Sai, ho visto gli occhi [SIb]tuoi
Quando s[LAm]cende
La bel[DO7]lezza
In fondo [FA4]al cuo[FA]re  [LAm]

Come vor[DO]rei… [FA]
Come sei [SIb]bella
Flying a[DO]way  [FA]
Tu scendi da una s[SIb]tella
Flying a[DO]way  [FA]
Così talmente [SIb]bella
Flying a[DO]way… [FA]     [SIb]     [DO]

[FA]Poi, ho visto gli occhi s[SIb]uoi
[FA]Come grano in mano al vent[SIb]o
[FA]Son ciliegie [SOLm]del mio pianto
[SIb]Così tanto io ti sento
[FA]Sai, ho visto te con [LAm]lui
Quando s[LAm]cende
La tris[DO7]tezza
In fondo al[FA4] cuor[FA]e   [LAm]

Come vor[DO]rei… [FA]
Come sei [SIb]bella
Flying a[DO]way  [FA]
Tu scendi da una s[SIb]tella
Flying a[DO]way  [FA]
Così talmente [SIb]bella
Flying a[DO]way… [FA]

[LAb]Dov''è che il [MIb]vento ti [SIb]porta [FA]via
[LAb]Dov''è che il [MIb]cielo tra[SIb]monta [FA]
Quando [LAm]scende
La tris[DO7]tezza
E invad[SIb]e gli occ[FA]hi

Come vor[DO]rei… [FA]
Come sei [SIb]bella
Flying a[DO]way  [FA]
Tu scendi da una s[SIb]tella
Flying a[DO]way  [FA]
Così talmente [SIb]bella
Flying a[DO]way… [FA]     [SIb]     [DO]
Così talmente [SIb]bella
Flying a[DO]way…   [FA]
E te ne [SIb]vai
Te ne [FA]vai
Te ne [SIb]vai… v[FA]ia… v[SIb]ia… v[FA]ia…', 'occhi');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAb'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOLm');


-- ha parole inglesi
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Senza una Donna', 'Zucchero', 'it', '[SIm]  I change the world
I change the world
I change the world
I wanna change the world
[SIm]  Non è co[SIm]sì
Che passo i [MI]giorni  [RE]baby
[LA]  Come stai.[LA6]..     [LA]
[SIm]  Sei stata [SIm]lì
E adesso [MI]torni   [RE]lady
[LA]  Hey,[LA6] con chi s[LA]tai... [LA6]
[SIm]  Io sto qui[LA6] e guardo il mare
[SOL7+]  Sto con me[LA6], mi faccio anche da mangiare
[SIm] Si è così[LA6], ridi pure [SOL7+]ma
Non ho più paur[LA6]e di restare...
Senza una [RE]donna [LA]
Come [SIm]siamo lon[LA]tani
Senza una [RE]donna [LA]
Sto [SOL]bene anche do[LA]mani
Senza una [RE]donna [LA]
Che m''ha [SIm]fatto mo[LA]rir
Senza una [RE]donna [LA]
[SOL]  È meglio co[LA]sì  [FA#7]

[SIm] Non è co[SIm]sì
Che puoi com[MI]prarmi b[RE]aby
[LA]  Tu l[LA6]o sa[LA]i...  [LA6]
[SIm]  È un pó più [SIm]giù
Che devi a[MI]ndare   [RE]lady (al cuore?)
[LA]  Yes,[LA6] se ce l[LA]''hai   [LA6]
[SIm] Io ce l''h[LA6]o vuoi da bere
[SOL7+]  Guardami[LA6], sono un fiore
[SIm]  Bé non proprio così [LA6]
Ridi pure [SOL7+]ma
Non ho più paur[LA6]e di restare...
Senza una [RE]donna [LA]
Come [SIm]siamo lon[LA]tani
Senza una [RE]donna [LA]
Sto [SOL]bene anche do[LA]mani
Senza una [RE]donna [LA]
Che m''ha [SIm]fatto mo[LA]rir  [SOL]     [RE]    [LA]    [FA#7]
[SIm]  [MI]  [RE] [LA] [LA6] [LA] [LA6]
[SIm]  [MI]  [RE] [LA] [LA6] [LA] [LA6]

[SIm]  Io sto qui[LA6] e guardo il mare
[SOL7+]  Ma perché[LA6] continuo a parlare
[SIm]  Non lo so[LA6] ridi pure [SOL7+]ma
Non ho più paure ([LA6]forse)
Di restare...
Senza una [RE]donna [LA]
Come [SIm]siamo lon[LA]tani
Senza una [RE]donna [LA]
Sto [SOL]bene anche do[LA]mani
Senza una [RE]donna [LA]
Che m''ha [SIm]fatto mo[LA]rir
Senza una [SOL]donna  [RE]
Vieni [LA]qui, come on here
           [RE]     [LA]
Ora [SIm]siamo vi[LA]cini
           [RE]     [LA]
Sto [SOL]bene da do[LA]mani
           [RE]     [LA]
Che m''ha [SIm]fatto mo[LA]rir  [SOL]     [RE]        [RE]', 'senza-una-donna');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA#'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

-- ha parole inglesi
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Vedo Nero', 'Zucchero', 'it', '[DO4] [DO] [DOadd9] [DO]
[DO4]  [DO]  [DOadd9] [DO]
[DO4]  [DO]  [DOadd9]  [DO]
[DO]   [SOL]
[DO] [DO7]   [DO]    [DO] [DO7]   [DO]
[DO]  Vedo [DO7]nero
[DO]  coi miei [DO7]occhi
[DO]  Vedo [DO7]nero
e non c''è [DO]pace per me[DO7]
[DO]  Perdo il [DO7]pelo
[DO]  Shock the [DO7]monkey
[DO]  Vedo [DO7]nero
e non ca[DO]pisco cos[DO7]''è

[FA]  C''è un odore di [REm]femmina quag[DO]giù  [LAm]    [SOL]
[FA]  e un profumo di [LAm]sandalo e bam[DO]bù  [LAm]    [SOL]
[DO]  Vedo nero
[SIbadd9]  coi miei occhi
[DO]  come disse la marchesa
cammi[SIbadd9]nando sugli specchi:
[DO]  me la vedo nera
[SIbadd9]  ma nera nera!
[DO]  Ma non mi arrendo
[SIbadd9]  alzabandiera!
[LAm]  Vedo nero
[SOL]  sai perché?
[DO]  Te! Voglio [SIbadd9]te!      [FA]
Voglio [DO]te!
[DO]  Vedo [DO7]nero
[DO]  tra i tuoi f[DO7]ianchi
[DO]  danza il c[DO7]ielo e non ho [DO]pace per [DO7]te
[DO]  Oro [DO7]nero
[DO]  shock the [DO7]monkey
[DO]  Vedo [DO7]nero
e non ca[DO]pisco cos[DO7]''è
[FA]  C''è nell''aria una [REm]musica del [DO]sud  [LAm]    [SOL]
[FA]  Tropicana ver[LAm]tigine sei [DO]tu
Dove c''è [LAm]pelo c''è a[SOL]mor

[DO]  Vedo nero
[SIbadd9]  son del gatto
[DO]  Come disse il pesce infari[SIbadd9]nato: sono fritto!
[DO]  E spara spara
[SIbadd9]  e sul più bello
[DO]  mi tiene il cuore sotto [SIbadd9]tiro, poverello!

[DO]  Vedo nero
[SIbadd9]  coi miei occhi
[DO]  come disse la marchesa
cammi[SIbadd9]nando sugli specchi:
[DO]  me la vedo nera
[SIadd9]  ma nera nera!
[DO]  Ma non mi arrendo
[SIbadd9]  alzabandiera!
[LAm]  Vedo nero
[SOL]  sai perché?
[DO]  Te! Voglio [SIbadd9]te!      [FA]
Voglio [DO]te!
[DO]Ora (Ora) che ore sono?
[SIbadd9](Ora, ora)
è l''ora di ieri [FA]sera (ora)
e qui si balla an[DO]cora (Ora, ora)
[DO](ora, ora)
Che ore sono al[SIbadd9]lora? (ora, ora)
La luna in giarrett[FA]iera

(ora, ora)
io me la vedo [DO]nera
(nera, ora)
che ore sono an[SIbadd9]cora?
(ora, ora)
La seta della [FA]sera
(sera, ora)
io me la vedo [DO]nera
(nera, ora)', 'vedo-nero');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'REm'),
(@last_song_id, 'SI'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL');

