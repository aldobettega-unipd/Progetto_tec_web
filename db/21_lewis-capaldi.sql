-- File generato automaticamente
SET NAMES 'utf8mb4';


-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Before You Go', 'Lewis Capaldi', 'ENG', '[MIb] I fell by the wayside like everyone e[DOm]lse
I hate you, I hate you,
I hate you but I was just kidding mysel[LAb]f
Our every moment, I start to repla[SIb4]ce
''Cause now that they''re gone all
I hear [SIb]were the words that I needed to say
[MIb] When you hurt under the surface
[DOm] Like troubled water running c[LAb]old
Well, time can heal but this wo[SIb4]n''t     [SIb]
[MIb]So, before you [SIb6]go
Was there some[DOm]thing
I could''ve said to make your heart beat better?
If [LAb7+]only I''d have known you had a [LAb6]storm to weather

[MIb]So, before you [SIb6]go
Was there some[DOm]thing
I could''ve said to make it all stop hurting?
It [LAb7+]kills me how your mind could make you [LAb6]feel so worthless
[SIb]So, before you [MIb]go

[MIb] Was never the right time whenever you call[DOm]ed
Went little by little by little
until there was nothing at all  [LAb]
Our every moment, I start to replay[SIb4]
But all I can think ab[SIb]out is seeing
that look on your face[MIb]
When you hurt under the surfa[DOm]ce
Like troubled water running c[LAb]old
Well, time can heal but this w[SIb4]on''t   [SIb]

[MIb]So, before you [SIb6]go
Was there some[DOm]thing
I could''ve said to make your heart beat better?
If [LAb7+]only I''d have known you had a [LAb6]storm to weather
[MIb]So, before you [SIb6]go
Was there some[DOm]thing
I could''ve said to make it all stop hurting?
It [LAb7+]kills me how your mind could make you [LAb6]feel so worthless
[SIb]So, before you [DOm]go
Would we be [LAb]better off by [MIb]now
If I''d have [SIb]let my walls come [DOm]down
Maybe I [LAb]guess we''ll never [SIb]know
You know, you [MIb]know
Before you [SIb]go
Was there some[DOm]thing I could''ve said

to make your heart beat better?
If [LAb]only I''d have known you had a storm to weather
[MIb]So, before you [SIb6]go
Was there some[DOm]thing I could''ve said
to make it all stop hurting?
It [LAb7+]kills me how your mind could make you [LAb6]feel so worthless
[SIb4]So, before you [MIbadd9]go', 'before-you-go');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Someone You Loved', 'Lewis Capaldi', 'ENG', '[REb]  [LAb]  [SIbm]  [SOLb]

[REb] I''m going under and this [LAb]time
I fear there''s no one to [SIbm]save me [SOLb]
[REb] This all or nothing really [LAb]got
a way of driving me [SIbm]crazy  [SOLb]
I need somebody to [REb]heal
Somebody to [LAb]know
Somebody to [SIbm]have
Somebody to [SOLb]hold
It''s easy to [REb]say
But it''s never the [LAb]same
I guess I kinda [SIbm]liked the way
you numbed all the [SOLb]pain

Now the day bleeds[REb]
Into nightfall[LAb]
And you''re not h[SIbm]ere
To get me through it a[SOLb]ll
I let my guard do[REb]wn
And then you pulled the r[LAb]ug
I was getting kinda [SIbm]used
to being someone you [SOLb]loved

[REb] I''m going under and this [LAb]time
I fear there''s no one to [SIbm]turn to [SOLb]
[REb] This all or nothing way of [LAb]loving
got me sleeping wit[SIbm]hout you [SOLb]
Now, I need somebody to [REb]know
Somebody to [LAb]heal
Somebody to [SIbm]have
Just to know how it [SOLb]feels
It''s easy to [REb]say but it''s never the [LAb]same
I guess I kinda [SIbm]liked the way
you helped me es[SOLb]cape

Now the day bleeds[REb]
Into nightfall[LAb]
And you''re not h[SIbm]ere
To get me through it a[SOLb]ll
I let my guard do[REb]wn
And then you pulled the r[LAb]ug
I was getting kinda [SIbm]used
to being someone you [SOLb]loved

And [MIbm]I tend to [SIbm]close my eyes
when it [LAb]hurts sometimes
I fall in[REb]to your [MIbm]arms
I''ll be [SIbm]safe in your sound ''til
I [LAb]come back around

For the day bleeds[REb]
Into nightfall[LAb]
And you''re not h[SIbm]ere
To get me through it a[SOLb]ll
I let my guard do[REb]wn
And then you pulled the r[LAb]ug
I was getting kinda [SIbm]used
to being someone you [SOLb]loved
Now the day bleeds[REb]
Into nightfall[LAb]
And you''re not h[SIbm]ere
To get me through it a[SOLb]ll
I let my guard do[REb]wn
And then you pulled the r[LAb]ug
I was getting kinda [SIbm]used
to being someone you l[SOLb]oved

I let my guard d[REb]own
And then you pulled the r[LAb]ug
I was getting kinda [SIbm]used
to being someone you [SOLb]loved  [REb]', 'someone-you-loved');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LAb'),
(@last_song_id, 'MIbm'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SOLb');

