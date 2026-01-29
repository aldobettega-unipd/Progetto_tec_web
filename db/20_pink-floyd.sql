-- File generato automaticamente
SET NAMES 'utf8mb4';


-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Another Brick In The Wall', 'Pink Floyd', 'ENG', '[REm]

[REm]We don''t need no education
[REm]We don''t need no thoughts controlled
No [REm]dark sarcasm in the class room
[REm]Teacher leave those kids alone… [SOL]
[SOL]Hey…Teacher leave them kids a[REm]lone…

[FA]  All in all it''s just [DO]another brick in the [REm]wall
[FA]  All in all it''s just [DO]another brick in the [REm]wall

[REm]We don''t need no education
[REm]We don''t need no thoughts controlled
No [REm]dark sarcasm in the class room
[REm]Teacher leave those kids alone… [SOL]
[SOL]Hey…Teacher leave them kids a[REm]lone…

[FA]  All in all it''s just [DO]another brick in the [REm]wall
[FA]  All in all it''s just [DO]another brick in the [REm]wall', 'another-brick-in-the-wall');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'REm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Comfortably Numb', 'Pink Floyd', 'ENG', '[SIm]

[SIm]Hello,
is there anybody [LA]in there?
Just [SOL]nod if you can [MIm]hear me;
is there [SIm]anyone home?

[SIm]Come on, now,
I hear you''re [LA]feeling down.
Well, [SOL]I can ease your [MIm]pain;
get you [SIm]on your feet again.

[SIm]Relax,
I need some infor[LA]mation first.
[SOL]Just the basic [MIm]facts:
can you [SIm]show me where it hurts?

[RE]  There is no pain, you are re[LA]ceding.
[RE]  A distant ships smoke on the ho[LA]rizon.
[DO]You are only coming through in [SOL]waves.
Your [DO]lips move but I can''t hear what you re [SOL]saying.
When [RE]I was a child I had a [LA]fever.
My [RE]hands felt just like two bal[LA]loons.
[DO]Now I got that feeling once a[SOL]gain;
I can''t explain, you would not [DO]understand.
This is not how I [SOL]am.

[LA]I   [DO] have be[SOL]come, comfortably [RE]numb.

Strumentale:
[RE]  [LA]  [RE]  [LA]  [DO]  [SOL]  [DO]  [SOL]

[LA]I   [DO] have be[SOL]come, comfortably [RE]numb.

[SIm]Ok, (ok)
just a little [LA]pinprick.
There''ll be no more --[SOL]aaaaaahh[MIm]hhh!
But you may [SIm]feel a little sick.

Can you [SIm]stand up?
I do believe it''s [LA]working good.
That''ll keep you [SOL]going for the [MIm]show.
Come [SIm]on it''s time to go.

[RE]  There is no pain, you are re[LA]ceding.
[RE]  A distant ships smoke on the ho[LA]rizon.
[DO]You are only coming through in [SOL]waves.
Your [DO]lips move but I can''t hear what you re [SOL]saying.
When [RE]I was a child I caught a [LA]fleeting glimpse,
[RE]  out of the corner of my [LA]eye.
[DO]  I turned to look but it was [SOL]gone.
I cannot put my finger [DO]on it now.
The child is grown, the [SOL]dream is gone.

[LA]I   [DO] have be[SOL]come, comfortably [RE]numb.', 'comfortably-numb');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Wish You Were Here', 'Pink Floyd', 'ENG', '[MIm7]  [SOL]  [MIm7]  [SOL]

[MIm7]  [LA7]  [MIm7]  [LA7]  [SOL]

[MIm7]  [SOL]  [MIm7]  [SOL]

[MIm7]  [LA7]  [MIm7]  [LA7]  [SOL]

[DO]So, so you think you can [RE]tell,
Heaven from [LAm]Hell, blue skies from [SOL]pain.
Can you tell a green [RE]field
from a cold steel [DO]rail, a smile from a [LAm]veil
Do you think you can [SOL]tell?
Did they get you to [DO]trade your heroes for [RE]ghosts
Hot ashes for [LAm]trees, hot air for a [SOL]cool breeze
cold comfort for [RE]change
And did you ex[DO]change a walk on part in the [LAm]war
for a lead role in a [SOL]cage?

[MIm7]  [SOL]  [MIm7]  [SOL]

[MIm7]  [LA7]  [MIm7]  [LA7]  [SOL]

[DO]  How I wish, how I wish you were [RE]here.
We''re just [LAm]two lost souls swimming in a fish bowl
[SOL]  year after year
[RE]  Running over the same old ground.
[DO]  What have we found?
The same old [LAm]fears. Wish you were [SOL]here...

[MIm7]  [SOL]  [MIm7]  [SOL]

[MIm7]  [LA7]  [MIm7]  [LA7]  [SOL]', 'wish-you-were-here');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Breathe', 'Pink Floyd', 'ENG', '[MIm9]   [LA]   [MIm9]   [LA]   [MIm9]   [LA]   [MIm9]   [LA]

[MIm9]   [LA]   [MIm9]   [LA]   [MIm9]   [LA]   [MIm9]   [LA]

[DO7+]   [SIm]   [FA7+]   [SOL]   [RE7] [RE#dim]

[MIm7] Breathe, breathe in the [LA]air
[MIm9] Don''t be afraid to [LA]care
[MIm9] Leave but don''t leave [LA]me
[MIm9]Look around, choose your [LA]own ground
For [DO7+]long you live and high you fly
And [SIm]smiles you''ll give and tears you''ll cry
And [FA7+]all your touch and all you see
Is [SOL]all your life will [RE7]ever be [RE#dim]

[MIm9] Run, rabbit [LA]run
[MIm9]Dig that hole, forget the [LA]sun
[MIm9] And when at last the work is [LA]done
[MIm9]Don''t sit down, it''s time to dig a[LA]nother one
For [DO7+]long you live and high you fly
But [SIm]only if you ride the tide
And [FA7+]balanced on the biggest wave
You [SOL]race towards an [RE7]early grav[RE#dim]e...

[MIm7]   [LA]', 'breathe');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'RE#'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

