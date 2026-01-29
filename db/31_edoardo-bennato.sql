-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Il Gatto e La Volpe', 'Edoardo Bennato', 'ITA', '[LA]Quanta fretta, ma [FA#m]dove corri, [SIm]dove [MI]vai?
[LA]Se ci ascolti per [FA#m]un momento [SIm]capi[MI]rai
[LA]Lui è il gatto ed [DO#7]io la volpe s[FA#]tiamo in società
di [SIm]noi ti [MI]puoi fi[LA]dar  [FA#m]      [LA]    [FA#m]

[LA]Puoi parlarci dei [FA#m]tuoi problemi, [SIm]dei tuoi [MI]guai
[LA]i migliori in [FA#m]questo campo [SIm]siamo [MI]noi
[LA]è una ditta spe[DO#7]cializzata, [FA#7]fa un contratto e vedrai
che [SIm]non ti [MI]penti[LA]rai  [FA#m]       [LA]     [FA#m]

[LA]Noi scopriamo ta[FA#m]lenti e non sbag[SIm]liamo [MI]mai
[LA]noi sapremo sfrut[FA#m]tare le tue [SIm]quali[MI]tà
[LA]dacci solo [DO#7]quattro monete e [FA#7]ti iscriviamo al concorso
per [SIm]la ce[MI]lebri[LA]tà!  [LA7]

[RE] Non vedi che è un [MI]vero affare[LA] non perdere l''[FA#m]occasione
[SIm]se no poi [MI]te ne penti[LA]rai,  [LA7]
[RE]Non capita [MI]tutti i giorni
[DO#m]di avere due consulenti [SI7]due impresari,
[MI]che si fanno in quattro per te!

[LA]Avanti, non [FA#m]perder tempo, [SIm]firma [MI]qua
[LA]è un normale con[FA#m]tratto, è una for[SIm]mali[MI]tà
[LA]tu ci cedi [DO#7]tutti i diritti e [FA#7]noi faremo di te
un [SIm]divo da [MI]hit pa[LA]rade!

Strumentale:
[LA]  [FA#m]  [SIm]  [MI]  [LA]  [FA#m]  [SIm]  [MI]

[LA]  [DO#7]  [FA#7]  [SIm] [MI]  [LA]  [LA7]

[RE]Non vedi che è un [MI]vero affare[LA] non perdere l''[FA#m]occasione
[SIm]se no poi [MI]te ne penti[LA]rai,  [LA7]
[RE]Non capita [MI]tutti i giorni
[DO#m]di avere due consulenti [SI7]due impresari,
[MI]che si fanno in quattro per te!

[LA]Quanta fretta, ma [FA#m]dove corri, [SIm]dove [MI]vai?
[LA]Che fortuna che [FA#m]hai avuto ad incon[SIm]trare [MI]noi!
[LA]Lui è il gatto [DO#7]io la volpe [FA#7]siamo in società
di [SIm]noi ti [MI]puoi fi[LA]dar..[FA#7].
di [SIm]noi ti [MI]puoi fi[LA]dar..[FA#7].
di [SIm]noi ti [MI]puoi fi[LA]dar!', 'il-gatto-e-la-volpe');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#'),
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('L’Isola Che Non C’è', 'Edoardo Bennato', 'ITA', 'Seconda s[FA]tella a destra, questo é il cam[DO]mino
e poi d[SIb]ritto, fino al mat[FA]tino
poi la st[REm]rada la t[LA7]rovi da [SIb]te
porta all''[FA]isola[DO] che non [FA]c''é

Forse qu[FA]esto ti sembrerá st[DO]rano,
ma la rag[SIb]ione ti ha un po'' preso la [FA]mano
ed ora [REm]sei quasi con[LA7]vinto [SIb]che
non puó e[FA]sistere un''isol[DO]a che non [FA]c''é

E a pen[FA]sarci, che paz[DO]zia,
é una [SIb]favola, é solo fanta[FA]sia,
e chi é [REm]saggio, chi é ma[LA7]turo lo[SIb] sa
non puó e[FA]sistere [DO]nella real[FA]tá

Son d''ac[REm]cordo con [LA7]voi, non e[REm]siste una [LA7]terra
dove [SIb]non ci son [FA]santi né e[DO]roi
e se [SOLm7]non ci son [DO]ladri, se non [SOLm7]c''é mai la g[DO]uerra
forse é [SOLm7]proprio l''isol[DO]a che non [SOLm7]c''é   che non [DO]c''é

E non [FA]é un''invenz[DO]ione
e n[SIb]eanche un gioco di pa[FA]role
se ci c[REm]redi ti [LA7]basta per[SIb]ché
poi la st[FA]rada la t[DO]rovi da [FA]te

Strumentale:
[FA]  [DO]  [SIb]  [FA]

[REm]  [LA7]  [SIb]  [FA]  [DO]  [FA]

Son d''ac[REm]cordo con [LA7]voi niente [REm]ladri e gen[LA7]darmi,
ma che [SIb]razza di[FA] isola [DO]é?
Niente [SOLm7]odio e vio[DO]lenza, né sol[SOLm7]dati né [DO]armi
forse é p[SOLm7]roprio l''isola[DO] che non [SOLm7]c''é... che non [DO]c''é...

Seconda s[FA]tella a destra, questo é il cam[DO]mino
e poi d[SIb]ritto fino al mat[FA]tino
non ti p[REm]uoi sbagl[LA7]iare per[SIb]chè
quella é [FA]l''isol[DO]a che non [FA]c''è  [FA7]

E ti [SIb]prendono in [DO]giro se con[FA]tin[FA7]ui a cer[SIb]carla
ma non [FA]darti per [DO]vinto perc[FA]hé   [FA7]
chi ci ha [SIb]giá rinun[DO]ciato e ti [FA]ride[FA7] alle s[SIb]palle
forse é an[FA]cora piú [DO]pazzo di [SIb]te    [FA]', 'lisola-che-non-ce');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LA'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Non C’È', 'Edoardo Bennato', 'ITA', '[MI]


Quello lì è un ragazzo speciale
[SOL#m] Quello lì che passa e se ne va
[FA#m] E si porta chiusa nella chitarra
[SI] La sua anima underground
[MI] Quello lì che non c''è niente da fare
[SOL#m] Non c''è verso, tanto non capirà
[FA#m] Che chi è fuori dal giro che vale
[SI] E dal giro della pubblicità

Non[MI] c''è
Non[SOL#m] c''è
Non[FA#m] c''è
E se [SI]vuole restare fuori dalla rete
Non[MI] c''è
Non[SOL#m] c''è
Non[FA#m] c''è
E [SI]passa per le strade e nessuno lo vede

[MI] Quello lì che non si vuole adeguare
[SOL#m] Quello lì che non esiste perché
[FA#m] Anche nella realtà virtuale
[SI] Non può esserci uno che non c''è
[MI] Uno che non vuole partecipare
[SOL#m] Al gran ballo delle celebrità
[FA#m] Ma se si rifiuta di cantare
[SI] La canzone dell''unanimità

Non[MI] c''è
Non[SOL#m] c''è
Non[FA#m] c''è
E [SI]senza fare tanti giri di parole
Non[MI] c''è
Non[SOL#m] c''è
Non[FA#m] c''è
Ed [SI]è così che va, prendere o lasciare

[DO] A chi va sempre giran[LA]do
[DO] Qualunque sia il giroton[LA]do
[DO] Né chi va dove gli pa[MI]re

E con[SI4]tinua ad andare anche se cambia il vento[SI]

[MI] Quello lì è un ragazzo speciale
[SOL#m] Ed il suo sangue di parole nuove
[FA#m] È una musica che va per le strade
[SI] È una musica che si muove
[MI] Ma se nella playlist non appare
[SOL#m] Il teorema non ha soluzione
[FA#m] E anche tu che la stai ad ascoltare
[SI] Puoi convincerti che questa canzone

Non[MI] c''è
Non[MI] c''è
Non[FA#m7] c''è
Ed [SI]anche se son fulmini le sue parole
Non[MI] c''è
Non[MI] c''è
Non[FA#m7] c''è
Ed [SI]anche se questa musica ti spezza il [MI]cuore

Non c''è', 'non-ce');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m');

