-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('50 Special', 'Lunapop', 'ITA', '[SOL]  [DO]  [MIm]  [RE]  [DO]  [SOL]  [RE]
[SOL]  [DO]  [MIm]  [RE]  [DO]  [SOL]  [RE]
[SOL]Vespe truccate [SOL4+]anni sessanta
[SOL4]girano in centro sfio[SOL]rando i novanta
[SOL]rosse di fuoco co[LA7]mincia la danza
[DO]due frecce con dietro atta[SOL]ccata una targa
[DO]Dammi una special l''est[RE]ate che avanza
[DO]dammi una vespa e ti [RE]porto in vacanza

Ma quant''è [SOL]bello andare in [DO]giro
con le [MIm]ali sotto ai pie[RE]di
se hai una [DO]vespa special [SOL]che
ti toglie i proble[RE]mi
Ma quant''è [SOL]bello andare in [DO]giro
per i [MIm]colli bologne[RE]si
se hai una [DO]vespa special [SOL]che
ti toglie i proble[RE]mi
La scuola non [DO]va
ma ho una [SOL]vespa, una donna non [DO]ho
ho una [SOL]vespa e domenica è g[DO]ià
e una [SOL]vespa mi porte[RE]rà...
mi porterà... mi porte[RE7]rà...
fuori cit[SOL]tà   [DO]    [MIm]     [RE]    [DO]    [SOL]     [RE]
[SOL]  [DO]  [MIm]  [RE]  [DO]  [SOL]  [RE]
[SOL]Esco di fretta [SOL4+]dalla mia stanza
a [DO]marce ingranate dalla [SOL]prima alla quarta
[SOL]devo fare in fretta devo an[LA7]dare a una festa
[DO]fammi fare un giro prima [SOL]sulla mia vespa
[LAm]Dammi una special l''e[RE]state che avanza
[LAm]dammi una vespa e ti [RE]porto in vacanza

Ma quant''è [SOL]bello andare in [DO]giro
con le [MIm]ali sotto ai pie[RE]di
se hai una [DO]vespa special [SOL]che
ti toglie i proble[RE]mi
Ma quant''è [SOL]bello andare in [DO]giro
per i [MIm]colli bologne[RE]si
se hai una [DO]vespa special [SOL]che
ti toglie i proble[RE]mi
La scuola non [DO]va
ma ho una [SOL]vespa, una donna non [DO]ho
ho una [SOL]vespa e domenica è g[DO]ià
e una [SOL]vespa mi porte[RE]rà...
mi porterà... mi porte[RE7]rà...
fuori cit[SOL]tà   [DO]    [MIm]     [RE]    [DO]    [SOL]     [RE]
[SOL]  [DO]  [MIm]  [RE]  [DO]  [SOL]  [RE]', '50-special');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Qualcosa di Grande', 'Lunapop', 'ITA', '[FA]  [SOL]  [LAm]
Cos''è suc[FA]cesso, sei scap[SOL]pata
da una [LAm]vita che hai vis[MIm]suto
da una [FA]storia che hai bru[SOL]ciato
e ora [LAm]fingi che non c''è...
Cos''è suc[FA]cesso sei cam[SOL]biata
non sei [LAm]più la stessa [MIm]cosa
o sei an[FA]cora quella che
è cre[MI]sciuta insieme a me?
Cos''è suc[FA]cesso sei sca[SOL]ppata
e con te [LAm]anche la mia [MIm]vita
l''ho cer[FA]cata, l''ho cercata
e l''ho tro[MI]vata solo in te
Ma c''è qual[FA]cosa di [SOL]grande tra di [LAm]noi
che non po[MIm]trai cambiare [FA]mai..
nemmeno se lo v[MI]uoi
Ma c''è qual[FA]cosa di [SOL]grande tra di [LAm]noi
che non [MIm]puoi scordare [FA]mai..
nemmeno se lo v[MI]uoi   [LAm]
Cos''è suc[FA]cesso sei cad[SOL]uta
sei ca[LAm]duta troppo in [MIm]basso
e ora [FA]provi a risalire
ma è la fa[MI]tica che non vuoi
Cos''è suc[FA]cesso la for[SOL]tuna
non ti ha [LAm]mai abbando[MIm]nata
ma ricor[FA]dati il destino
non ti [MI]guarda in faccia mai
Ma c''è qual[FA]cosa di [SOL]grande tra di [LAm]noi
che non po[MIm]trai cambiare [FA]mai..
nemmeno se lo v[MI]uoi
Ma c''è qual[FA]cosa di [SOL]grande tra di [LAm]noi
che non [MIm]puoi scordare [FA]mai..
nemmeno se lo v[MI]uoi
Adesso [LAm]cosa fai? Che [RE7]cosa invente[SOL]rai
per [DO]toglierti dai [FA]guai... dove an[FAm]drai?
Adesso [LAm]cosa fai? Che [RE7]cosa invente[SOL]rai?
Puoi [DO]fingere di [FA]più, di come [FAm]fa---[LAm]i
Cos''è suc[FA]cesso la tua [SOL]luce
la tua [LAm]luce si è oscu[MIm]rata
con qual[FA]cuno che conosco
e ti ha por[MI]tata via da me
Cos''è suc[FA]cesso la tue [SOL]stella
la tua [LAm]stella si è eclis[MIm]sata
e ora pro[FA]vaci dal buio
a bril[MI]lare senza me

Ma c''è qual[FA]cosa di [SOL]grande tra di [LAm]noi
che non po[MIm]trai cambiare [FA]mai..
nemmeno se lo v[MI]uoi
Ma c''è qual[FA]cosa di [SOL]grande tra di [LAm]noi
che non [MIm]puoi scordare [FA]mai..
nemmeno se lo v[MI]uoi
Ma c''è qual[FA]cosa di [SOL]grande tra di [LAm]noi
che non po[MIm]trai cambiare [FA]mai..
nemmeno se lo v[MI]uoi

[FA]  [SOL]  [LAm]  [MIm]  [FA]     [MI]
Ma c''è qual[FA]cosa di [SOL]grande tra di [LAm]noi
che non po[MIm]trai cambiare [FA]mai..
nemmeno se lo v[MI]uoi
se lo [FA]vuoi  [SOL]     [LAm]     [MIm]     [FA]      [MI]
se lo [FA]vuoi  [SOL]     [LAm]     [MIm]     [FA]      [MI]
se lo [LAm]vuoi   [MIm]     [FA]     [MI7]      [LAm]', 'qualcosa-di-grande');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Un Giorno Migliore', 'Lunapop', 'ITA', '[SI]  [SI]  [SOL#m]  [FA#]  [MI]   [SI]  [DO#m]  [FA#]
[SI]  cosa mi a[SI]spetto dal do[SOL#m]mani
[FA#]  il [MI]sole in faccia no[SI]
ma in [DO#m]fondo io ci s[FA#]pero ancora
[SI]  che tu ci [SI]sia nel mio do[SOL#m]mani
[FA#]   e [MI]se t''incontrerò  [SI]
s[DO#m]pero di sfiorare [FA#]le tue mani

[REb]soli e  pure in [FAm]mezzo a gente io e t[REb]e
riscaldati dal ca[FAm]lore di una Benson & Hedg[REb]es
se mi v[FAm]uoi do[SOLb]mani sarà un g[LAb]iorno migliore ved[REb]rai
se mi v[FAm]uoi d[SOLb]omani sarà un g[LAb]iorno migliore ved[REb]rai

[SI]  che cosa [SI]dire di [SOL#m]noi
[FA#]     [MI]forse che in fond[SI]o
non m''im[DO#m]porta se t[FA#]u mi vuoi
[SI]  cosa mi a[SI]spetto dal dom[SOL#m]ani
[FA#]    [MI]beh credo che sia [SI]giusto
[DO#m]dirti che non voglio n[FA#]iente senz[SI]a te  [SI7]

[REb]e tu sei molto di p[FAm]iù di quello che tu sai [REb]
sei sole e p[FAm]ioggia negli inverni m[REb]iei
se mi v[FAm]uoi do[SOLb]mani sarà un g[LAb]iorno migliore ved[REb]rai
se mi v[FAm]uoi d[SOLb]omani sarà un g[LAb]iorno migliore ved[REb]rai

[SOLb]aspetta almeno un minuto
[LA]  non dirmi che non mi vuoi
[REb]devo trovare un appiglio
p[SOLb]rima che tu te ne vai da me  oooooohhh
[LAb]apri le tue ali e vola via[SI] da me [SOLb]      [REb]

[SI]  cosa mi a[SI]spetto dal do[SOL#m]mani
[FA#]  il [MI]sole in faccia no[SI]
ma in [DO#m]fondo io ci s[FA#]pero ancora
[SI]  che tu ci [SI]sia nel mio do[SOL#m]mani
[FA#]   e [MI]se t''incontrerò  [SI]
s[DO#m]pero di sfiorare [FA#]le tue mani

[REb]soli e  pure in [FAm]mezzo a gente io e t[REb]e
riscaldati dal ca[FAm]lore di una Benson & Hedg[REb]es
se mi v[FAm]uoi do[SOLb]mani sarà
un g[LAb]iorno migliore ved[REb]rai
se mi v[FAm]uoi d[SOLb]omani sarà
un g[LAb]iorno migliore ved[SIadd9]rai     [SOLb]      [REb]', 'un-giorno-migliore');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MI'),
(@last_song_id, 'REb'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m'),
(@last_song_id, 'SOLb');

