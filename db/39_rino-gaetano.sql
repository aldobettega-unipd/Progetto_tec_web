-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Aida', 'Rino Gaetano', 'ITA', '[DO]   [SOL] [LAm]   [FA] [DO]
[SOL] [LAm]   [SOL7]
[DO]   [SOL] [LAm]   [FA] [DO]
[SOL] [LAm]
[SOL]Lei sfo[DO]gliava, i [SOL]suoi ri[LAm]cordi
le [FA]sue istan[DO]tanee, [SOL]i suoi ta[LAm]bù
Le [SOL7]sue ma[DO]donne, i [SOL]suoi ro[LAm]sari
e [FA]mille [DO]mari, [SOL]e ala[LAm]la''
I [SOL7]suoi ves[DO]titi, di [SOL]lino e [LAm]seta
le [FA]calze a [DO]rete, Mar[SOL]lene e Char[LAm]lot
E [SOL7]dopo [DO]giugno, il [SOL]gran conf[LAm]litto
e [FA]poi l''E[DO]gitto, e un''[SOL]altra [LAm]età
[SOL7]Marce e s[DO]vastiche,[SOL] e fede[LAm]rali
[FA]sotto i fa[DO]nali, [SOL]l''oscuri[LAm]tà
[SOL7]E poi il ri[DO]torno, in un [SOL]paese di[LAm]viso
più [FA]nero nel [DO]viso, più [SOL]rosso d''a[LAm]more

[SOL] [DO]   [SOL]      [LAm]    [FA]  [DO]  [SOL]  [LAm]
[DO]  [SOL]  [LAm]  [FA]  [DO]
[SOL] [LAm]
[SOL] [DO]      [SOL]    [LAm]
i [FA]compro[DO]messi, [SOL]la pover[LAm]tà
i [SOL]salari [DO]bassi, la [SOL]fame [LAm]bussa
il [FA]terrore [DO]russo, [SOL]Cristo e Sta[LAm]lin
[SOL] [DO]      [SOL]   [LAm]
la [FA]democra[DO]zia, [SOL]e chi ce l''[LAm]ha
e [SOL]poi trent''[DO]anni, [SOL]di sa[LAm]fari
tra a[FA]ntilopi e giag[DO]uari, scia[SOL]calli e la[LAm]pin
[SOL] [DO]   [SOL]      [LAm]
[FA]come sei [DO]bell[SOL]a    [LAm]
[DO]  [SOL]  [LAm]  [FA]  [DO]
[SOL] [LAm]', 'aida');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Gianna', 'Rino Gaetano', 'ITA', '[LA]  [RE]  [MI]    [LA]  [RE]  [MI]
[LA]  [RE]  [MI]    [LA]  [RE]  [MI]
[LA]Gianna Gianna [RE]Gianna soste[MI]neva
tesi e illu[LA]sioni [RE]   [MI]
[LA]Gianna Gianna [RE]Gianna promet[MI]teva
pareti e [LA]fiori [RE]   [MI]
[LA]Gianna Gianna [RE]aveva un cocco[MI]drillo
ed un dot[LA]tore  [RE]   [MI]
[LA]Gianna non per[RE]deva neanche un mi[MI]nuto
per fare l''a[LA]more  [RE]   [MI]

Ma la [LA]notte la [RE]festa è fi[MI]nita, evviva la [LA]vita
La [RE]gente si [MI]sveste e comincia un [LA]mondo
un [RE]mondo di[MI]verso, ma fatto si [LA]sesso
e chi vi[RE]vrà ve[MI]drà... [LA]   [RE]   [MI]      [LA]   [RE]   [MI]

[LA]Gianna Gianna [RE]Gianna non cer[MI]cava
il suo pigma[LA]lione [RE]   [MI]
[LA]Gianna difen[RE]deva il suo sa[MI]lario
dall''infla[LA]zione [RE]   [MI]
[LA]Gianna Gianna [RE]Gianna non cre[MI]deva
a canzoni ed [LA]ufo   [RE]   [MI]
[LA]Gianna aveva un [RE]fiuto eccezio[MI]nale
per il tar[LA]tufo  [RE]   [MI]

Ma la [LA]notte la [RE]festa è fi[MI]nita, evviva la [LA]vita
La [RE]gente si [MI]sveste e comincia un [LA]mondo
un [RE]mondo di[MI]verso, ma fatto si [LA]sesso
e chi vi[RE]vrà ve[MI]drà...
[LA] [RE] [MI]       [LA] [RE] [MI]    [LA] [RE] [MI]
Ma dove [LA]vai, vieni [RE]qua, ma che [MI]fai?
Dove vai, con chi ce [LA]l''hai? Vieni [RE]qua, ma che [MI]fai?
Dove vai, con chi ce [LA]l''hai? Di chi [RE]sei, ma che [MI]vuoi?
Dove vai, con chi ce [LA]l''hai? Butta [RE]la'', vieni [MI]qua,
chi la prende e chi la [LA]da! Dove [RE]sei, dove [MI]stai?
Fatti sempre i fatti [LA]tuoi! Di chi [RE]sei, ma che [MI]vuoi?
Il dottore non c''e'' [LA]mai! Non c''e'' [RE]mai! Non c''e'' [MI]mai!
Tu non prendi se non [LA]dai! Vieni [RE]qua, ma che [MI]fai?

Dove vai, con chi ce [LA]l''hai? Butta [RE]la'', vieni [MI]qua,
chi la prende e chi la [LA]da!Dove [RE]sei, dove [MI]stai?
Fatti sempre i fatti [LA]tuoi!Di chi [RE]sei, ma che [MI]vuoi?
Il dottore non c''e'' [LA]mai!Non c''e'' [RE]mai! Non c''e'' [MI]mai!
Tu non prendi se non [LA]dai! Vieni [RE]qua, ma che [MI]fai?', 'gianna');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Ma Il Cielo È Sempre Più Blu', 'Rino Gaetano', 'ITA', '[RE]  [SIm]  [RE]  [SIm]
[RE]  [SIm]  [RE]  [SIm]
[RE]  Chi vive in ba[SIm]racca,   [RE]  chi suda il sa[SIm]lario
[RE]  chi ama l''a[SIm]more e    [RE]   i sogni di [SIm]gloria
[RE]  chi ruba pen[LA]sioni, chi ha scarsa me[SOL]moria
[RE]  Chi mangia una [SIm]volta, [RE]  chi tira al ber[SIm]saglio
[RE]  chi vuole l''au[SIm]mento, [RE]  chi gioca a San[SIm]remo
[RE]  chi porta gli occh[LA]iali,   chi va sotto un t[SOL]reno
[RE]  Chi ama la [SIm]zia [RE] chi va a Porta [SIm]Pia
[RE]  chi trova scon[SIm]tato, chi come ha tro[RE]vato
na na na na [SIm]na na na na na

[SOL]  Ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh,
ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh, uh [LA]uh...
[RE]  Chi sogna i mi[SIm]lioni,   [RE]  chi gioca d''az[SIm]zardo
[RE]  chi gioca coi [LA]fili chi ha fatto l''in[SOL]diano
[RE]  chi fa il conta[SIm]dino,   [RE] chi spazza i cor[SIm]tili
[RE]  chi ruba, chi [SIm]lotta, chi ha fatto la s[RE]pia
na na na na [SIm]na na na na na

[SOL]  Ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh,
ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh, uh [LA]uh...
[RE]  [SIm]  [RE]  [SIm]
[RE]  [SIm]  [RE]  [SIm]

[RE]  Chi e` assunto alla [SIm]Zecca, chi ha fatto ci[RE]lecca
chi ha crisi inter[SIm]iori, chi scava nei c[RE]uori
chi legge la [SIm]mano, chi regna sov[RE]rano
chi suda, chi [SIm]lotta, chi mangia una [RE]volta
chi gli manca la [SIm]casa, chi vive da [RE]solo
chi prende assai [Sim]poco, chi gioca col f[RE]uoco
chi vive in Ca[SIm]labria, chi vive d''a[RE]more
chi ha fatto la [SIm]guerra, chi prende i ses[RE]santa
chi arriva agli ot[SIm]tanta, chi muore al la[RE]voro
na na na na [SIm]na na na na na

[SOL]  Ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh,
ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh, uh [LA]uh...

[RE]  Chi è assicu[SIm]rato, chi è stato mul[SOL]tato
chi possiede ed è a[LA]vuto, chi va in farma[RE]cia
chi e` morto di in[SIm]vidia o di gelo[SOL]sia
chi ha torto o rag[LA]ione, chi è Napole[RE]one
chi grida "al [SIm]ladro!", chi ha l''anti[SOL]furto
chi ha fatto un bel q[LA]uadro, chi scrive sui [RE]muri
chi reagisce d''is[SIm]tinto, chi ha perso, chi ha [SOL]vinto
chi mangia una [LA]volta, chi vuole l''au[RE]mento
chi cambia la [SIm]barca felice e con[SOL]tento
chi come ha tro[LA]vato, chi tutto som[RE]mato
chi sogna i mil[SIm]ioni, chi gioca d''az[SOL]zardo
chi parte per [LA]Beirut e ha in tasca un mi[RE]liardo
chi e` stato mul[SIm]tato, chi odia i ter[SOL]roni
chi canta Pre[LA]vert, chi copia Bagl[RE]ioni
chi fa il conta[SIm]dino, chi ha fatto la [SOL]spia
chi è morto d''in[LA]vidia o di gelo[RE]sia
chi legge la [SIm]mano, chi vende amu[SOL]leti
chi scrive poe[LA]sie, chi tira le [RE]reti
chi mangia pa[SIm]tate, chi beve un bicch[SOL]iere
chi solo ogni [LA]tanto, chi tutte le [RE]sere

na na na na [SIm]na na na na,[SOL] ma il cielo è [LA]sempre più [RE]blu
uh [SIm]uh, uh [SOL]uh, ma il cielo è [LA]sempre più [RE]blu  [SIm]     [SOL]     [LA]

[RE] Chi vive col [SIm]padre, [RE]  chi fa la ra[SIm]pina,
[RE] chi sposa la [SIm]Gina,  [RE] chi ha rotto con [SIm]tutti,
[RE] chi vince a Me[SIm]rano, [RE]  chi cerca il pet[SIm]rolio,
[RE]  chi dipinge ad [SIm]olio, [RE]  chi chiede un la[SIm]voro...
[RE]  [SIm]  [RE]  [SIm]
[RE]  [SIm]  [RE]  [SIm]

[RE]  Chi mangia pa[SIm]tate, chi beve un bicchi[RE]ere
chi fuma un tos[SIm]cano, chi vive cent''[RE]anni
chi ha seguito una st[SIm]rada, chi ha fatto carr[RE]iera
chi perde la [SIm]calma, chi non sembra più [RE]lui
chi lamenta un do[SIm]lore, chi chiede un la[RE]voro
chi torna sui [SIm]passi, chi ha visto un [RE]assist
chi ha preso un di[SIm]retto, chi canta in fal[RE]setto
na na na na na[SIm] na na, na na na na na na na

[SOL]  Ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh,
ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh, uh [LA]uh...

[RE] Chi vive in ba[SIm]racca, chi suda il sa[SOL]lario
chi ama l''a[LA]more, chi tira al ber[RE]saglio
chi sogna la g[SIm]loria, chi ha scarsa me[SOL]moria,
chi gioca a San[LA]remo, chi va sotto un t[RE]reno...[SIm]
[SOL]  Ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh,
ma il cielo è [LA]sempre più [RE]blu

chi ama la [SIm]zia, chi va a Porta P[SOL]ia
chi come ha pro[LA]vato, chi tutto so[RE]mmato
chi sogna i mil[SIm]ioni, chi gioca d''az[SOL]zardo
chi parte per [LA]Beirut e ha in tasca un mil[RE]iardo [SIm]    [SOL]
ma il cielo è [LA]sempre più [RE]blu uh [SIm]uh, uh [SOL]uh, [LA]

[RE]  chi e` stato mul[SIm]tato, chi odia i ter[SOL]roni
chi canta Pre[LA]vert, chi odia Bagl[RE]ioni
chi fa il conta[SIm]dino, chi ha fatto la s[SOL]pia
chi è morto d''in[LA]vidia o di gelosi[RE]a   [SIm]    [SOL]
ma il cielo è [LA]sempre più [RE]blu uh[SIm] uh, uh[SOL] uh, [LA]

[RE]  chi legge la [SIm]mano, chi vende amu[SOL]leti
chi scrive poe[LA]sia, chi tira le [RE]reti
chi mangia pa[SIm]tate, chi beve un bicc[SOL]hiere
chi solo ogni [LA]tanto, chi tutte le [RE]sere
chi mangia pa[SIm]tate, chi beve un bicc[SOL]hiere
chi solo ogni [LA]tanto, chi tutte le [RE]sere
chi mangia una [SIm]volta, chi vuole l''au[SOL]mento
chi cambia la [LA]barca felice e con[RE]tento
chi ama la [SIm]zia, chi va a Porta [SOL]Pia... [LA]    [RE]', 'ma-il-cielo-e-sempre-piu-blu');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LA'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

