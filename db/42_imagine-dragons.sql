-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Bad Liar', 'Imagine Dragons', 'ENG', '[MIbadd9]

Oh, [MIb]hush, my dear, it''s been a difficult year
And [DOm7]terrors don''t prey on innocent victims
[LAb] Trust me, darlin''[SIb], trust me, darlin'' [MIb]
It''s been a loveless year, I''m a man of three fears
In[DOm7]tegrity, faith and crocodile tears
[LAb] Trust me, darlin''[SIb], trust me, darlin''[MIb]

So look me in the [DOm]eyes, tell me what you [LAb]see
Perfect para[MIb]dise tearing at the [SIb]seams
I wish I could es[DOm]cape, I don''t wanna [LAb]fake
I wish I could e[MIb]rase it, make your heart believe
But I''m a bad lia[DOm]r, bad li[LAb]ar
Now you k[MIb]now, now you k[SIb6]now
I''m a bad l[DOm]iar, bad l[LAb]iar
Now you k[MIb]now, you''re free to g[SOLm]o

[MIb]All my dreams never mean one thing
[DOm7]Does happiness lie in a diamond ring?
O[LAb]h, I''ve been askin'' for
O[SIb]h, I''ve been askin'' for p[MIb]roblems

Problems, problems
I wage my war on the world inside
I [DOm7]take my gun to the enemy''s side
O[LAb]h, I''ve been askin'' for (trust me, darlin'')
O[SIb]h, I''ve been askin'' for (trust me, darlin'') [MIb]problems

Problems, problems

So look me in the [DOm]eyes, tell me what you [LAb]see
Perfect para[MIb]dise tearing at the [SIb]seams
I wish I could es[DOm]cape, I don''t wanna [LAb]fake
I wish I could e[MIb]rase it, make your heart believe
But I''m a bad li[DOm]ar, bad li[LAb]ar
Now you k[MIb]now, now you k[SIb6]now
I''m a bad l[DOm]iar, bad li[LAb]ar
Now you k[MIb]now, you''re free to g[SOLm]o

[LAbadd9]I can''t breathe, [SIb]I can''t be
[SOL]I can''t be what you [DOm]want me to [SIb]be    [LAbadd9]
Believe me this one time
Bel[SIb]ieve me

I''m a bad l[DOm]iar, bad l[LAb]iar
Now you kn[MIb]ow, now you kn[SIb6]ow
I''m a bad l[DOm]iar, bad l[LAb]iar
Now you k[MIb]now, you''re free to go
[DOm]Oh-oh-o[LAb]h... [MIb]     [SIb]

[DOm]  Please be[LAb]lieve me
Please bel[MIb]ieve me  [SIb]', 'bad-liar');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Believer', 'Imagine Dragons', 'ENG', '[SIbm]First things first
I''mma say all the words inside my [SOLb]head
I''m fired up and [FA7]tired of
the way that things have [SIbm]been, oh ooh
The way that things have [SOLb]been, oh [FA7]ooh
[SIbm]Second things second
Don''t you tell me what you think that I could [SOLb]be
I''m the one at the [FA7]sail
I''m the master of my [SIbm]sea, oh ooh
The master of my [SOLb]sea, oh [FA7]ooh
I was [SIbm]broken from a young age

Taking my sulking to the masses
Writing my [SOLb]poems for the few
That look at me, [FA7]took to me, shook to me, feeling me
Singing from [SIbm]heartache from the pain

Taking my message from the veins
Speaking my [SOLb]lesson from the brain
Seeing the [FA7]beauty through the...

[SIbm]  Pain! You made me a, you made me a
be[SOLb]liever, be[FA7]liever
[SIbm]  Pain! You break me down, you build me up
be[SOLb]liever, be[FA7]liever
[SIbm]Pain!
Oh let the bullets fly, oh let them [SOLb]rain
My [FA7]life, my love, my drive, it came from...
[SIbm] Pain! You made me a, you made me a
be[SOLb]liever, be[FA7]liever

[SIbm]Third things third
Send a prayer to the ones up a[SOLb]bove

All the hate that you''ve heard has turned
your spirit to a [SIbm]dove, oh ooh
Your spirit up a[SOLb]bove, oh [FA7]ooh
I was [SIbm]choking in the crowd

Building my rain up in the cloud
Falling like [SOL]ashes to the ground
Hoping my [FA7]feelings, they would drown
But they [SIbm]never did, ever lived, ebbing and flowing

Inhibited, limited
Till it broke open and [SOLb]rained down
And rained [FA7]down, like...

[SIbm]  Pain! You made me a, you made me a
be[SOLb]liever, be[FA7]liever
[SIbm]  Pain! You break me down, you build me up
be[SOLb]liever, be[FA7]liever
[SIbm]Pain!
Oh let the bullets fly, oh let them [SOLb]rain
My [FA7]life, my love, my drive, it came from...
[SIbm] Pain! You made me a, you made me a
be[SOLb]liever, be[FA7]liever

[SIbm]Last things last
By the grace of the fire and the [SOLb]flames
You''re the face of the [FA7]future
the blood in my [SIbm]veins, oh ooh
The blood in my [SOLb]veins, oh [FA7]ooh
But they [SOLb]never did, ever lived, ebbing and flowing

Inhibited, limited
Till it broke open and [LAb]rained down
And [LAdim]rained down, like...

[SIbm]  Pain! You made me a, you made me a
be[SOLb]liever, be[FA7]liever
[SIbm]  Pain! You break me down, you build me up
be[SOLb]liever, be[FA7]liever
[SIbm]Pain!
Oh let the bullets fly, oh let them [SOLb]rain
My [FA7]life, my love, my drive, it came from...
[SIbm] Pain! You made me a, you made me a
be[SOLb]liever, be[FA7]liever', 'believer');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOLb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Enemy', 'Imagine Dragons', 'ENG', '[SOL]      [FA#]

I [SOL]wake up to the sounds of the silence that allows
For my [FA#]mind to run around

with my ear up to the ground
I''m [SOL]searching to behold the stories that are told
When my [FA#]back is to the world

that was smiling when I turned
[SOL]Tell you you''re the gr[FA#]eatest
But [SOL]once you turn they h[FA#]ate us
[SOL] Oh, the misery
[FA#]Everybody wants to be my enemy
[SOL] Spare the sympathy
[FA#]Everybody wants to be my enemy[SOL]
[FA#] (Look out for yourself)
My enemy[SOL] (look, look, look, look)
[FA#] (Look out for yourself)

But I''m ready

Your [SOL]words up on the wall

as you''re praying for my fall
And the [FA#]laughter in the halls and the names

that I''ve been called
I [SOL]stack it in my mind

and I''m waiting for the time
When I [FA#]show you what it''s like

to be words spit in a mic
[SOL]Tell you you''re the gr[FA#]eatest
But [SOL]once you turn they h[FA#]ate us  (Huh)

[SOL]  Oh, the misery
[FA#]Everybody wants to be my enemy
[SOL] Spare the sympathy
[FA#]Everybody wants to be
My enemy[SOL] (look, look, look, look)
[FA#] (Look out for yourself)
My enem[SOL]y (look, look, look, look) (yeah)
[FA#] (Look out for yourself)

Uh, look

Okay, I''m [SOL]hoping that somebody pray for me

I''m praying that somebody hope for me
I''m [FA#]staying where nobody ''posed to be
P-P-Posted, being a wreck of emotion[SOL]s

Ready to go whenever, just let me know

The road is long, so put the pedal into the floor
The [FA#]enemy on my trail, my energy unavailable

I''ma tell ''em hasta luego
[SOL]I know they wanna plot on my trot to the top

I''ve been outta shape, thinkin'' out the box,

I''m an astronaut
[FA#]I blasted off the planet rock to cause catastrophe
And it matters more because [SOL]I had it not

Had I thought about wreaking havoc on an opposition
Kinda shocking they [FA#]wanted static with precision,

I''m automatic

Quarterback, I ain''t talkin'' sacking

Pack it, pack it up, I don''t panic

Batter, batter up, who the baddest?

It don''t matter ''cause we at ya throat

[FA#]Everybody wants to be my enemy
[SOL] Spare the sympathy
[FA#]Everybody wants to be
My enem[SOL]y   Oh, the misery
[FA#]Everybody wants to be my enemy
[SOL] Spare the sympathy
[FA#]Everybody wants to be my enemy
[SOL]Pray it away, I swear
I''ll never be a [FA#]saint, no way

My enemy
[SOL]Pray it away, I swear
I''ll never be a [FA#]saint', 'enemy');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Monster', 'Imagine Dragons', 'ENG', '[FAm]   [MIb]

[FAm] Ever since [LAb]I could remembe[MIb]r
Every[SIb]thing inside of [FAm]me
Just [LAb]wanted to fit [MIb]in (oh, [SIb]oh, oh, [FAm]oh)
I was never [LAb]one for pretend[MIb]ers
Everythin[SIb]g I tried to b[FAm]e
Just [LAb]wouldn''t settle i[MIb]n (oh, o[SIb]h, oh, [FAm]oh)
If I told you [LAb]what I was[MIb]
Would you turn your [SIb]back on me?
[FAm] And if I seem [LAb]dangerous
[MIb] Would you be [SIb]scared?
[FAm] I get the feeling [LAb]just because
[MIb]Everything I touch isn''t [SIb]dark enough
[FAm] If this [LAb]problem lies in [MIb]me

I''m [FAm]only a m[LAb]an with a c[MIb]andle to g[SIb4]uide me
I''m [FAm]taking a s[LAb]tand to es[MIb]cape what''s in[SIb4]side me
A [FAm]monster, a [LAb]monster
I''ve [MIb]turned into a [SIb4]monster
A [FAm]monster, a [LAb]monster
And [MIb]it keeps getting stronger

[FAm] Can I [LAb]clear my consci[MIb]ence
If I''m [SIb]different from the r[FAm]est
Do I [LAb]have to run and [MIb]hide? (Oh, [SIb]oh, oh, [FAm]oh)
I never [LAb]said that I want th[MIb]is
This [SIb]burden came to m[FAm]e
And it''s [LAb]made it''s home in[MIb]side (oh, [SIb]oh, oh, [FAm]oh)
If I told you [LAb]what I was[MIb]
Would you turn your [SIb]back on me?
[FAm] And if I seem [LAb]dangerous
[MIb] Would you be [SIb]scared?
[FAm] I get the feeling [LAb]just because
[MIb]Everything I touch isn''t [SIb]dark enough
[FAm] If this [LAb]problem lies in [MIb]me

I''m [FAm]only a m[LAb]an with a c[MIb]andle to g[SIb4]uide me
I''m [FAm]taking a s[LAb]tand to es[MIb]cape what''s in[SIb4]side me
A [FAm]monster, a [LAb]monster
I''ve [MIb]turned into a [SIb4]monster
A [FAm]monster, a [LAb]monster
And [MIb]it keeps getting stronger

[FAm]  [LAb]  [MIb]  [SIb4]  [FAm]  [LAb]  [MIb]  [SIb4]

[FAm]  [LAb]  [MIb]  [SIb4]  [FAm]  [LAb]  [MIb]  [SIb4]

[FAm]  [LAb]  [MIb]  [SIb4]  [FAm]  [LAb]  [MIb]  [SIb4]

[FAm]  [LAb]  [MIb]  [SIb4]  [FAm]  [LAb]  [MIb]  [SIb4]

I''m [FAm]only a m[LAb]an with a c[MIb]andle to g[SIb4]uide me
I''m [FAm]taking a s[LAb]tand to es[MIb]cape what''s in[SIb4]side me
A [FAm]monster, a [LAb]monster
I''ve [MIb]turned into a [SIb4]monster
A [FAm]monster, a [LAb]monster
And [MIb]it keeps getting [SIb4]stronger

[FAm]  [LAb]  [MIb]  [SIb4]', 'monster');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb');

