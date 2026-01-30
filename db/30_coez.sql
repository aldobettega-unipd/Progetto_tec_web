-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Domenica', 'Coez', 'ITA', '[FA]   [REm]   [SIb] [DO7] [REm]
Vorrei fosse [FA]domenica
Andare in bici senza mani
Una risata is[REm]terica
E sconvolgere i tuoi piani
E volare senz''[SIb]elica
Senz''[DO7]elica co[REm]n te
Vorrei fosse do[FA]menica
Niente stadio né partite
E una coda pa[REm]tetica
Su questa statale andare
Volare senz[SOLm7]''elica
Senz''[DO7]elica io e[REm] te

È [DO]come se [FA]fossimo bambini
Come se fossimo destini
Che si corrono ac[REm]canto
Con le mani nel vento
Come [SOLm7]fosse do[DO7]menica con[REm] te, con te
Vor[DO]rei fosse do[FA]menica

Tu coi piedi sul cruscotto
Io il braccio che [REm]penzola
L''orologio sotto al sole che scotta
E ri[SOLm7]penso alla mia [DO7]vita senz[REm]a te
Vor[DO]rei fosse do[FA]menica
E tua madre fosse meno, un po'' meno ne[REm]vrotica
E tuo padre oggi bevesse soltanto acqua [SOLm7]tonica
Io e [DO7]te a rid[REm]ere

È [DO]come se [FA]fossimo bambini
Come se fossimo destini
Che si corrono ac[REm]canto
(Che si corrono accanto)
Con le mani nel vento
(Con le mani nel vento)
Come [SOLm7]fosse do[DO7]menica co[REm]n te
Con te
[DO]Vorrei fosse do[FA]menica
Vorrei fosse do[REm]menica
E stringi la [SOLm7]giornata fra le dita
Che fra [DO7]poco è già finita
Così è la vi[RE]ta
Così è la vita

È come se [FA]fossimo bambini
Come se fossimo destini
Che si corrono ac[REm]canto
(Che si corrono accanto)
Con le mani nel vento
(Con le mani nel vento)
Come [SOLm7]fosse dom[DO7]enica co[REm]n te
Con te
Co[DO]me [FA]fosse domenica co[REm]n te
(Che si corrono accanto)
Con te
(Con le mani nel vento)
Come [SOLm7]fosse do[DO7]menica con[REm] te, con te
Co[DO]me [FA]fosse domenica con[REm] te
(Che si corrono accanto)
Con te
(Con le mani nel vento)
Come [SOLm7]fosse do[DO7]menica co[REm]n te
Con te', 'domenica');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('È Sempre Bello', 'Coez', 'ITA', '[LAb]  [DOm7]  [FAm7]  [REb]
È quasi sempre [LAb]bello se dal buio arriva il giorno
È bello se le [DOm7]nuvole sono solo un contorno
A volte è bello a[FAm]vere diciott''anni
È bello se mi ch[REb]iami, è bello se rimani
È bello se ri[LAb]mandi un po'' quando stai per venire
Ha un fascino più [DOm7]forte tutto ciò che può finire
Li hai visti i nuovi [FAm]euro da 20 e boh che dire
I soldi sono sempre [REb]belli, erano belle anche le lire
È bella questa [LAb]stanza pure se ci sto da solo
È bello questo han[DOm7]gover visto che oggi non lavoro
È bello se sco[FAm7]piamo al buio e invece fuori è giorno
[REb]  È sempre bello averti intorno
[LAb]Oggi voglio andare al [DOm7]mare
Anche se non è [FAm7]bello[REb]
[LAb]Oggi sai che voglio [DOm7]fare
Fare come quando [FAm7]piove e io mi scordo l''om[REb]brello
Capisci i senti[LAb]menti quando te li fanno a pezzi
È [DOm7]bello rimettere insieme i pezzi
Vedere che alla [FAm7]fine stanno in piedi anche da soli
È bello stare in[REb]sieme, saper stare da soli
È bello essere il [LAb]primo, bello andare lontano
Stamattina col [DOm7]sole era bella anche Milano
E tu che abbassi gli [FAm7]occhi quando dico

che sei sempre più bella
[REb]  Sei sempre più bella
[LAb]Oggi voglio andare al [DOm7]mare
Anche se non è [FAm7]bello[REb]
[LAb]Oggi sai che voglio [DOm7]fare
Fare come quando [FAm7]piove e io mi scordo l''om[REb]brello
[LAb]  Ma fuori com''è[DOm]?
Come lo vo[FAm]levi
Dietro le ser[REb]rande il sole
[LAb]  Ma fuori com''è?[DOm]
Con me e t[FAm]e
Quasi sempre [REb]bello pure
[LAb]Oggi voglio andare al [DOm7]mare
Anche se non è [FAm7]bello[REb]
[LAb]Oggi sai che voglio f[DOm7]are
Fare come quando [FAm7]piove e io mi scordo l''om[REb]brello
[LAb]Oggi voglio andare al m[DOm7]are
Anche se non è [FAm7]bello[REb]
[LAb]Oggi sai che voglio f[DOm7]are
Fare come quando [FAm7]piove e io mi scordo l''om[REb]brello
[LAb] Là fuori com''è[DOm]?
Come me e t[FAm]e
Non sempre [REb]bello eppure', 'e-sempre-bello');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'REb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('E Yo Mamma', 'Coez', 'ITA', '[FA]  [FA7+]  [FA6]
Questa va per [FA]te che hai lottato per [DO]me
C''è chi ha due geni[REm7]tori, ma tu vali per tre
Per tutte le [FA]volte che ho perso la [DO]calma
Tu m''hai dato un''[REm7]arma, e yo [DO]mamma

Questa va per [FA]te che hai lottato per [DO]me
C''è chi ha due geni[REm7]tori, ma tu vali per tre
Per tutte le [FA]volte che ho perso la [DO]calma
Tu m''hai dato un''[REm7]arma, e yo [DO]mamma

E yo [FA]ma''
Scrivo dal [DO]treno, fuori per suonare[REm7]
Che sono in giro con il perso[DO]nale  [FA]
A volte [DO]non mi prende il cellulare [REm7]
Ti scrivo, dopo ti richiamo e dopo c''ho d[DO]a fare [FA]
E non ti leggere gli in[DO]sulti su di me  [REm7]
Non fanno un cazzo e sanno tutti più di me[DO]      [FA]
Resto il bam[DO]bino delle elementar[REm7]i
Che scarabocchia i suoi di[DO]ari
E sbrocca con gli orari
[FA] Ho avuto un in[DO]cubo ma''
Ma adesso [REm7]brindo a un cielo indaco su un ritmo "na-na"
[DO]Quando ero [FA]piccolo sai che mi cac[DO]ciavo nei guai
Oggi è lo [REm7]stesso, ma i cattivi ormai non [DO]vincono mai

Questa va per [FA]te che hai lottato per [DO]me
C''è chi ha due geni[REm7]tori, ma tu vali per tre
Per tutte le [FA]volte che ho perso la [DO]calma
Tu m''hai dato un''[REm7]arma, e yo [DO]mamma
Questa va per [FA]te che hai lottato per [DO]me
C''è chi ha due geni[REm7]tori, ma tu vali per tre
Per tutte le [FA]volte che ho perso la [DO]calma
Tu m''hai dato un''[REm7]arma, e yo [DO]mamma

E yo [FA]ma''
Vorrei co[DO]prirti di tranquillit[REm7]à
Tutti i momenti tristi dimmi chi te li [DO]ridà
[FA] Avessi un figlio vorrei [DO]dargli la metà di me[REm7]
Solo la metà buona che è la metà[DO] di te[FA]
Che tutti quanti abbiamo un [DO]po'' di marcio dentro
[REm7] E prima o poi dobbiamo un po'' guardarci de[DO]ntro
[FA] E la forza per [DO]farlo me l''hai data tu [REm7]
Guardare in faccia i miei ta[DO]boo, mostri in déjà [FA]vu
Vestito casual [DO]blu, con un mazzo di cielo [REm7]
Senza nuvole in mano, questa sera qui [DO]per te
[FA] Il mondo pesa pi[DO]ù quando sono lontano
[REm7] Dirtelo è strano, vorrei [DO]renderti fiera di me

Questa va per [FA]te che hai lottato per [DO]me
C''è chi ha due geni[REm7]tori, ma tu vali per tre
Per tutte le [FA]volte che ho perso la [DO]calma
Tu m''hai dato un''[REm7]arma, e yo [DO]mamma
Questa va per [FA]te che hai lottato per [DO]me
C''è chi ha due geni[REm7]tori, ma tu vali per tre
Per tutte le [FA]volte che ho perso la [DO]calma
Tu m''hai dato un''[REm7]arma, e yo [DO]mamma
Oh oh[FA]    [DO]       [REm7]
[FA]  [DO]  [REm7]  [DO]  [FA]', 'e-yo-mamma');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'REm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Faccio un Casino', 'Coez', 'ITA', '[SOL]  [SI7]  [DO]  [MIm] [DO]  [SOL]
Ho scritto ti [SI7]amo sulla sabb[DO]ia, no
Posso [MIm]fare di [DO]meglio [SOL]
Strappo lo [SI7]scalpo di quest''alb[DO]a
E te lo [MIm]porto al ris[DO]veglio [SOL]
E ho rotto [SI7]tutto quello che po[DO]tevo per te[MIm],
che sei tutto [DO]quello che volevo  [SOL]
Da ragaz[SI7]zino ero bravo coi L[DO]ego
E cazzo è c[MIm]hiaro che a[DO]desso mi le[SOL]go

Dici di s[SI7]i, mentre te ne v[DO]ai un p[MIm]o'' di[DO] te [SOL]
rimane qu[SI7]i, anche se non v[DO]uoi
Amami o [MIm]faccio un ca[DO]sino, [SOL]
amami o [SI7]faccio un casin[DO]o,
Amami o [MIm]faccio un ca[DO]sino, [SOL]
amami o [SI7]faccio un casino,
[DO]amami o faccio un cas[MIm]ino  [DO]    [SOL]

Sono par[SI7]tito senza salut[DO]are
E senza [MIm]fare il bigli[DO]etto  [SOL]
E in fondo [SI7]cosa avrei dovuto f[DO]are, boh
Forse lasc[MIm]iare un bigl[DO]ietto [SOL]
E fare [SI7]la figura dello sce[DO]mo
Era me[MIm]glio se non t[DO]i conoscevo [SOL]
E tu a gio[SI7]care sei brava davve[DO]ro, ma [DOm]non con m[SOL]e

Dici di s[SI7]i, mentre te ne v[DO]ai un p[MIm]o'' di[DO] te [SOL]
rimane qu[SI7]i, anche se non v[DO]uoi
Amami o [MIm]faccio un ca[DO]sino, [SOL]
amami o [SI7]faccio un casin[DO]o,
Amami o [MIm]faccio un ca[DO]sino, [SOL]
amami o [SI7]faccio un casino,
[DO]amami o faccio un cas[MIm]ino  [DO]    [SOL]
Dim[SI7]mi cos''[DO]è che v[MIm]uoi d[DO]a me[SOL]
Dim[SI7]mi cos''[DO]è che v[MIm]uoi d[DO]a me[SOL]
Dim[SI7]mi cos''[DO]è che v[MIm]uoi d[DO]a me[SOL]
Lo s[SI7]ai che c[DO]''è,
amami o faccio un casino [SOL]     [SI7]     [DO]
amami o [MIm]faccio un ca[DO]sino [SOL]     [SI7]     [DO]
amami o [MIm]faccio un ca[DO]sino [SOL]

Pronto, cos''è che c''h[SI7]ai, sei presa m[DO]ale, ah
Hai rotto un [MIm]altro cellu[DO]lare  [SOL]
Cosa mi ch[SI7]iami solo se stai ma[DO]le
Ho casa nu[MIm]ova e devo [DO]sistema[SOL]re
Non sarò l''u[SI7]ltimo o il pr[DO]imo
Però hai las[MIm]ciato un b[DO]el cas[SOL]ino
E a parte t[SI7]utto eri brava davv[DO]ero,
ma n[DOm]on con m[SOL]e

Dici di s[SI7]i, mentre te ne v[DO]ai un p[MIm]o'' di[DO] te [SOL]
rimane qu[SI7]i, anche se non v[DO]uoi
Amami o [MIm]faccio un ca[DO]sino, [SOL]
Dim[SI7]mi cos''[DO]è che v[MIm]uoi d[DO]a me[SOL]
Lo s[SI7]ai che c[DO]''è,
Amami o [MIm]faccio un ca[DO]sino, [SOL]
Dim[SI7]mi cos''[DO]è che v[MIm]uoi d[DO]a me[SOL]
Lo s[SI7]ai che c[DO]''è,
Amami o [MIm]faccio un ca[DO]sino  [SOL]', 'faccio-un-casino');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DOm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Musica Non C’è', 'Coez', 'ITA', '[LAm]  [SOL]  [FA]  [DO]  [MIm]

[LAm]Volevo dirti [SOL]tante cose
ma non so da do[FA]ve iniz[DO]iare
Ti vor[MIm]rei vizia[LAm]re
Farti scivolare[SOL] addosso questo mondo inf[FA]ame
Metterm[DO]i fra te e cento [MIm]lame
mentre [LAm]cerco il mare [SOL]
Penso non avrebbe [FA]senso fare un
tuffo im[DO]menso se non ci sei [MIm]tu a nuot[LAm]are  [SOL]
E tu che sai colma[FA]re, e tu che sai cal[DO]mare  [MIm]
C''è [LAm]troppa luce dentro [SOL]la stanza
Questo caldo che av[FA]anza e io non dormi[DO]rò  [MIm]
E s[LAm]cusa se non parlo ab[SOL]bastanza
Ma ho una scuola di [FA]danza nello stoma[DO]co  [MIm]
E [LAm]balla senza mus[SOL]ica con t[FA]e    [DO]    [MIm]
Sei [LAm]bella che la musi[SOL]ca non c[FA]''è   [DO]    [MIm]

[LAm]Vorrei farti [SOL]cento cose
ma non so da d[FA]ove iniz[DO]iare
Ti vor[MIm]rei viz[LAm]iare
Bella [SOL]che non ti va di ballare
Ma [FA]bella che se balli
le [DO]altre ti guardano [MIm]male  [LAm]
Che c''hai sempre qual[SOL]cosa da insegnare
Mi metti in [FA]crisi e in questo testo
[DO]non ti riesco a dise[MIm]gnare  [LAm]
Vorrei portarti al [SOL]mare
anzi portarti il ma[FA]re   [DO]    [MIm]

C''è [LAm]troppa luce dentro [SOL]la stanza
Questo caldo che av[FA]anza e io non dormi[DO]rò  [MIm]
E s[LAm]cusa se non parlo ab[SOL]bastanza
Ma ho una scuola di [FA]danza nello stoma[DO]co  [MIm]
E [LAm]balla senza mus[SOL]ica con t[FA]e    [DO]    [MIm]
Sei [LAm]bella che la musi[SOL]ca non c[FA]''è   [DO]    [MIm]

[LAm]E in f[SOL]ondo tutto quello che volev[FA]o
lo vol[DO]evo [MIm]con te[LAm]
E [SOL]sembra stupido, ma ci crede[FA]vo
e ci cre[DO]devi anc[MIm]he te[LAm]
E n[SOL]on è facile trovarsi [FA]mai, oh [DO]mai, [MIm]oh ma[LAm]i
E [SOL]tu mi dici: "Meglio se ora v[FA]ai, orm[DO]ai è [MIm]tardi"

C''è [LAm]troppa luce dentro [SOL]la stanza
Questo caldo che av[FA]anza e io non dormi[DO]rò  [MIm]
E s[LAm]cusa se non parlo ab[SOL]bastanza
Ma ho una scuola di [FA]danza nello stoma[DO]co  [MIm]
E [LAm]balla senza mus[SOL]ica con t[FA]e    [DO]    [MIm]
Sei [LAm]bella che la musi[SOL]ca non c[FA]''è
Sei [LAm]bella che la musi[SOL]ca non c[FA]''è   [DO]    [MIm]
Sei [LAm]bella che la musi[SOL]ca non c[FA]''è   [DO]    [MIm]
Sei [LAm]bella che la musi[SOL]ca non c[FA]''è   [DO]    [MIm]
[LAm]  [SOL]    [FA]  [DO]  [MIm]', 'la-musica-non-ce');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('La Tua Canzone', 'Coez', 'ITA', '[REb]  [SOLb]  [SIbm]  [LAb]
[REb]  [SOLb]  [SIbm]  [LAb]
[REb]  Amare t[SOLb]e è faci[SIbm]le
Come o[LAb]diare la poli[REb]zia
Sai, [SOLb]le canz[SIbm]oni non [LAb]vanno mai [REb]via
[SOLb]Questa è la [SIbm]tua, sarà s[LAb]empre q[REb]ua
[SOLb]  Per quando la vor[SIbm]rai
[LAb]  Per quando m''odier[REb]ai   [SOLb]      [SIbm]
[LAb]  Per quando m''odier[REb]ai   [SOLb]      [SIbm]
[LAb]  Per quando m''odier[REb]ai

Amare me[SOLb], difficil[SIbm]e
Come a[LAb]mare chi se ne va [REb]via
In questo [SOLb]mare da infinite [SIbm]onde
Io [LAb]ho la m[REb]ia
[SOLb]La tua can[SIbm]zone ti b[LAb]agner[REb]à
[SOLb]  Per quando lo vor[SIbm]rai
[LAb]  Per quando m''odier[REb]ai   [SOLb]      [SIbm]
[LAb]  Per quando m''odier[REb]ai   [SOLb]      [SIbm]
[LAb]  Per quando m''odier[REb]ai

C''è un mazzo di f[SOLb7+]iori sul mio se[SIbm]dile, [LAb]guider[REb]ò
Per tutte le c[SOLb7+]ose che non so d[SIbm]ire m[LAb]entir[MIbm7]ò
Che certe parole non sanno us[SOLb]cire, forse n[REb]o
O forse [SOLb]non era [SIbm]vero [LAb]
[REb]  O forse [SOLb]non era [SIbm]vero [LAb]

[REb]  Amare m[SOLb]e è facil[SIbm]e
Come a[LAb]mare chi se ne va [REb]via
In questo [SOLb]mondo di infinite [SIbm]bombe
Io [LAb]ho la m[REb]ia
[SOLb]La tua can[SIbm]zone ti [LAb]scalder[REb]à
[SOLb]  Per quando lo vor[SIbm]rai   [LAb]
Per quando mi ame[REb]rai

C''è un mazzo di f[SOLb7+]iori sul mio se[SIbm]dile, [LAb]guider[REb]ò
Per tutte le c[SOLb7+]ose che non so d[SIbm]ire m[LAb]entir[MIbm7]ò
Che certe parole non sanno us[SOLb]cire, forse n[REb]o
O forse [SOLb]non era [SIbm]vero [LAb]
[REb]  O forse [SOLb]non era [SIbm]vero [LAb]
[REb]  O forse [SOLb]non era [SIbm]vero [LAb]
[REb]  O forse [SOLb]non era [SIbm]vero.[LAb]..', 'la-tua-canzone');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LAb'),
(@last_song_id, 'MIbm'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SOLb');

