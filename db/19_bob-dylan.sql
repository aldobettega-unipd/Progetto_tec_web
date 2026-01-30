-- File generato automaticamente
SET NAMES 'utf8mb4';


-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Blowin’ In The Wind', 'Bob Dylan', 'en', '[MI]How many [LA]roads must a [MI]man walk down
Before you [LA]call him a [MI]man?
Yes, ''n'' how many [LA]seas must a [MI]white dove sail
Before she [LA]sleeps in the [SI]sand?
[MI]Yes, ''n'' how many [LA]times must the [MI]cannon balls fly
Before they''re [LA]forever [SI]banned?

The [LA]answer, my [SI]friend, is [MI]blowin'' in the [DO#m]wind,
The [LA]answer is [SI]blowin'' in the [MI]wind

[MI]How many [LA]years can a [MI]mountain exist
Before it''s [LA]washed to the [MI]sea?
Yes, ''n'' how many [LA]years can some [MI]people exist
Before they''re [LA]allowed to be [SI]free?
[MI]Yes, ''n'' how many [LA]times can a [MI]man turn his head,
Pretending he [LA]just doesn''t [SI]see?

The [LA]answer, my [SI]friend, is [MI]blowin'' in the [DO#m]wind,
The [LA]answer is [SI]blowin'' in the [MI]wind

[MI]How many [LA]times must a [MI]man look up
Before he can [LA]see the [MI]sky?
Yes, ''n'' how many [LA]ears must [MI]one man have
Before he can [LA]hear people [SI]cry?
[MI]Yes, ''n'' how many [LA]deaths will it [MI]take till he knows
That too many [LA]people have [SI]died?

The [LA]answer, my [SI]friend, is [MI]blowin'' in the [DO#m]wind,
The [LA]answer is [SI]blowin'' in the [DO#m]wind
The [LA]answer, my [SI]friend, is [MI]blowin'' in the [DO#m]wind,
The [LA]answer is [SI]blowin'' in the [MI]wind', 'blowin-in-the-wind');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Like A Rolling Stone', 'Bob Dylan', 'en', '[DO]  [FA7+]   [DO]  [FA7+]
[DO]  [FA7+]   [DO]  [FA7+]
[DO]Once upon a time you [REm7]dressed so fine
You [MIm]threw the bums a dime [FA]in your prime
[SOL]  didn''t you?
[DO]  People''d call, say, "[REm7]Beware doll,
you''re [MIm]bound to fall" You thought [FA]they were all
[SOL]  kiddin'' you

[FA]  You used to [SOL]  laugh about
[FA]  Everybody that was [SOL]  hangin'' out

[FA] Now [MIm]you don''t [REm7]talk so [DO]loud
[FA] Now you d[MIm]on''t [REm7]seem so [DO]proud

A[REm7]bout having to be scrounging
[FA]for your next [SOL]meal.

How does it feel[DO]    [FA]    [SOL]
How does it feel[DO]    [FA]    [SOL]
To be without a home[DO]    [FA]    [SOL]
Like a complete unknown[DO]    [FA]    [SOL]
Like a rolling stone [DO]    [FA]    [SOL]

[DO]  [FA]  [SOL]
Aww,[DO] You''ve gone to the finest [REm7]school all right
Miss [MIm]Lonely, but you know you only [FA]used to get
[SOL]   juiced in it
[DO] Nobody has ever ta[REm7]ught you
how to live on the [MIm]street
And now you''re [FA]just gonna have to get
[SOL]  used to it

[FA]  You said you''d never[SOL]  compromise
[FA]  With the mystery tramp, but now you
[SOL]  realize

[FA] He''s not [MIm]selling any[REm7]  alib[DO]is
As you [FA]stare into the [MIm]vacuum  [REm7]of his [DO]eyes

And [REm7]say do you want to [FA]make a [SOL]deal?

How does it feel[DO]    [FA]    [SOL]
How does it feel[DO]    [FA]    [SOL]
To be without a home[DO]    [FA]    [SOL]
Like a complete unknown[DO]    [FA]    [SOL]
Like a rolling stone [DO]    [FA]    [SOL]

[DO]  [FA]  [SOL]
Aww, You [DO]never turned around to [REm7]see the frowns
On the [MIm]jugglers and the clowns
[FA]  when they all did [SOL]tricks for you
You [DO]never understood that it [REm7]ain''t no good
[MIm]  You shouldn''t [FA]let other people get your
[SOL]  kicks for you

[FA]  You used to ride on the chrome horse with your
[SOL]  diplomat
[FA]  Who carried on his shoulder a [SOL]  Siamese cat

[FA] Ain''t it hard [MIm] when you di[REm7]scover t[DO]hat
[FA] He really [MIm]wasn''t  [REm7]where it''s [DO]at
[REm7]After he took from you everything
[FA]he could [SOL]steal.

How does it feel[DO]    [FA]    [SOL]
How does it feel[DO]    [FA]    [SOL]
To be without a home[DO]    [FA]    [SOL]
Like a complete unknown[DO]    [FA]    [SOL]
Like a rolling stone [DO]    [FA]    [SOL]

[DO]  [FA]  [SOL]
Aww, [DO]Princess on the [REm7]steeple
and all the [MIm]pretty people
[FA] They''re all drinkin'', thinkin'' that they
[SOL]  got it made
[DO] Exchanging all [REm7]precious gifts[MIm]
[FA]But you''d better take your diamond [SOL]ring

you''d better pawn it babe

[FA]  You used to be [SOL] so amused
[FA]  At Napoleon in rags
and the [SOL]language that he used

[FA] Go to him now, he [MIm]calls you, you [REm7]can''t re[DO]fuse
[FA] When you got [MIm]nothing, you got [REm7]nothing to [DO]lose
You''re[REm7] invisible now, you got no secrets
[FA]to con[SOL]ceal.

How does it feel[DO]    [FA]    [SOL]
How does it feel[DO]    [FA]    [SOL]
To be without a home[DO]    [FA]    [SOL]
Like a complete unknown[DO]    [FA]    [SOL]
Like a rolling stone [DO]    [FA]    [SOL]
[DO]  [FA]  [SOL]', 'like-a-rolling-stone');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

