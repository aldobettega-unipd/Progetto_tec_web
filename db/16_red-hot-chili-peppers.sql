-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Californication', 'Red Hot Chili Peppers', 'en', '[LAm]Psychic spies from China
Try to [FA]steal your mind''s elation
And [LAm]little girls from Sweden
Dreams of [FA]silver screen quotation
And [DO]if you want these [SOL]kind of dreams
It''s [FA]Californi[REm]cation  [LAm]     [FA]    [LAm]     [FA]
It''s the[LAm] edge of the world
And all of [FA]western civilization
The [LAm]sun may rise in the East
At least it [FA]settles in the final location
It''s [DO]understood that [SOL]Hollywood
Sells [FA]Californi[REm]cation  [LAm]     [FA7+]      [LAm]     [FA7+]
[LAm]Pay your surgeon very well
To [FA7+]break the spell of aging
Ce[LAm]lebrity skin is this your chin
Or [FA7+]is that war your waging
[LAm]  First born uni[FA7+]corn
[LAm]  Hard core soft [FA7+]porn

[DO]Dream of Cali[SOL]forni[REm]cation  [LAm]
[DO]Dream of Cali[SOL]forni[REm]cation
[LAm]  [FA]  [LAm]  [FA]

[LAm]Marry me girl be my fairy to the world
Be my [FA]very own constellation
A [LAm]teenage bride with a baby inside
Getting [FA]high on information
And [DO]buy me a star on the [SOL]boulevard
It''s [FA]Californi[REm]cation  [LAm]     [FA]    [LAm]     [FA]
[LAm]Space may be the final frontier
But it''s [FA]made in a Hollywood basement
[LAm]Cobain can you hear the spheres
Singing [FA]songs off station to station
And [DO]Alderaan''s not [SOL]far away
It''s [FA]Californi[REm]cation [LAm]     [FA7+]      [LAm]     [FA7+]
[LAm]Born and raised by those who praise
Con[FA7+]trol of population [LAm]everybody''s been there and
I [FA7+]don''t mean on vacation [LAm]
First born uni[FA7+]corn   [LAm]
Hard core soft [FA7+]porn

[DO]Dream of Cali[SOL]forni[REm]cation  [LAm]
[DO]Dream of Cali[SOL]forni[REm]cation
[DO]Dream of Cali[SOL]forni[REm]cation  [LAm]
[DO]Dream of Cali[SOL]forni[REm]cation

[FA#m]  [RE]  [FA#m]  [RE]
[SIadd9]  [RE]  [LA]  [MI]  [FA#m]  [RE]  [FA#m]  [RE]
[SIadd9]  [RE]  [LA]  [MI]  [SIadd9]  [RE]  [LA]  [MI]
[SIadd9]  [RE]  [LA]  [MI]
[LAm]  [FA]  [LAm]  [FA]
Des[LAm]truction leads to a very rough road
But it [FA]also breeds creation
And [LAm]earthquakes are to a girl''s guitar
They''re [FA]just another good vibration
And [DO]tidal waves couldn''t [SOL]save the world
From [FA]Californi[REm]cation  [LAm]     [FA7+]      [LAm]     [FA7+]
[LAm]Pay your surgeon very well
To [FA7+]break the spell of aging
[LAm]Sicker than the rest

There is no test
But [FA7+]this is what you''re craving
[LAm]  First born uni[FA7+]corn
[LAm]  Hard core soft [FA7+]porn

[DO]Dream of Cali[SOL]forni[REm]cation  [LAm]
[DO]Dream of Cali[SOL]forni[REm]cation
[DO]Dream of Cali[SOL]forni[REm]cation  [LAm]
[DO]Dream of Cali[SOL]forni[REm]cation', 'californication');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Can’t Stop', 'Red Hot Chili Peppers', 'en', '[MIm] Can''t stop, addicted to the shindig
[RE] Chop top, he says I''m gonna win big
[SIm] Choose not a life of imitation
[DO]Distant cousin to the reservation
[MIm] Defunkt the pistol that you pay for
[RE] This punk, the feeling that you stay for
[SIm] In time, I want to be your best friend
[DO]East Side love is living on the West End
[MIm] Knocked out, but boy you better come to
[RE] Don''t die, you know the truth as some do
[SIm] Go write your message on the pavement
[DO]Burn so bright, I wonder what the wave meant
[MIm] White heat is screaming in the jungle
[RE] Complete the motion if you stumble
[SIm] Go ask the dust for any answers
[DO]Come back strong with 50 belly dancers

The [SOL]world I love
[RE]The tears I drop
To [SIm]be part of
[DO7+]The wave can''t stop
[SOL]Ever w[RE]onder if it''s [SIm]all for [DO7+]you
The [SOL]world I love
[RE]The trains I hop
To [SIm]be part of
[DO7+]The wave can''t stop
[SOL]Come and tell [RE]me when it''s [SIm]time [DO7+]to

[MIm] Sweetheart is bleeding in the snow cone
[RE] So smart, she''s leading me to ozone
[SIm] Music, the great communicator
[DO]Use two sticks to make it in the nature
[MIm] I''ll get you into penetration
[RE] The gender of a generation
[SIm] The birth of every other nation
[DO]Worth your weight the gold of meditation
[MIm] This chapter''s gonna be a close one
[RE] Smoke rings, I know you''re gonna blow one
[SIm] All on a spaceship persevering
[DO]Use my hands for everything but steering
[MIm] Can''t stop, the spirits when they need you
[RE] Mop tops are happy when they feed you
[SIm] J. Butterfly is in the treetop
[DO]Birds that blow the meaning into bebop

The [SOL]world I love
[RE]The tears I drop
To [SIm]be part of
[DO7+]The wave can''t stop
[SOL]Ever w[RE]onder if it''s [SIm]all for [DO7+]you
The [SOL]world I love
[RE]The trains I hop
To [SIm]be part of
[DO7+]The wave can''t stop
[SOL]Come and tell [RE]me when it''s [SIm]time [DO7+]to

[MIm] Wait a minute I''m [RE]passing out
Win or [SIm]lose, just like y[DO]ou
[MIm]Far more shocking
Than [RE]anything I ever k[SIm]new
How ''bout y[DO]ou
[MIm]10 more reasons
Why [RE]I need somebody n[SIm]ew, just like y[DO]ou
[MIm]Far more shocking
Than [RE]anything I ever k[SIm]new
Right on c[DO]ue

[MIm]  [RE]  [SIm]  [DO]
[MIm] Can''t stop, addicted to the shindig
[RE] Chop top, he says I''m gonna win big
[SIm] Choose not a life of imitation
[DO]Distant cousin to the reservation
[MIm] Defunkt, the pistol that you pay for
[RE] This punk, the feeling that you stay for
[SIm] In time, I want to be your best friend
[DO]East Side love is living on the West End
[MIm] Knocked out, but boy you better come to
[RE] Don''t die you know the truth as some do
[SIm] Go write your message on the pavement
[DO]Burn so bright, I wonder what the wave meant
[MIm] Kick start the golden generator
[RE] Sweet talk, but don''t intimidate her
[SIm] Can''t stop the gods from engineering
[DO]Feel no need for any interfering
[MIm] Your image in the dictionary
[RE] This life is more than ordinary
[SIm] Can I get 2 maybe even 3 of these
[DO]Comin'' from space

To teach you of the Pleiades
Can''t stop the spirits when they need you
This life is more than just a read-through', 'cant-stop');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Otherside', 'Red Hot Chili Peppers', 'en', '[LAm] How long how [FA]long will I [DO]slide
[SOL]Separate my [LAm]si--[FA]de I [DO]don''t
I [SOL]don''t believe it''s [LAm]bad  [FA]
[DO]Slit my throat
It''s [SOL]all I ever

[LAm] I heard your voice through a [MIm]photograph
[LAm] I thought it up it brought [MIm]up the past
[LAm] Once you know you can [MIm]never go back
I''ve got to [SOL]take it on the [LAm]otherside

[LAm] Centuries are what it m[MIm]eant to me
[LAm] A cemetery where I [MIm]marry the sea
[LAm] Stranger things could never [MIm]change my mind
I''ve got to [SOL]take it on the [LAm]otherside
[SOL]Take it on the [LAm]otherside
[SOL]Take it on
[LAm]Take it on

[LAm] How long how [FA]long will I [DO]slide
[SOL]Separate my [LAm]si--[FA]de I [DO]don''t
I [SOL]don''t believe it''s [LAm]bad  [FA]
[DO]Slit my throat
It''s [SOL]all I ever

[LAm] Pour my life into a [MIm]paper cup
[LAm] The ashtray''s full and I''m [MIm]spillin'' my guts
[LAm] She wants to know am I [MIm]still a slut
I''ve got to [SOL]take it on the [LAm]otherside

[LAm] Scarlet starlet and she''s [MIm]in my bed
[LAm] A candidate for my [MIm]soul mate bled
[LAm] Push the trigger and [MIm]pull the thread
I''ve got to [SOL]take it on the [LAm]otherside
[SOL]Take it on the [LAm]otherside
[SOL]Take it on
[LAm]Take it on

[LAm] How long how [FA]long will I [DO]slide
[SOL]Separate my [LAm]si--[FA]de I [DO]don''t
I [SOL]don''t believe it''s [LAm]bad  [FA]
[DO]Slit my throat
It''s [SOL]all I ever

[MI5]  [DO7+]  [MI5]  [DO7+]
[MI5] Turn me on take me for a hard ride
[DO7+] Burn me out leave me on the otherside
[MI5] I yell and tell it that It''s not my friend
I [DO7+]tear it down I tear it down

And then it''s born again
[LAm]  [FA]  [DO]  [SOL]

[LAm] How long how [FA]long will I [DO]slide
[SOL]Separate my [LAm]si--[FA]de I [DO]don''t
I [SOL]don''t believe it''s [LAm]bad  [FA]
[DO]Slit my throat
It''s [SOL]all I [LAm]ever [FA]
How [DO]long I [SOL]don''t believe it''s [LAm]bad  [FA]
[DO]Slit my throat
It''s [SOL]all I ever  [LAm]', 'otherside');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Scar Tissue', 'Red Hot Chili Peppers', 'en', '
[FA]  [DO]  [REm]  [DO]  [FA]  [DO]  [REm]
[FA]  Scar tissue that I wish you saw
[REm]  Sarcastic mister know it all
[FA]  Close your eyes and I''ll kiss you ''cause
[REm]  With the birds I''ll share

[FA]  With the birds I''ll share
This [REm]lonely view
[FA]  With the birds I''ll share
This [REm]lonely view

[FA]  Push me up against the wall
[REm]  Young Kentucky girl in a push-up bra
[FA]  Fallin'' all over myself
To [REm]lick your heart and taste your health ''cause

[FA]  With the birds I''ll share
This [REm]lonely view
[FA]  With the birds I''ll share
This [REm]lonely view

[FA]  Blood loss in a bathroom stall
[REm]  Southern girl with a scarlet drawl
[FA]  Wave goodbye to ma and pa ''cause
[REm]  With the birds I''ll share

[FA]  With the birds I''ll share
This [REm]lonely view
[FA]  With the birds I''ll share
This [REm]lonely view

[FA]  Soft spoken with a broken jaw
[REm]  Step outside but not to brawl
[FA]  Autumn''s sweet we call it fall
I''ll [REm]make it to the moon if I have to crawl and

[FA]  With the birds I''ll share
This [REm]lonely view
[FA]  With the birds I''ll share
This [REm]lonely view

[FA]  Scar tissue that I wish you saw
[REm]  Sarcastic mister know it all
[FA]  Close your eyes and I''ll kiss you ''cause
[REm]  With the birds I''ll share

[FA]  With the birds I''ll share
This [REm]lonely view
[FA]  With the birds I''ll share
This [REm]lonely view', 'scar-tissue');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'REm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Under The Bridge', 'Red Hot Chili Peppers', 'en', 'None
[LAm]yeah, [SOL]yeah,[FA] yeah  [LA]
oh [LAm]no, no, no, [SOL]yeah, [FA]yeah
[LA]love [LAm]me, i say, [SOL]yeah [FA]yeah  [MI7]     [SOL]

[LA]under the bridge down[LAm7]town
[SOL]...is where I dr[FA7+]ew some blood
[LA]under the bridge down[LAm7]town
[SOL]...I could not ge[FA7+]t enough
[LA]under the bridge down[LAm7]town
[SOL]...forgot abo[FA7+]ut my love
[LA]under the bridge down[LAm7]town
[SOL]...I gave my li[FA7+]fe away

[LA]way, [LAm7]yeah, [SOL6]yeah,  [FA7+]yeah
[LA]oh [LAm7]no, no, no, no, [SOL6]yeah,  [FA7+]yeah
[LA]Oh [LAm7+]no, i say, [SOL6]yeah  [FA7+]yeah
[LA]yeah[LAm7+] yeah     [SOL6]       [FA7+]
[LA]  [LAm7]  [SOL6]  [FA7+]   [LA]  [LAm7]  [SOL6]  [FA7+]
[LA]  [LAm7]  [SOL6]  [FA7+]   [LA]  [LAm7]  [SOL6]  [FA7+]  [LA]', 'under-the-bridge');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'SOL');

