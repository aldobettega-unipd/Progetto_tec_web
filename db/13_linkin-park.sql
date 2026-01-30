-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('In The End', 'Linkin Park', 'ENG', '[MIbm]  [REb]  [SI7+]  [REb]
[MIbm]  [REb]  [SI7+]  [REb]
It starts with [MIbm]One thing I don''t know why
It [REb]doesn''t even matter how hard you try
Ke[SI7+]ep that in mind I designed this rhyme
To ex[REb]plain in due time
All I [MIbm]know Time is a valuable thing
Wa[REb]tch it fly by as the pendulum swings
Wa[SI7+]tch it count down to the end of the day
The[REb] clock ticks life away
It''[MIbm]s so unreal Didn''t look out below
W[REb]atch the time go right out the window
Tr[SI7+]ying to hold on but didn''t even know
Wa[REb]sted it all just to
Wat[MIbm]ch you go I kept everything inside
An[REb]d even though I tried it all fell apart
[SI7+]What it meant to me will eventually
Be[REb] a memory of a time when

I tried so [MIbm]hard And [SOLb]got so far
But in the [REb]end It doesn''t even [SI]matter
I had to [MIbm]fall To lose it [SOLb]all
But in the [REb]end It doesn''t even [SI]matter

[MIbm]One thing I don''t know why
It [REb]doesn''t even matter how hard you try
[SI7+]Keep that in mind I designed this rhyme
To re[REb]mind myself how
I tried so [MIbm]hard

In spite of the way you were mocking me
[REb] Acting like I was part of your property
[SI7+] Remembering all the times

you''ve fought with me
[REb] I''m surprised it got so (far)
[MIbm]Things aren''t the way they were before
[REb] You wouldn''t even recognize me anymore
[SI7+] Not that you knew me back then
But it [REb]all comes back to me

(In the end)
[MIbm]You kept everything inside
And even [REb]though I tried it all fell apart
[SI7+]What it meant to me will eventually
Be a memo[REb]ry of a time when

I tried so [MIbm]hard And [SOLb]got so far
But in the [REb]end It doesn''t even [SI]matter
I had to [MIbm]fall To lose it [SOLb]all
But in the [REb]end It doesn''t even [SI]matter

I put my[MIbm] trust in[REb] you
Pushed as [SI7+]far as I can [REb]go
And for all [MIbm]this There''s only [REb]one thing
you should [SI7+]know  [REb]

I put my [MIbm]trust in [SOLb]you
Pushed as [REb]far as I can [SI]go
And for all [MIbm]this There''s only [SOLb]one thing
you should [REb]know  [SI]

I tried so [MIbm]hard And [SOLb]got so far
But in the [REb]end It doesn''t even [SI]matter
I had to [MIbm]fall To lose it [SOLb]all
But in the [REb]end It doesn''t even [SI]matter

[MIbm]  [REb]  [MIbm]  [REb]
[MIbm]  [REb]  [MIbm]  [REb]  [MIbm]', 'in-the-end');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'MIbm'),
(@last_song_id, 'REb'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOLb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Numb', 'Linkin Park', 'ENG', '
[FA#m]  [RE]  [LA]  [MI]   [FA#m]  [RE]  [LA]  [MI]
[FA#m] I''m tired o[RE]f being what you want me to be
[LA]Feeling so fai[MI]thless lost under the surface
[FA#m] Don''t know what you''re ex[RE]pecting of me
Put [LA]under the pressure of [MI]walkin[RE7+]g in your shoes
(Caught in the undertone just [MI]caught in the undertone)
Every [FA#m]step I take[LA] is another[RE] mistake to you
(Caught in the undertone just [MI]caught in the undertone)

[FA#m]I''ve become so [RE]numb I can[LA]''t feel you there
I''ve bec[MI]ome so[FA#m] tired so much more aware
I''ve becoming [RE]this [LA]all I want to do
Is[MI] be more[FA#m] like me and be less like you

Can''t y[RE]ou see that you''re smothering me
[LA]Holding to[MI]o tightly [FA#m]afraid to lose control
Cause[RE] everything that you thought I would be
Has [LA]fallen apart r[MI]ight in front of [RE7+]you
(Caught in the undertone just [MI]caught in the undertone)
Every [FA#m]step that I take [LA]is anothe[RE]r mistake to you
(Caught in the undertone just [MI]caught in the undertone)
And[FA#m] every second I wast[LA]e is more than I can take

[FA#m]I''ve become so [RE]numb I can[LA]''t feel you there
I''ve bec[MI]ome so[FA#m] tired so much more aware
I''ve becoming [RE]this [LA]all I want to do
Is[MI] be more[RE7+] like me and be less like you

And I k[MI]now
I may [FA#m]end  [MI]up     f[LA]ail[DO#m]ing t[RE]oo
B[MI]ut I know
You were [DO#]just like me with someone disappointed in you

[FA#m]I''ve become so [RE]numb I can[LA]''t feel you there
I''ve bec[MI]ome so[FA#m] tired so much more aware
I''ve becoming [RE]this [LA]all I want to do
Is[MI] be more[FA#m] like me and be less like you
I''ve become so [RE]numb I ca[LA]n''t feel you there
(Tire[MI]d of being what you want me to be)
[FA#m]I''ve become so [RE]numb I ca[LA]n''t feel you there
(Tir[MI]ed of being what you want me to be)

[FA#m]  [RE]  [LA]  [MI]', 'numb');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#'),
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE');

