-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Stairway To Heaven', 'Led Zeppelin', 'ENG', '
There''s a [LAm]lady who''s [MI]sure all that [DO]glitters is [RE]gold
And she''s [FA7+]buying a stairway to [SOL]heav[LAm]en
When she gets there she [MI]knows, if the [DO]stars are all [RE]close
With a [FA7+]word she can get what she [SOL]came f[LAm]or   [DO]    [RE]
Oo[FA7+]h, ooh[LAm], and she''s [DO]buying a [SOL]stairway to [RE]heaven
There''s a [DO]sign on the [RE]wall but she [FA7+]wants to be [LAm]sure
''Cause you [DO]know sometimes [RE]words have two [FA7+]meanings
In a [LAm]tree by the [MI]brook, there''s a [DO]songbird who [RE]sings,
Sometimes [FA7+]all of our thoughts are [SOL]misgiv[LAm]en

[LAm]  [MI]  [DO]  [FA7+]   [SOL] [LAm]
[LAm7]   [RE4] [RE]
Ooh, it makes me [LAm7]wonder, [MIm]       [RE]   [DO]      [RE]
[LAm7]   [RE4] [RE]
Ooh, it makes me [LAm7]wonder, [MIm]       [RE]   [DO]      [RE]

There''s a [DO]feeling I [SOL]get when I [LAm7]look to the west,
And my [DO]spirit is [SOL]crying for [FA]leav[LAm]ing
In my [DO]thoughts I have [SOL]seen rings of [LAm7]smoke through the trees,
And the [DO]voices of [SOL]those who stand [FA]loo[LAm]king   [DO]    [SOL]

[LAm7]   [RE4] [RE]
Ooh, it makes me [LAm7]wonder, [MIm]       [RE]   [DO]      [RE]
[LAm7]   [RE4] [RE]
Ooh, it makes me [LAm7]wonder, [MIm]       [RE]   [DO]      [RE]

And it''s [DO]whispered that [SOL]soon if we [LAm7]all call the tune
Then the [DO]piper will [SOL]lead us to [FA]reas[LAm]on
And a [DO]new day will [SOL]dawn for [LAm7]those who stand long
And the [DO]forests will [SOL]echo with [FA]laug[LAm]hter  [DO]    [SOL]

[LAm7]   [RE4] [RE]
[LAm7]   [MIm] [RE] [DO] [RE]
[LAm7]   [RE4] [RE]
[LAm7]   [MIm] [RE] [DO] [RE]
[DO] If there''s a [SOL]bustle in your [LAm]hedgerow, don''t be alarmed now,
[DO] It''s just a [SOL]spring clean for the [FA]May q[LAm]ueen
[DO] Yes, there are [SOL]two paths you can go by[LAm], but in the long run
[DO] There''s still [SOL]time to change the [FA]road you''[LAm]re on  [DO]    [SOL]

[LAm7]   [RE4] [RE]
Ooh, it makes me [LAm7]wonder, [MIm]       [RE]   [DO]      [RE]
[LAm7]   [RE4] [RE]
[LAm7]    [MIm] [RE] [DO] [RE]
[DO] Your head is [SOL]humming and it [LAm7]won''t go, in case you don''t know
[DO] The piper''s [SOL]calling you to [FA]join [LAm]him,
[DO] Dear lady, [SOL]can you hear the [LAm7]wind blow, and did you know
[DO] Your stairway [SOL]lies on the w[FA]hisper[LAm]ing wind  [DO]    [SOL]         [RE]

[LAm]  [SOL]  [FA]    [LAm]  [SOL]  [FA]

[LAm] And as we [SOL]wind on down the [FA]road   [SOL]
[LAm] Our shadows [SOL]taller than our [FA]soul  [SOL]
[LAm] There walks a [SOL]lady we all [FA]know   [SOL]
[LAm] Who shines white [SOL]light and wants to [FA]show  [SOL]
[LAm] How every[SOL]thing still turns to [FA]gold  [SOL]
[LAm] And if you [SOL]listen very [FA]hard  [SOL]
[LAm] The tune will [SOL]come to you at [FA]last [SOL]
[LAm] When all is [SOL]one and one is [FA]all   [SOL]
[LAm] To be a [SOL]rock and not to [FA]roll  [SOL]

[LAm]  [SOL]  [FA]    [LAm]  [SOL]  [FA7+]
And she''s buying a stairway to hea[LAm]ven', 'stairway-to-heaven');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Black Dog', 'Led Zeppelin', 'ENG', '
[LA5]Hey, hey mama, said the way you move,
Gonna make you sweat, gonna make you groove

[LA5]Uh uh child, way you shake that thing,
Gonna make you burn, gonna make you sting
[LA5]Hey, hey, baby, when you walk that way,
Watch your honey drip, can''t keep away[MI5]     [LA5]

[LA5]Ah, yeah, ah, yeah, ah, [DO5]ah, [LA5]ah,
[LA5]Ah, yeah, ah, yeah, ah, [DO5]ah, [LA5]ah,

I gotta roll, can''t stand still,
Got a flamin'' heart, can''t get my fill
[LA5]Eyes that shine, burnin'' red,
Dreams of you all through my head

Ah ah ah ah...

[LA5]Hey hey, baby, oh, baby, pretty baby,
Dar[SOL]lin'' can''t you do me [RE]now?   [LA5]      [SOL]    [RE]
[LA5]Hey, baby, oh, baby, pretty baby,
Move me [SOL]while you do me [RE]now   [LA5]     [SOL]    [RE]

[LA5]Didn''t take too long ''fore I found out

What people mean by down and out
[LA5]Spent my money, took my car,

Started tellin her friends she gonna be a star
[LA5]I don''t know, but I been told,
A big legged woman ain''t got no soul  [MI5]     [LA5]

[LA5]Ah, yeah, ah, yeah, ah, [DO5]ah, [LA5]ah,
[LA5]Ah, yeah, ah, yeah, ah, [DO5]ah, [LA5]ah,

All I ask for, all I pray,
Steady-loaded woman gonna come my way
[LA5]Need a woman, gonna hold my hand

Will tell me no lies, make me a happy man
Ah, ah, ah, ah, ah, ah...
[LA5]    [SOL] [RE]     [LA5]    [SOL] [RE]
[LA5]    [SOL] [RE]     [LA5]    [SOL] [RE]', 'black-dog');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

