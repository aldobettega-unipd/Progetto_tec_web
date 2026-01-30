-- File generato automaticamente
SET NAMES 'utf8mb4';


-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Master of Puppets', 'Metallica', 'ENG', '[MI5]   [RE5] [DO#5] [DO5]
[MI5] [RE5] [RE5] [DO#5] [DO]
[MI5] [LA#5] [LA5] [SOL#5] [SOL5] [FA#5]
[MI5]

[MIm]end of passion play, crumbling away
i''m your source of self-destruction
veins that pump with fear, sucking darkest clear
leading on your death''s construction
[FA#m]taste me, you will see
more is all you need
you''re dedicated to
how i''m killing you [SI5]

[MI5] [RE5] [MI5]
[DO5]    [SI5]come craw[RE#5]ling [SI5]    [MI5]faster [RE5]    [MI5]
[DO5]    [SI5]obey [RE#5]your [MI5]master[RE5]    [MI5]
[DO5]    your [SI5]life [RE#5]burns [MI5]faster[RE5]    [MI5]
[DO5]    o[SI5]bey [RE#5]your [MI5]master[RE5]    [MI5]
[FA5]master

[MI5]master of puppets, i''m pulling your s[SOL5]trings
[DO5]twisting your mind and [SI5]smashing your d[LA5]reams
[RE5]blinded by me, you [DO5]can''t see a [SI5]thing
[MI5]just call my name, ''cause i''ll[RE5]  hear you sc[DO]ream
[MI5]Master
[FA5]Master
[MI5]just call my name, ''cause i''ll hear you [DO]scream
[MI5]Master
[FA5]Master     [MI5]

[MIm]needlework the way, never you betray
life of death becoming clearer
pain monopoly, ritual misery
chop your breakfast on a mirror
[FA#m]taste me, you will see
more is all you need
you''re dedicated to
how i''m killing you [SI5]

[MI5] [RE5] [MI5]
[DO5]    [SI5]come craw[RE#5]ling [SI5]    [MI5]faster [RE5]    [MI5]
[DO5]    [SI5]obey [RE#5]your [MI5]master[RE5]    [MI5]
[DO5]    your [SI5]life [RE#5]burns [MI5]faster[RE5]    [MI5]
[DO5]    o[SI5]bey  [RE#5]your [MI5]master[RE5]    [MI5]
[FA5]master
[MI5]master of puppets, i''m pulling your s[SOL5]trings
[DO5]twisting your mind and [SI5]smashing your d[LA5]reams
[RE5]blinded by me, you [DO5]can''t see a [SI5]thing
[MI5]just call my name, ''cause i''ll[RE5]  hear you sc[DO5]ream
[MI5]Master
[FA5]Master
[MI5]just call my name, ''cause i''ll hear you [DO5]scream
[MI5]Master
[FA5]Master     [MI5]

[MIm] [RE]  [DOadd9]  [LAm9] [SI7] [SI7]
[MIm] [RE]  [DOadd9]  [LAm9] [SI7] [SI7]
[MIm] [RE]  [DOadd9]  [LAm9] [SI7] [SI7]
[MIm] [RE]  [DOadd9]  [LAm9] [SI7] [SI7]
[MIm] [RE]  [DOadd9]  [LAm9] [SI7] [SI7]
[MIm] [RE]  [DOadd9]  [LAm9] [SI7] [SI7]

[MI5] [RE5]  [DO5]  [LA5] [SI5] [RE#5]
[MI5] [RE5]  [DO5]  [LA5] [SI5] [RE#5]
[MI5]     [FA#5]
[FA#5]master, master
where''s the dreams that i''ve been after?
master, master
you promised only lies
laughter, laughter
all i hear and  see is laughter
laughter, laughter
laughing at my   cries [SOL5]      [FA#5]
fix me...

[MI5]
[MIm]hell is worth all that, natural habitat
just a rhyme without a reason
never-ending maze, drift on numbered days
now your life is out of season
[FA#m]i will occupy
i will help you die
i will run through you
now i rule you, too

[MI5] [RE5] [MI5]

[DO5]    [SI5]come craw[RE#5]ling [SI5]    [MI5]faster [RE5]    [MI5]
[DO5]    [SI5]obey [RE#5]your [MI5]master[RE5]    [MI5]
[DO5]    your [SI5]life [RE#5]burns [MI5]faster[RE5]    [MI5]
[DO5]    o[SI5]bey  [RE#5]your [MI5]master[RE5]    [MI5]
[FA5]master
[MI5]master of puppets, i''m pulling your s[SOL5]trings
[DO5]twisting your mind and [SI5]smashing your d[LA5]reams
[RE5]blinded by me, you [DO5]can''t see a [SI5]thing
[MI5]just call my name, ''cause i''ll[RE5]  hear you sc[DO5]ream
[MI5]Master
[FA5]Master
[MI5]just call my name, ''cause i''ll hear you [DO5]scream
[MI5]Master
[FA5]Master     [MI5]
[LA5]  .[MI5]..Haha ahaha', 'master-of-puppets');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DO#'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LA#'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'RE#'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOL#');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Nothing Else Matters', 'Metallica', 'ENG', '[MIm]  [LAm] [DO] [RE] [MIm]
[MIm]  [RE] [DO]   [MIm]  [RE] [DO]   [MIm]  [RE] [DO]
[SOL] [SI7] [MIm]

[MIm] So close no matter [RE]how far[DO]
[MIm] Couldn''t be much more [RE]from the heart [DO]
[MIm] Forever trusting [RE]who we are [DO]
[SOL] And [SI7]nothing else [MIm]matters

[MIm] Never opened my[RE]self this way [DO]
[MIm] Life is ours, we live it [RE]our way [DO]
[MIm] All these words I don''t [RE]just say [DO]
[SOL] And [SI7]nothing else [MIm]matters

[MIm] Trust I seek and [RE]find in you [DO]
[MIm] Every day for us [RE]something new [DO]
[MIm] Open mind for a [RE]different view [DO]
[SOL] And [SI7]nothing else [MIm]matters... [DO]    [LA]

[RE]  Never cared for what they [DO]do  [LA]
[RE]  Never cared for what they [DO]know[LA]
[RE]  But I [MIm]know

[MIm] So close no matter [RE]how far[DO]
[MIm] Couldn''t be much more [RE]from the heart [DO]
[MIm] Forever trusting [RE]who we are [DO]
[SOL] And [SI7]nothing else [MIm]matters

[RE]  Never cared for what they [DO]do  [LA]
[RE]  Never cared for what they [DO]know[LA]
[RE]  But I [MIm]know

[MIm]  [LAm] [DO] [RE] [MIm]
[MIm]  [LAm] [DO] [RE] [MIm]

[MIm] Never opened my[RE]self this way [DO]
[MIm] Life is ours, we live it [RE]our way [DO]
[MIm] All these words I don''t [RE]just say [DO]
[SOL] And [SI7]nothing else [MIm]matters

[MIm] Trust I seek and [RE]find in you [DO]
[MIm] Every day for us [RE]something new [DO]
[MIm] Open mind for a [RE]different view [DO]
[SOL] And [SI7]nothing else [MIm]matters... [DO]    [LA]

[RE]  Never cared for what they [DO]say [LA]
[RE]  Never cared for games they [DO]play [LA]
[RE]  Never cared for what they [DO]do  [LA]
[RE]  Never cared for what they [DO]know[LA]
[RE]  But I [MIm]know

[MIm]  [RE] [DO]   [MIm]  [RE] [DO]   [MIm]  [RE] [DO]
[SOL] [SI7] [MIm]

[MIm] So close no matter [RE]how far[DO]
[MIm] Couldn''t be much more [RE]from the heart [DO]
[MIm] Forever trusting [RE]who we are [DO]
[SOL] And [SI7]nothing else [MIm]matters.', 'nothing-else-matters');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

