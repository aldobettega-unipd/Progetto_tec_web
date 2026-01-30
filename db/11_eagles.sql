-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Hotel California', 'Eagles', 'en', '[SIm]  On a dark desert highway
[FA#]  cool wind in my hair
[LA]  Warm smell of colitas
[MI]  rising up through the air
[SOL]  Up ahead in the distance
[RE]  I saw a shimmering light
[MIm]  My head grew heavy and my sight grew dim
[FA#]  I had to stop for the night

[SIm]  There she stood in the doorway
[FA#]  I heard the mission bell
[LA]  And I was thinking to myself
this could be [MI]heaven or this could be hell
[SOL]  Then she lit up a candle
[RE]  and she showed me the way
[MIm]  There were voices down the corridor
[FA#]  I thought I heard them say

[SOL]Welcome to the Hotel Cali[RE]fornia
Such a [MIm]lovely place (such a lovely place)
such a [SIm7]lovely face
[SOL]Plenty of room at the Hotel Cali[RE]fornia
Any [MIm]time of year (any time of year)
you can [FA#]find it here

[SIm]  Her mind is Tiffany-twisted
[FA#]  she got the Mercedes bends
[LA]  She got a lot of pretty
[MI]  pretty boys she calls friends
[SOL]  How they dance in the courtyard
[RE]  sweet summer sweat
[MIm]  Some dance to remember
[FA#]  some dance to forget

[SIm]  So I called up the Captain
[FA#]  ''Please bring me my wine''
He said[LA], ''We haven''t had that spirit here
since [MI]nineteen sixty nine''
[SOL]  And still those voices are calling
from [RE]far away,
[MIm]  Wake you up in the middle of the night
[FA#]  Just to hear them say...

[SOL]Welcome to the Hotel Cali[RE]fornia.
Such a [MIm]lovely place (such a lovely place)
such a [SIm7]lovely face
They [SOL]livin'' it up at the Hotel Cali[RE]fornia
What a [MIm]nice surprise (what a nice surprise)
Bring your [FA#]alibis

[SIm]  Mirrors on the ceiling
[FA#]  The pink champagne on ice
And she said[LA] ''We are all just prisoners here
[MI]  of our own device''
[SOL]  And in the master''s chambers
[RE]  They gathered for the feast
[MIm]  They stab it with their steely knives
But they [FA#]just can''t kill the beast

[SIm]  Last thing I remember
I was[FA#] running for the door
[LA]  I had to find the passage
back to the [MI]place I was before
[SOL]  ''Relax,'' said the night man
''We are[RE] programmed to receive.
[MIm]  You can check-out any time you like,
[FA#]  But you can never leave!''

[SIm]  [FA#]  [LA]  [MI]  [SOL]  [RE]  [MIm]  [FA#]', 'hotel-california');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Take It Easy', 'Eagles', 'en', '[SOL]      [DO]  [RE]
[SOL]      [DO]  [RE]   [SOL]
Well, I''m a-[SOL]running down the road
Tryin'' to loosen my load
I''ve got seven women [RE]on my [DO]mind
[SOL]Four that wanna own me
[RE]Two that wanna stone me
[DO]One says she''s a friend of [SOL]mine
Take it [MIm]easy, take it [DO]ea--[SOL]sy
Don''t let the [LAm]sound of your own
[DO]wheels drive you [MIm]crazy
Lighten [DO]up while you still [SOL]can
Don''t even [DO]try to under[SOL]stand
Just find a [LAm]place to make your [DO]stand
And take it e[SOL]asy

Well, I''m a-[SOL]standing on a corner
In Winslow, Arizona
Such a fine [RE]sight to [DO]see
It''s a [SOL]girl, my Lord
In a [RE]flat-bed Ford
Slowin'' [DO]down to take a look at [SOL]me
Come on, [MIm]ba---[RE]by
Don''t say "[DO]May-[SOL]be"
I gotta [LAm]know
If your sweet [DO]love
Is gonna [MIm]save me
We may [DO]lose and we may [SOL]win
Though we will [DO]never be here a[SOL]gain
So open [LAm]up, I''m climbin'' i[DO]n
So take it e[SOL]asy

[SOL]        [RE]  [DO]   [SOL]   [RE]   [DO]   [SOL]
[MIm]   [RE]   [DO]   [SOL]   [LAm]   [DO]   [MIm]    [RE]
Well, I''m [SOL]running down the road
Trying to loosen my load
Got a world of trouble [RE]on my [LAm]mind
[SOL]Lookin'' for a lover
Who [RE]won''t blow my cover
She''s [DO]so hard to [SOL]find
Take it [MIm]easy, take it [DO]ea--[SOL]sy
Don''t let the [LAm]sound of your own
[DO]wheels make you [MIm]crazy
Come on, [DO]baby[SOL]
Don''t say "[DO]May-[SOL]be"
I gotta [LAm]know
If your sweet [DO]love
Is gonna [SOL]save me

[DO]    [SOL]    [DO]    [SOL]    [DO]
Oh we got it [SOL]ea---[SOL7]------[DO]sy
We oughta take it [SOL]ea---[SOL7]------[DO]sy    [MIm]', 'take-it-easy');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('I Can’t Tell You Why', 'Eagles', 'en', '[SIm]  [LA]  [SIm]  [LA]
[SIm]  [LA]  [SIm]  [FA#m7]
[RE7+]Look at us baby, up all night
[SOL7+]Tearing our love apart
[RE7+]Aren''t we the same two people
Who lived through [SOL7+]years in the dark? [FA#7]       [FA#7]
[SIm] Every time I try to [LA]walk away  [SOL7+]
Something makes me turn a[FA#7]round and sta[FA#7]y
And I[SIm] can''t tell you [LA]why     [SOL7+]       [FA#m7]

[RE7+]When we get crazy
It just ain''t right
(try to keep your head, little girl)
[SOL7+]Girl, I get lonely, too
You[RE7+] don''t have to worry
Just hold on tight
(don''t get caught in your little world)
[SOL7+]   ...''Cause I [FA#7]love you [FA#7]

[SIm] Nothing''s wrong as far as [LA]I can see [SOL7+]
We make it harder than it [FA#7]has to be [FA#7]
And I[SIm] can''t tell you [LA]why
No, baby, [SOL7+]I can''t tell you w[FA#m7]hy    [FA#7]
[SOL7+]I can''t tell you [FA#m7]why

[SIm]  [LA]  [SIm]  [FA#m7]
[RE7+]   [SOL7+]   [RE7+]   [SOL7+]  [FA#7]  [FA#7]
[SIm] Every time I try to [LA]walk away [SOL7+]
Something makes me turn a[FA#7]round and s[FA#7]tay
And [SIm]I can''t tell you [LA]why
No, no, baby, [SOL7+]I can''t tell you [FA#m7]why   [FA#7]
[SOL7+]I can''t tell you [FA#m7]why
[SOL7+]I can''t tell you [FA#m7]why...

[SOL7+]  [FA#m7]  [SOL7+]  [FA#m7]', 'i-cant-tell-you-why');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Life in the Fast Lane', 'Eagles', 'en', '[MI5]
He was a [MI5]hard-headed man, he was brutally handsome
And she was terminally pretty
She held him up and he held her for ransom
In the heart of the cold, cold city
He had a [LA7]nasty reputation as a cruel dude
They [MI5]said he was ruthless, they said he was crude
They had [SI5]one thing in common, they were good in bed

She''d say,
[LA7] "Faster, faster, the lights are turnin'' red"
[MI](Life in the fast lane)
surely make you lose your mind
(Life in the fast lane) huh...
Are you with me so far?
[MI5]Eager for action and hot for the game
The coming attraction, the drop of a name
They knew all the right people,
they took all the right pills
They threw outrageous parties,
they paid heavenly bills
There were[LA7] lines on the mirror, lines on her face
She pre[MI5]tended not to notice,

she was caught up in the race
[SI5]Out every evening, until it was light
He was [LA7]too tired to make it,
she was too tired to fight about it
[MI5](Life in the fast lane)
surely make you lose your mind
(Life in the fast lane) huh...
(Life in the fast lane) everything all the time
(Life in the fast lane) uh-huh

[SI]        [RE]        [SI]        [LA]    [MI]  [SI5]
[MI]
[MI5]Blowin'' and burnin'', blinded by thirst
They didn''t see the stop sign,
took a turn for the worst
She said, "Listen, baby,
you can hear the engine ring
We''ve been up and down this highway,
haven''t seen a goddamn thing"

He said,
[LA7] "Call the doctor, I think I''m gonna crash
The[MI5] doctor say he''s comin'',
but you gotta pay in cash"
They went [SI5]rushin'' down that freeway,
messed around and got lost
[LA7] They didn''t care,
they were just dyin'' to get off and it was
[MI5](Life in the fast lane)
surely make you lose your mind
(Life in the fast lane) uh-huh
(Life in the fast lane) everything all the time
(Life in the fast lane) uh-huh
Life in the fast lane   [RE]
[DO] Life in the fast lane  [LA] [MI5]', 'life-in-the-fast-lane');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Tequila Sunrise', 'Eagles', 'en', '[SOL] [SOL6] [SOL] [SOL6]
[SOL] [SOL6] [SOL] [SOL6]
[LAm]  [RE]  [SOL]
[SOL] It''s another tequila sunrise
[RE] Starin'' slowly cross the [LAm]sky
[RE7]  Said good [SOL]bye

He was just a hired hand
[RE] Workin'' on a dream he planned to [LAm]try
[RE7]  the days go [SOL]by

[MIm] Every night when the [DO]sun goes down
[MIm] just another [DO]lonely boy in to[MIm]wn
and [LAm]she''s out runnin'' [RE7]round

[SOL] She wasnt just another woman
[RE] And I couldnt keep from comin'' [LAm]on
[RE7]  It''s been so [SOL]long

Oh and it''s a hollow feelin''
[RE] When it comes down to dealin'' [LAm]friends
[RE7]  It never [SOL]ends

[SOL]   [RE]   [LAm7]  [RE7]  [SOL]
[LAm]  Take another [RE]shot of courage
[SIm]  Wonder why the [MI7]right words never [LAm7]come  [SI]
You just get [MIm7]numb   [LA]

[SOL] It''s another tequila sunrise
[RE] This old world still looks the [LAm]same
[RE7]  Another [SOL]frame', 'tequila-sunrise');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

