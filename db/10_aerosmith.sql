-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('I Don''t Want To Miss A Thing', 'Aerosmith', 'ENG', 'I could [RE]stay awake [LA]just to hear you [SIm]breathing,
Watch you [SOL]smile while you are [RE]sleeping,
While you are [MIm]far away and dreaming,
I could [RE]spend my life [LA]in this sweet sur[SIm]render
I could [SOL]stay lost in this [RE]moment fo[MIm]rever
Every moment [FA#m]spent with you
[SOL]  is a moment I [LA]treasure

[RE]  I don''t wanna [LA]close my eyes,
[MIm]  I don''t wanna fall asleep,
Cause I [SOL]miss you baby,
And I don''t wanna [LA]miss a thing,
[RE]  Cause even when I [LA]dream of you,
[MIm]  The sweetest dream will never do,
I still [SOL]miss you baby
And I don''t wanna [LA]miss a thing [RE]   [LA]       [MIm]

Lying [RE]close to you [LA]feeling your [SIm]heart beating
And I [SOL]wondering what you are [RE]dreaming,
Wondering [MIm]if it''s me you are seeing,
Then I [RE]kiss your eyes and [LA]thank God we''re to[SIm]gether
I just want to s[FA#m]tay with [SOL]you
in this moment fo[LA]rever, forever and ever

[RE]  I don''t wanna [LA]close my eyes,
[MIm]  I don''t wanna fall asleep,
Cause I [SOL]miss you baby,
And I don''t wanna [LA]miss a thing,
[RE]  Cause even when I [LA]dream of you,
[MIm]  The sweetest dream will never do,
I still [SOL]miss you baby
And I don''t wanna [LA]miss a thing [RE]

And I don''t wanna [DO]miss one smile,
I don''t wanna [SOL]miss one kiss,

I just want to [SIb]be with you right here with you
Right here [FA]just like this,
I just want to [DO]hold you close,
I feel your heart so [SOL]close to mine
And just [REm]stay here in this moment,
For all the [LA]rest of time

yeah, yeah, yeah, yeah, yeeeaaah

[RE]  I don''t wanna [LA]close my eyes,
[MIm]  I don''t wanna fall asleep,
Cause I [SOL]miss you baby,
And I don''t wanna [LA]miss a thing,
[RE]  Cause even when I [LA]dream of you,
[MIm]  The sweetest dream will never do,
I still [SOL]miss you baby
And I don''t wanna [LA]miss a thing [RE]

[RE]  I don''t wanna [LA]close my eyes,
[MIm]  I don''t wanna fall asleep
Cause I [SOL]miss you baby,
And I don''t wanna [LA]miss a thing

[RE]', 'i-dont-want-to-miss-a-thing');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Dream On', 'Aerosmith', 'ENG', '[FAm]  [SIbm6]  [FAm]  [SIbm6]  [FAm]  [FAm7]  [FAm]

[FAm]  [SIbm6]  [FAm]  [SIbm6]  [FAm]  [FAm7]  [FAm]

[SIb]  [DO]  [FAm]

[FAm]  Every [SIbm6]time I [FAm]look in the [SIbm6]mirror
[FAm]  all these [SIbm6]lines on my [FAm]face gettin'' [SIbm6]clearer
[FAm]     [SIbm6]   The past is [FAm]gone [SIbm6]
[FAm]it went [SIbm6]by,   [FAm]like dusk to [SIbm6]dawn
[FAm]   Isn''t that the [DO4]way
[FAm]everybody''s got their [SIbm6]dues in life to [DO]pay?

[FAm]  I know, [MIb]nobody knows
[REb]where it comes and [MIb]where it goes
[FAm]  I know, it''s [MIb]everybody''s sin
[REb]you got to lose to [MIb]know how to [FAm]win

Strumentale:
[FAm]  [SIbm6]  [FAm]  [SIbm6]  [FAm]  [FAm7]  [FAm]

[FAm]  Half my [SIbm6]life''s in [FAm]books'' written [SIbm6]pages
[FAm]  lived and [SIbm6]learned from [FAm]fools and from [SIbm6]sages
[FAm]     [SIbm6]   You know its [FAm]true [SIbm6]
[FAm]   all those [SIbm6]things,[FAm]  come back to [DO]you

[FAm]  Sing with me, [MIb]sing for the years
[REb]sing for laughter ''n'' [MIb]sing for the tears
[FAm]  Sing with me, if it''s [MIb]just for today
[FAm]Maybe tomorrow the [REb]good Lord will take you [DO]away

Strumentale:
[FAm]  [FAm]  [FAm]  [SIb]  [FAm7]  [FAm7]  [FAm7]  [FAm]

[FAm]  [FAm]  [FAm]  [SIb]  [FAm7]  [FAm7]

[FAm]  Sing with me, [MIb]sing for the years
[REb]sing for laughter ''n'' [MIb]sing for the tears
[FAm]  Sing with me, if it''s [MIb]just for today
[FAm]Maybe tomorrow the [REb]good Lord will take you [DO]away

[SIbm]  Dream on,[DOm]  dream on,[REb]  dream on
[MIb]  dream yourself a dream come [FAm]true
[SIbm]  Dream on,[DOm]  dream on,[REb]  dream on
[MIb]  dream yourself a dream come [FAm]true
[SIbm]  Dream on,[DOm]  dream on,[REb]  dream on
[MIb]  dream on,[FAm]  dream on
[DOm] dream on,[LAb]  dream on[SIb], ah  [DO]

[FAm]  Sing with me, [MIb]sing for the years
[REb]sing for laughter ''n'' [MIb]sing for the tears
[FAm]  Sing with me, if it''s [MIb]just for today
[FAm]Maybe tomorrow the [REb]good Lord will take you [DO]away
[FAm]  Sing with me, [MIb]sing for the years
[REb]sing for laughter ''n'' [MIb]sing for the tears
[FAm]  Sing with me, if it''s [MIb]just for today
[FAm]Maybe tomorrow the [REb]good Lord will take you [DO]away', 'dream-on');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DOm'),
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SIbm');

