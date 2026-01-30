-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Clocks', 'Coldplay', 'ENG', '[MIb]  [SIbm7]  [FAm]   [MIb]  [SIbm7]  [FAm]
[MIb]  [SIbm7]  [FAm]   [MIb]  [SIbm7]  [FAm]
[MIb]Lights go out and I [SIbm7]can''t be saved
tides that I tried to [FAm]swim against
[MIb] Brought me down u[SIbm7]pon my knees
oh I beg I [FAm]beg and plead singing
[MIb]Come out of the [SIbm7]things unsaid
shoot an apple [FAm]off my head..  and a
[MIb]trouble that [SIbm7]can''t be named
tigers waiting [FAm]to be tamed.. singing

[MIb]  ye [SIbm7] hooooooooh  [FAm]aahh
[MIb]  ye [SIbm7] hooooooooh  [FAm]aahh

[MIb]  [SIbm7]  [FAm]     [MIb]  [SIbm7]  [FAm]
[MIb]Confusion [SIbm7]never stops
closing walls and [FAm]ticking clocks.. gonna
[MIb] come back and [SIbm7]take you home
I could not stop the [FAm]tune now known singing
[MIb] Come out u[SIbm7]pon my seas
curse missed oppor[FAm]tunities.. am I
[MIb] a part [SIbm7]of the cure
or am I a part [FAm]of the disease? ..singing

[MIb]  ye [SIbm7] hooooooooh  [FAm]aahh
[MIb]  ye [SIbm7] hooooooooh  [FAm]aahh
[MIb]  ye [SIbm7] hooooooooh  [FAm]aahh
[MIb]  ye [SIbm7] hooooooooh  [FAm]aahh

[SOLb7+]  and nothing else [REb]compares [LAb]
[SOLb7+]  oh nothing else [REb]compares[LAb]
[SOLb7+]  and nothing else [REb]compar[SOLb]es

[MIb]  [SIbm7]  [FAm]     [MIb]  [SIbm7]  [FAm]
[MIb]  [SIbm7]  [FAm]     [MIb]  [SIbm7]  [FAm]
[MIb]Home, h[SIbm7]ome, where I wanted to [FAm]go
[MIb]Home, h[SIbm7]ome, where I wanted to [FAm]go
[MIb]Home, h[SIbm7]ome, where I wanted to [FAm]go
[MIb]Home, h[SIbm7]ome, where I wanted to [FAm]go
[MIb]  [SIbm7]  [FAm]    [MIb]  [SIbm7]  [FAm]', 'clocks');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SOLb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Fix You', 'Coldplay', 'ENG', 'When you [MIb]try your best
but you [SOLm]don''t succeed [DOm]      [SIb4]
When you [MIb]get what you want
but [SOLm]not what you need [DOm]      [SIb4]
When you [MIb]feel so tired
but [SOLm]you can''t sleep [DOm]      [SIb4]
Stuck in [MIb]re - v[SOLm]er - se.  [DOm]      [SIb4]

When the [MIb]tears come streaming
[SOLm]down your face [DOm]      [SIb4]
When you [MIb]lose something
you [SOLm]can''t replace [DOm]      [SIb4]
When you [MIb]love someone
but it [SOLm]goes to waste [DOm]      [SIb4]
Could it [MIb]be  wo[SOLm] - rse?   [DOm]      [SIb4]

[LAb]  Lights will [SIb]guide you home
[LAb]  And ig[SIb]nite your bones
[LAb]  And I will [SIb]try to fix you

[MIb]  [SOLm]  [DOm]  [SIb4]
[MIb]  [SOLm]  [DOm]  [SIb4]
And [MIb]high up above
or [SOLm]down below [DOm]      [SIb4]
When you''re [MIb]too in love
to [SOLm]let it go [DOm]      [SIb4]
If you [MIb]never try
you''ll [SOLm]never know [DOm]      [SIb4]
Just what you''re [MIb]wor - [SOLm]th       [DOm]     [SIb4]

[LAb]  Lights will [SIb]guide you home
[LAb]  And ig[SIb]nite your bones
[LAb]  And I will [SIb]try to fix you

[MIb]   [LAb7+]   [MIb]   [SIb4] [SIb]
[MIb]   [LAb7+]   [MIb]   [SIb4] [SIb]
[MIb]   [LAb7+]   [MIb]   [SIb4] [SIb]
[MIb]   [LAb7+]   [MIb]   [SIb4] [SIb]
[MIb]  Tears stream..[LAb7+]  down your face
[MIb]  When you lose something [SIb4]you cannot [SIb]replace
[MIb]  Tears stream..[LAb]  down your face
And [MIb]I.....[SIb4]
[MIb]  Tears stream..[LAb7+]  down your face
[MIb]  I promise you that I''ll [SOLm]learn from my mistakes
[MIb]  Tears stream..[LAb]  down your face
And [MIb]I.....[SIb4]

[LAb]  Lights will [SIb]guide you home
[LAb]  And ig[SIb]nite your bones
[LAb]  And I will [SIb]try to fix you [MIb]', 'fix-you');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('The Scientist', 'Coldplay', 'ENG', '[REm7] Come up to [SIb]meet you, tell you I''m [FA]sorry,
you don''t know how [FAadd9]lovely you are
[REm7] I had to [SIb]find you, tell you I [FA]need you,
tell you I''ll [FAadd9]set you apart
[REm7] Tell me your [SIb]secrets and ask me your [FA]questions,
oh lets go [FAadd9]back to the start
[REm7] Running in [SIb]circles, coming in [FA]tales,
heads are a [FAadd9]science apart

[SIb] Nobody said it was easy..
[FA] it''s such a [FAadd9]shame for us to part
[SIb] Nobody said it was easy..
[FA] no-one ever [FA7+]said it would [FA6]be this [DO]hard [DO4]
[DO] Oh take me back to the [FA]start [SIb]      [FA]     [FAadd9]

[REm7] I was just [SIb]guessing at numbers and [FA]figures,
pulling the [FAadd9]puzzles apart
[REm7] Questions of [SIb]science, science and [FA]progress,
do not speak as [FAadd9]loud as my heart
[REm7] Tell me you [SIb]love me, come back and [FA]haunt me,
oh and I [FAadd9]rush to the start
[REm7] Running in [SIb]circles, chasing [FA]tales,
coming [FAadd9]back as we [DO4]are

[SIb] Nobody said it was easy..
[FA] it''s such a [FAadd9]shame for us to part
[SIb] Nobody said it was easy..
[FA] no-one ever [FA7+]said it would [FA6]so ha...[DO]ard  [DO4]
[DO] Oh take me back to the [FA]start [SIb]       [FA]

[REm7]   [SIb]          [FA]
[REm7]  oh - [SIb]ooo-oo-oo-oo-[FA]ooo
[REm7]  oh - [SIb]ooo-oo-oo-oo-[FA]ooo
[REm7]  oh - [SIb]ooo-oo-oo-oo-[FA]ooo
[REm7]  oh - [SIb]ooo-oo-oo-oo-[FA]ooo', 'the-scientist');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Viva La Vida', 'Coldplay', 'ENG', '
[REb]  [MIb7]  [LAb]  [FAm]   [REb]  [MIb7]  [LAb]  [FAm]
I used to [REb]rule the w[MIb]orld
Seas would [LAb]rise when I gave the [FAm]word
Now in the morning I [REb]sweep al[MIb]one
Sweep the [LAb]streets I used to [FAm]own

[REb]  [MIb7]  [LAb]  [FAm]   [REb]  [MIb7]  [LAb]  [FAm]
I used to [REb]roll the [MIb]dice
Feel the [LAb]fear in my enemy''s [FAm]eyes
Listen as the [REb]crowd would [MIb]sing:
"Now the [LAb]old king is dead! Lo[FAm]ng live the king!"
One minute I [REb]held the [MIb]key
Next the [LAb]walls were closed o[FAm]n me
And I discovered that my [REb]castles [MIb]stand
Upon [LAb]pillars of salt and pil[FAm]lars of sand

I [REb]hear Jerusalem [MIb]bells are ringing
[LAb]Roman Cavalry [FAm]choirs are singing
[REb]Be my mirror, my [MIb]sword, and shield
My [LAb]missionaries in a [FAm]foreign field
[REb]For some reason I [MIb]can''t explain
[LAb]Once you go there was [FAm]never, never an [REb]honest [MIb]word
That [LAb7+]was when I ruled the [FAm]world

[REb]  [MIb7]  [LAb]  [FAm]   [REb]  [MIb7]  [LAb]  [FAm]
It was the wicked and [REb]wild w[MIb]ind
Blew down the [LAb]doors to let me [FAm]in
Shattered windows and the [REb]sound of [MIb]drums
People [LAb]couldn''t believe what [FAm]I''d become
Revolutio[REb]naries [MIb]wait
For my [LAb]head on a silver [FAm]plate
Just a puppet on a [REb]lonely [MIb]string
Oh [LAb]who would ever want to be [FAm]king?

I [REb]hear Jerusalem [MIb]bells are ringing
[LAb]Roman Cavalry [FAm]choirs are singing
[REb]Be my mirror, my [MIb]sword, and shield
My [LAb]missionaries in a [FAm]foreign field
[REb]For some reason I [MIb]can''t explain
[LAb]Once you go there was [FAm]never, never an [REb]honest [MIb]word
That [LAb7+]was when I ruled the [FAm]world

[REb]  [FAm]  [REb]  [FAm]  [REb]  [FAm]  [MIb]
Ohhhhh Ohhh [REb]Ohhh.[MIb7]..    [LAb]     [FAm]      [REb]     [MIb7]      [LAb]     [FAm]
I [REb]hear Jerusalem [MIb]bells are ringing
[LAb]Roman Cavalry [FAm]choirs are singing
[REb]Be my mirror, my [MIb]sword, and shield
My [LAb]missionaries in a [FAm]foreign field
[REb]For some reason I [MIb]can''t explain
I [LAb]know St. Peter won''t [FAm]call my name
Never an [REb]honest [MIb]word
But that was [LAb7+]when I ruled the [FAm]world
[REb]  [MIb7]  [LAb]  [FAm]   [REb]  [MIb7]  [LAb]  [FAm]', 'viva-la-vida');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'REb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Yellow', 'Coldplay', 'ENG', '[SI]  [SI4]  [SI]  [SI4]
[SI]  [SI4]  [FA#6]  [FA#]  [MI6]  [MI]
[SI]  [SI4]
[SI]  Look at the stars
Look how they shine for [FA#]you
And everything you [MI]do... yeah, they were all yellow.
[SI]  I came along,
I wrote a song for [FA#]you
And all the things you [MI]do, and it was called "Yellow."
[SI]  So then i took my [FA#]turn,
Oh what a thing to have [SOL#m]done,
And it was all yellow.[SI]     [SI4]

[MI]  Your Skin,
[SOL#m]  Oh yeah, your [FA#]skin and bones
[MI]  Turn i..[SOL#m].nto something [FA#]beautiful,
[MI]  You know, [SOL#m]  you know I [FA#]love you so,
[MI]  You know i love you so.

[SI]  [SI4]  [FA#6]  [FA#]  [MI6]  [MI]
[SI]  [SI4]
[SI]  I swam across,
I jumped across for [FA#]you,
Oh, what a thing to [MI]do ''cause you were all yellow.
[SI]  I drew a line,
I drew a line for [FA#]you,
Oh, what a thing to [SOL#m]do
And it was all yellow.[SI]

[MI]  Your Skin,
[SOL#m]  Oh yeah, your [FA#]skin and bones
[MI]  Turn i..[SOL#m].nto something [FA#]beautiful,
[MI]  And you know,
[SOL#m]  For you I [FA#]bleed myself [MI]dry,

For you I bleed myself dry.
[SI]  [SI4]  [FA#6]  [FA#]  [MI6]  [MI]
[SI]  [SI4]
It''s [SI]true, [SI4]  look how they shine for [FA#6]you,
[FA#]  Look how they shine for [MI6]you
[MI]  Look how they shine for, [SI]
[SI4]  Look how they shine for [FA#6]you,
[FA#]  Look how they shine for [MI6]you,
[MI]  Look how they shine.

[SI]  Look at the stars
Look how they shine for [FA#m]you
And everything you [MI]do..', 'yellow');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#m');

