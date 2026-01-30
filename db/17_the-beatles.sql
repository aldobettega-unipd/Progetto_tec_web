-- File generato automaticamente
SET NAMES 'utf8mb4';


-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Across the Universe', 'The Beatles', 'ENG', '[REb]        [FAm]    [LAb]

[REb]Words are flowing [SIbm]out like endless [FAm]rain
into a paper cup
They [MIbm7]slither wildly as they slip a[LAb7]way
across the universe
[REb]Pools of sorrow, [SIbm]waves of joy are [FAm]drifting
through my opened mind
Po[MIbm7]ssessing and ca[SOLbm]ressing me
[REb]Jai guru deva, [LAb7]om

Nothing''s gonna change my world
[SOLb]Nothing''s gonna change my w[REb]orld
[LAb7]Nothing''s gonna change my world
[SOLb]Nothing''s gonna change my w[REb]orld

[REb]Images of [SIbm]broken light which [FAm]dance before me
like a million [MIbm7]eyes
They call me on and on a[LAb7]cross the universe
[REb]Thoughts meander [SIbm]like a restless [FAm]wind
inside a letterbox they
They [MIbm7]tumble blindly as they make their [LAb7]way
across the universe

[REb]Jai guru deva, [LAb7]om

Nothing''s gonna change my world
[SOLb]Nothing''s gonna change my w[REb]orld
[LAb7]Nothing''s gonna change my world
[SOLb]Nothing''s gonna change my w[REb]orld

[REb]Sounds of laughter [SIbm]shades of life are [FAm]ringing
Through my open ears in[MIbm7]citing and in[SOLbm]viting me
[REb]Limitless un[SIbm]dying love which [FAm]shines around me
like a million [MIbm7]suns
It calls me on and on a[LAb7]cross the universe

[REb]Jai guru deva, [LAb7]om

Nothing''s gonna change my world
[SOLb]Nothing''s gonna change my w[REb]orld
[LAb7]Nothing''s gonna change my world
[SOLb]Nothing''s gonna change my w[REb]orld

Jai guru deva  Jai guru deva
Jai guru deva  Jai guru deva...', 'across-the-universe');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIbm'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SOLb'),
(@last_song_id, 'SOLbm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('A Hard Day’s Night', 'The Beatles', 'ENG', '[REm7]

It''s been a [SOL]hard [DO]day''s [SOL]night,
and I''ve been [FA]working like a [SOL]dog
It''s been a hard [DO]day''s [SOL]night,
I should be [FA]sleeping like a [SOL]log
But when I [DO]get home to you
I find the [RE]things that you do
Will make me [SOL]feel [DO]al-[SOL]right
You know I work [DO]all [SOL]day
to get you [FA]money to buy you [SOL]things
And it''s worth it just to [DO]hear you [SOL]say
you''re going to [FA]give me every[SOL]thing
So why on [DO]earth should I moan,
cos when I [RE]get you alone
You know I [SOL]feel [DO]O--[SOL]K

When I''m [SIm]home [MIm]everything seems to be [SIm]right
When I''m [SOL]home [MIm]feeling you holding me [DO7]tight,
[RE7]tight, yeah

It''s been a [SOL]hard [DO]day''s [SOL]night,
and I''ve been [FA]working like a [SOL]dog
It''s been a hard [DO]day''s [SOL]night,
I should be [FA]sleeping like a [SOL]log
But when I [DO]get home to you
I find the [RE]things that you do
Will make me [SOL]feel [DO]al-[SOL]right owww

[SOL]  [DO]  [SOL]     [FA]    [SOL]

[SOL]  [DO]  [SOL]     [FA]    [SOL]

So why on [DO]earth should I moan,
cos when I [RE]get you alone
You know I [SOL]feel [DO]O--[SOL]K

When I''m [SIm]home [MIm]everything seems to be [SIm]right
When I''m [SOL]home [MIm]feeling you holding me [DO]tight,
[RE7]tight, yeah

It''s been a [SOL]hard [DO]day''s [SOL]night,
and I''ve been [FA]working like a [SOL]dog
It''s been a hard [DO]day''s [SOL]night,
I should be [FA]sleeping like a [SOL]log
But when I [DO]get home to you
I find the [RE]things that you do
Will make me [SOL]feel [DO]al-[SOL]right  [DO]
You know I [SOL]feel [DO]al-[SOL]right  [DO]
You know I [SOL]feel [DO]al-[SOL]right [REm7]', 'a-hard-days-night');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('All My Loving', 'The Beatles', 'ENG', 'Close your [FA#m]eyes and I''ll [SI]kiss you
To[MI]morrow, I''ll [DO#m]miss you
Re[LA]member I''ll [FA#m]always be [RE]true  [SI7]
And then [FA#m]while I''m a[SI]way
I''ll write [MI]home every [DO#m]day
And I''ll [LA]send all my [SI]lovin'' to [MI]you

I''ll pre[FA#m]tend that I''m [SI]kissing
The [MI]lips I am [DO#m]missing
And [LA]hope that my [FA#m]dreams will come [RE]true  [SI7]
And then [FA#m]while I''m a[SI]way
I''ll [MI]write home every [DO#m]day
And I''ll [LA]send all my [SI]lovin'' to [MI]you

All my [DO#m]lovin'' (Ooh), [DO#m]I will send to [MI]you
All my [DO#m]lovin'' (Ooh), [DO#m]darlin'', I''ll be [MI]true

[LA7]        [MI]        [SI9]        [MI]

Close your [FA#m]eyes and I''ll [SI]kiss you
To[MI]morrow, I''ll [DO#m]miss you
Re[LA]member I''ll [FA#m]always be [RE]true  [SI7]
And then [FA#m]while I''m a[SI]way
I''ll write [MI]home every [DO#m]day
And I''ll [LA]send all my [SI]lovin'' to [MI]you

All my [DO#m]lovin'' (Ooh), [DO#m]I will send to [MI]you
All my [DO#m]lovin'' (Ooh), [DO#m]darlin'', I''ll be [MI]true
All my [DO#m]lovin'' (Ooh), huh, all [MI]my lovin'', ooh
All my [DO#m]lovin'' (Ooh), huh, I will send t[MI]o you', 'all-my-loving');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('All You Need Is Love', 'The Beatles', 'ENG', '[SOL]Love, [RE]love,   [MIm7]love
[SOL]Love, [RE]love,   [MIm7]love
[RE7]Love,   [SOL]love, [RE]love    [RE]       [RE]    [RE7]

[SOL]  There''s nothing you can [RE]do that can''t be [MIm]done
[SOL]  There''s nothing you can [RE]sing that can''t be [MIm]sung
[RE7]  Nothing you can [SOL]say but you can [RE]learn to play the game[RE]
It''s [RE]easy [RE]       [RE7]

[SOL]  There''s nothing you can [RE]make that can''t be [MIm]made
[SOL]  No one you can [RE]save that can''t be [MIm]saved
[RE7]  Nothing you can [SOL]do but you can [RE]learn how to be you in [RE]time
It''s [RE]easy [RE]      [RE7]

[SOL]  All you [LA7]need is [RE7]love  [RE5+]
[SOL]  All you [LA7]need is [RE7]love  [RE5+]
[SOL]  All you [SI7]need is [MIm]love.. [SOL]love
[DO]  Love is [RE7]all you need [SOL]

[SOL]Love, [RE]love,   [MIm]love
[SOL]Love, [RE]love,   [MIm]love
[LAm]Love, [SOL]love, [RE]love    [RE]       [RE]    [RE]       [RE7]

[SOL]  All you [LA7]need is [RE7]love  [RE5+]
[SOL]  All you [LA7]need is [RE7]love  [RE5+]
[SOL]  All you [SI7]need is [MIm]love.. [SOL]love
[DO]  Love is [RE7]all you need [SOL]

[SOL]  There''s nothing you can [RE]know that isn''t [MIm]known
[SOL]  Nothing you can [RE]see that isn''t [MIm]shown
[RE7]  Nowhere you can [SOL]be that isn''t [RE]where you''re meant to b[RE]e
Its [RE]easy [RE]       [RE7]

[SOL]  All you [LA7]need is [RE7]love  [RE5+]
[SOL]  All you [LA7]need is [RE7]love  [RE5+]
[SOL]  All you [SI7]need is [MIm]love.. [SOL]love
[DO]  Love is [RE7]all you need [SOL]
[SOL]  All you [LA7]need is [RE7]love  [RE5+]
[SOL]  All you [LA7]need is [RE7]love  [RE5+]
[SOL]  All you [SI7]need is [MIm]love.. [SOL]love
[DO]  Love is [RE7]all you need [SOL]', 'all-you-need-is-love');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Back in the U.S.S.R.', 'The Beatles', 'ENG', '[MI7]

[LA]Flew in from Miami Beach B.[RE]O.A.C
D[DO]idn''t get to bed last n[RE]ight
[LA]On the way the paper bag was [RE]on my knee
M[DO]an, I had a dreadful fl[RE]ight
I''m back in the U.S.S.[LA]R
[DO] You don''t know how lucky you [RE]are, boy
Back in the U.S.S.[LA]R      [MI7]

[LA]Been away so long, I hardly [RE]knew the place
[DO]Gee, it''s good to be back h[RE]ome
[LA]Leave it ''til tomorrow to un[RE]pack my case
H[DO]oney, disconnect the ph[RE]one

I''m back in the U.S.S.[LA]R
[DO] You don''t know how lucky you [RE]are, boy
Back in the U.S
[SOLadd9]Back in the U.S
Back in the U.S.S.[LA]R

Well
The [RE]Ukraine girls really knock me out
They [LA]leave the West behind
And [RE]Moscow [RE]girls make me [RE]sing and [SI]shout
That [MI7]Georgia''s always on
My, my, [RE7]my, my, my, my, my, my, my m[LA]ind
[MI7]Oh, come on!

[LA]   [RE]   [DO]   [RE]   [LA]   [RE]   [DO]   [RE]

Hey, I''m back In the U.S.S.[LA]R
[DO] You don''t know how lucky you [RE]are, boys
Back in the U.S.S.[LA]R

Well
The [RE]Ukraine girls really knock me out
They [LA]leave the West behind
And [RE]Moscow [RE]girls make me [RE]sing and [SI]shout
That [MI7]Georgia''s always on
My, my, [RE7]my, my, my, my, my, my, my m[LA]ind

Oh, sh[LA]ow me ''round your snow-peaked mountains
[RE]Way down south
[DO]Take me to your daddy''s f[RE]arm
L[LA]et me hear your balalaikas r[RE]inging out
C[DO]ome and keep your comrade w[RE]arm

I''m back In the U.S.S.[LA]R
[DO] You don''t know how lucky you [RE]are, boy
Back in the U.S.S.[LA]R
Oh, let me [MI7]tell you, honey
[LA] Hey, I''m back
I''m back In the U.S.S.R
Hey, it''s so good to be home
Yeah, back In the U.S.S.R', 'back-in-the-ussr');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Don’t Let Me Down', 'The Beatles', 'ENG', '[MI]Don''t let me [FA#m]down, don''t let me [MI]down
Don''t let me [FA#m]down, don''t let me [MI]down

Nobody ever loved me like she [FA#m]does
Oh, she does, yes, she [MI]does
And if somebody loved me like she do[FA#m] me
Oh, she do me, yes, she [MI]does

Don''t let me [FA#m]down, don''t let me [MI]down
Don''t let me [FA#m]down, don''t let me [MI]down

I''m in love for the [MI]first time
Don''t you know it''s gonna [SI]last
It''s a love that lasts forever
It''s a love that had no[MI] past (Seeking past)

Don''t let me [FA#m]down, don''t let me [MI]down
Don''t let me [FA#m]down, don''t let me [MI]down

And from the first time that she really [FA#m]done me
Oh, she done me, she done me [MI]good
I guess nobody ever really [FA#m]done me
Oh, she done me, she done me [MI]good

Don''t let me [FA#m]down, don''t let me [MI]down
Don''t let me [FA#m]down, don''t let me [MI]down    [FA#m]
Don''t let me down, hey don''t let me [MI]down
Heeeee, don''t let me [FA#m]down
Don''t let me [MI]down
Don''t let me [FA#m]down, don''t let me let [MI]down', 'dont-let-me-down');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Hello, Goodbye', 'The Beatles', 'ENG', '[FA6]You say yes, [DO]I say no
[SOL7]You say stop and [LAm]I say go go [SOL7]go, [LAm]   oh [SOL7]no
You say goodbye and [FA]I say hel[DO]lo  [SOL]
Hello hel[LAm7]lo     [SOL]
I don''t know [FA]why you say good[LAb]bye, I say hel[DO]lo
[SOL]  Hello hel[LAm7]lo    [SOL]
I don''t know [FA]why you say good[SIbadd9]bye, I say [DO]hello

[FA6]I say high, [DO]you say low
[SOL7]You say why and [LAm]I say I don''t [SOL7]know, [LAm]   oh [SOL7]no
You say goodbye and [FA]I say hel[DO]lo   [SOL]
(Hello goodbye hello goodbye) Hello hel[LAm7]lo    [SOL]
(Hello goodbye) I don''t know [FA]why you say good[LAb]bye I say hel[DO]lo
[DO](Hello goodbye hello goodbye[SOL]) Hello hel[LAm7]lo
(Hello goodbye) I don''t know [FA]why you say good[SIbadd9]bye
(Hello goodbye) I say hel[DO]lo/goodbye

[FA]   .[DO]..Why why why [SOL7]why why why
do you [LAm]say goodbye good[SOL7]bye,  [LAm] oh [SOL7]no?
You say goodbye and [FA]I say hel[DO]lo  [SOL]
Hello hel[LAm7]lo     [SOL]
I don''t know [FA]why you say good[LAb]bye, I say hel[DO]lo
[SOL]    Hello hel[LAm7]lo     [SOL]
I don''t know [FA]why you say good[SIbadd9]bye, I say hel[DO]lo

[FA6]You say yes (I say yes) [DO]I say no (But I may mean no)
[SOL7]You say stop (I can stay) and [LAm]I say go go [SOL7]go (Till it''s time to go), [LAm]oh
Oh [SOL7]no
You say goodbye and [FA]I say hel[DO]lo  [SOL]
Hello hel[LAm7]lo
I don''t know [FA]why you say good[LAb]bye, I say hel[DO]lo
[SOL]   Hello hel[LAm7]lo    [SOL]
I don''t know why you [FA]say good[SIbadd9]bye, I say hel[DO]lo
[SOL]  Hello hel[LAm7]lo    [SOL]
I don''t know [FA]why you say good[LAb]bye, I say hello..[DO]. [FA#m7] [FA]
hel[DO]lo

[DO]Hela heba helloa
Hela heba helloa, cha cha cha
Hela heba helloa, wooo
Hela heba helloa, hela
Hela heba helloa, cha cha cha
Hela heba helloa, wooo
Hela heba helloa, cha cah cah', 'hello-goodbye');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LAb'),
(@last_song_id, 'LAm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Help', 'The Beatles', 'ENG', '[SIm]Help! I need some[SIm]body
[SOL]Help! Not just [SOL]anybody
[MI]Help! You know I need someone,
[LA]Help!

[LA]  When I was younger so much [DO#m]younger than today
[FA#m]  I never needed anybody''s [RE]help in [SOL]any [LA]way
But now those days are gone I''m [DO#m]not so self-assured
[FA#m]  Now I find I''ve changed my mind I''ve [RE]opened [SOL]up the [LA]door

[SIm]Help me if you can I''m feeling down
[SIm]  and I [SOL]do appreciate you being ''round[SOL]
[MI]Help me get my feet back on the ground
won''t you [LA]please please help me

And [LA]now my life has changed in [DO#m]oh so many ways
[FA#m]  My independence seemed to [RE]vanish [SOL]in the [LA]haze
But every now and then I [DO#m]feel so insecure
[FA#m]  I know that I just need you like I''ve [RE]never [SOL]done be[LA]fore

[SIm]Help me if you can I''m feeling down
[SIm]  and I [SOL]do appreciate you being ''round[SOL]
[MI]Help me get my feet back on the ground
won''t you [LA]please please help [MI]me

[LA]  When I was younger so much [DO#m]younger than today
[FA#m]  I never needed anybody''s [RE]help in [SOL]any [LA]way
But now those days are gone I''m [DO#m]not so self-assured
[FA#m]  Now I find I''ve changed my mind I''ve [RE]opened [SOL]up the [LA]door

[SIm]Help me if you can I''m feeling down
[SIm]  and I [SOL]do appreciate you being ''round[SOL]
[MI]Help me get my feet back on the ground
won''t you [LA]please please help [MI]me
Help me, help [LA]me, [LA6]oooh', 'help');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Here Comes The Sun', 'The Beatles', 'ENG', '[LA]  Here comes the sun
[RE]  here comes the [SI7]sun and I say [RE] it''s all right

[LA]  Little darling it''s been a [RE]long cold lonely [MI7]winter
[LA]  Little darling it feels like [RE]years since it''s been [MI7]here
[LA]  Here comes the sun
[RE]  here comes the [SI7]sun and I say [RE] it''s all right

[LA]  Little darling the smiles re[RE]turning to the [MI7]faces
[LA]  Little darling it feels like [RE]years since it''s been [MI7]here
[LA]  Here comes the sun
[RE]  here comes the [SI7]sun and I say [RE] it''s all right

Strumentale:
     [DO]   [SOL]   [RE]   [RE]   [LA]   [MI7]

[DO]Sun, [SOL]sun, [RE]sun,     [RE]here it [LA]comes   [MI7]
[DO]Sun, [SOL]sun, [RE]sun,     [RE]here it [LA]comes   [MI7]
[DO]Sun, [SOL]sun, [RE]sun,     [RE]here it [LA]comes   [MI7]
[DO]Sun, [SOL]sun, [RE]sun,     [RE]here it [LA]comes   [MI7]

[LA]  Little darling I feel that [RE]ice is slowly [MI7]melting
[LA]  Little darling it seems like [RE]years since it''s been [MI7]clear
[LA]  Here comes the sun
[RE]  here comes the [SI7]sun and I say [RE] it''s all right

[LA]  Here comes the sun, [RE]  here comes the [SI7]sun
it''s [LA]all right
It''s [LA]all right.', 'here-comes-the-sun');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Hey Jude', 'The Beatles', 'ENG', 'Hey [FA]Jude, don''t make it [DO]bad
take a [DO7]sad song and make it [FA]better
Re[SIb]member to let her into your [FA]heart
then you can [DO]start to [DO7]make it [FA]better
Hey [FA]Jude, don''t be a[DO]fraid
you were [DO7]made to go out and [FA]get her
The [SIb]minute you let her under your [FA]skin
then you be[DO]gin to [DO7]make it [FA]better

[FA7]  And anytime you feel the [SIb]pain, hey [REm]Jude, re[SOLm]frain
don''t carry the [DO7]world upon your [FA]shoulders
[FA7]  For well you know that it''s a [SIb]fool who [REm]plays it [SOLm]cool
by making his [DO7]world a little [FA]colder

Da da da [FA7]da da [DO7]da da da

Hey [FA]Jude, don''t let me [DO]down
you have [DO7]found her, now go and [FA]get her
Re[SIb]member to let her into your [FA]heart
then you can [DO]start to [DO7]make it [FA]better

[FA7]  So let it out and let it in[SIb],  hey [REm]Jude, be[SOLm]gin
you''re waiting for [DO7]someone to per[FA]form with
[FA7]  And don''t you know that it''s just
[SIb]you, hey [REm]Jude, you''ll [SOLm]do
the movement you [DO7]need is on your [FA]shoulders

Da da da [FA7]da da [DO7]da da da

Hey [FA]Jude, don''t make it [DO]bad
take a [DO7]sad song and make it [FA]better
Re[SIb]member to let her into your [FA]heart
then you can [DO]start to [DO7]make it [FA]better

[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude', 'hey-jude');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'MIb'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('I Feel Fine', 'The Beatles', 'ENG', '[RE7]   [DO7]   [SOL7]

[SOL7]Baby''s good to me, you know
She''s happy as can be, you know
She [RE]said so
I''m in love with [DO]her and I feel [SOL]fine
[SOL7]Baby says she''s mine, you know
She tells me all the time, you know
She [RE]said so
I''m in love with [DO]her and I feel [SOL]fine
I''m so [SIm]glad that [DO]she''s my little [RE]girl (ooh-ooh)
[SOL]She''s so [SIm]glad she''s [LAm7]telling all the [RE]world (ooh-ooh)

That her [SOL7]baby buys her things, you know
He buys her diamond rings, you know
She [RE]said so
She''s in love with [DO]me and I feel [SOL]fine

[SOL7]       [RE]
[RE7]   [DO7]   [SOL7]

[SOL7]Baby says she''s mine, you know
She tells me all the time, you know
She [RE]said so
I''m in love with [DO]her and I feel [SOL]fine
I''m so [SIm]glad that [DO]she''s my little [RE]girl (ooh-ooh)
[SOL]She''s so [SIm7]glad she''s [LAm7]telling all the [RE]world (ooh-ooh)
That her [SOL7]baby buys her things, you know
He buys her diamond rings, you know
She [RE]said so
She''s in love with [DO]me and I feel [SOL7]fine
[RE]She''s in love with [DO]me and I feel [SOL7]fine', 'i-feel-fine');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('I’ve Just Seen a Face', 'The Beatles', 'ENG', '[FA#m]        [MI] [RE] [MIm] [RE]   [RE] [MI]  [MI7]

[LA]I''ve just seen a face
I can''t forget the time or place
[LA]Where we j[FA#m]ust met
She''s just the girl for me
And I want all the world to [MI]see
We''ve [RE]met, mm..[MI].   [LA]

Had it been another day
I might have looked the other [LA]way
And [FA#m]I''d have never been aware
But as it is I''ll dream of [MI]her
To[RE]night, di-di-[MI]di-di''n''[LA]di

[MI]Fallin'', yes, I am [RE]fallin''
And she keeps [LA]callin''
[RE] Me back a[LA]gain

[LA]I have never known
The like of this, I''ve been alone
And [LA]I have  [FA#m]missed things
And kept out of sight
But other girls were never [MI]quite
Like [RE]this, di-di-[MI]di-di''n''[LA]di

[MI]Fallin'', yes, I am [RE]fallin''
And she keeps [LA]callin''
[RE] Me back ag[LA]gain

[LA]        [LA] [FA#m]        [MI] [RE]    [MI]  [LA]

[MI]Fallin'', yes, I am [RE]fallin''
And she keeps [LA]callin''
[RE] Me back a[LA]gain

[LA]I''ve just seen a face
I can''t forget the time or place
Where [LA]we  just [FA#m]met
She''s just the girl for me
And I want all the world to [MI]see
We''ve [RE]met, mm-mm-[MI]mm-di-di-[LA]di

[MI]Fallin'', yes, I am [RE]fallin''
And she keeps [LA]callin''
[RE] Me back a[LA]gain
[MI]Fallin'', yes, I am [RE]fallin''
And she keeps [LA]callin''
[RE] Me back a[LA]gain
O[MI]h, fallin'', yes, I am [RE]fallin''
And she keeps [LA]callin''
[RE] Me back again  [MI]    [LA]', 'ive-just-seen-a-face');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('I Want to Hold Your Hand', 'The Beatles', 'ENG', '[DO]  [RE]    [DO]  [RE]     [DO]  [RE]

Oh, ye[SOL]ah, I''ll tell you [RE]somethin''
[MIm] I think you''ll under[SI5]stand
When [SOL]I say that [RE]somethin''
[MIm] I want to hold your [SI5]hand
[DO] I want to [RE]hold your [SOL]hand [MIm]
[DO] I want to [RE]hold your [SOL]hand

Oh, [SOL]please, say to [RE]me
[MIm] You''ll let me be your [SI5]man
And [SOL]please, say to [RE]me
[MIm] You''ll let me hold your [SI5]hand
[DO] You''ll let me [RE]hold your [SOL]hand [MIm]
[DO] I want to [RE]hold your [SOL]hand

[REm] And when I [SOL]touch you
I feel [DO]happy in[LAm]side
[REm] It''s such a [SOL]feelin'' that my [DO]love
I can''t [RE]hide
[DO]I can''t [RE]hide
[DO]I can''t [RE]hide

Yeah, [SOL]you got that [RE]somethin''
[MIm] I think you''ll under[SI5]stand
When [SOL]I say that [RE]somethin''
[MIm] I want to hold your [SI5]hand
[DO] I want to [RE]hold your [SOL]hand [MIm]
[DO] I want to [RE]hold your [SOL]hand

[REm] And when I [SOL]touch you
I feel [DO]happy in[LAm]side
[REm] It''s such a [SOL]feelin'' that my [DO]love
I can''t [RE]hide
[DO]I can''t [RE]hide
[DO]I can''t [RE]hide

Yeah, [SOL]you got that [RE]somethin''
[MIm] I think you''ll under[SI5]stand
When [SOL]I feel that [RE]somethin''
[MIm] I want to hold your [SI5]hand
[DO] I want to [RE]hold your [SOL]hand [MIm]
[DO] I want to [RE]hold your [SI5]hand
[DO] I want to [RE]hold your [DO]hand... [SOL]', 'i-want-to-hold-your-hand');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'REm'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Let It Be', 'The Beatles', 'ENG', '[DO]  [SOL]  [LAm]  [SOL] [FA7+]  [FA6]

[DO]  [SOL]  [FA] [MIm] [REm] [DO]

When I [DO]find myself in [SOL]times of trouble
[LAm]Mother Mary [FA7+]comes to me[FA6]
[DO]Speaking words of [SOL]wisdom
Let it [FA]be  [MIm]    [REm]    [DO]
And [DO]in my hour of [SOL]darkness
she is [LAm]standing right in [FA7+]front of m[FA6]e
[DO]Speaking words of [SOL]wisdom
Let it [FA]be  [MIm]    [REm]    [DO]
[DO]Let [DO]it     [LAm]be, let it [SOL]be
let it [FA]be, let it [DO]be
[DO]Whisper words of [SOL]wisdom
Let it [FA]be  [MIm]    [REm]    [DO]

And [DO]when the broken [SOL]hearted people
[LAm]living in the [FA7+]world agree[FA6]
[DO]There will be an [SOL]answer
Let it [FA]be  [MIm]    [REm]    [DO]
But [DO]though they may be [SOL]parted
there is [LAm]still a chance that [FA7+]they will s[FA6]ee
[DO]There will be an [SOL]answer
Let it [FA]be  [MIm]    [REm]    [DO]

[DO]Let [DO]it     [LAm]be, let it [SOL]be
let it [FA]be, let it [DO]be
[DO]There will be an [SOL]answer
let it [FA]be   [MIm]    [REm]    [DO]
[DO]Let [DO]it     [LAm]be, let it [SOL]be
let it [FA]be, let it [DO]be
[DO]Whisper words of [SOL]wisdom
let it [FA]be   [MIm]    [REm]    [DO]

Strumentale:
[FA]  [MIm] [REm] [DO]    [SIb] [FA] [SOL]  [FA]  [DO]

[FA]  [MIm] [REm] [DO]    [SIb] [FA] [SOL]  [FA]  [DO]

Solo:
[DO]  [SOL]  [LAm]  [FA]  [DO]  [SOL]  [FA]  [DO]
[DO]  [SOL]  [LAm]  [FA]  [DO]  [SOL]  [FA]  [DO]

[DO]Let [DO]it     [LAm]be, let it [SOL]be
let it [FA]be, let it [DO]be
[DO]Whisper words of [SOL]wisdom
let it [FA]be  [MIm]    [REm]    [DO]

And [DO]when the night is [SOL]cloudy
there is [LAm]still a light that [FA7+]shines on m[FA6]e
[DO]Shine on till to[SOL]morrow
Let it [FA]be  [MIm]    [REm]    [DO]
I [DO]wake up to the [SOL]sound of music
[LAm]Mother [LAm7]Mary [FA7+]comes to me [FA6]
[DO]Speaking words of [SOL]wisdom
Let it [FA]be  [MIm]    [REm]    [DO]

[DO]Let [DO]it     [LAm]be, let it [SOL]be
let it [FA]be, let it [DO]be
[DO]Whisper words of [SOL]wisdom
let it [FA]be  [MIm]    [REm]    [DO]
[DO]Let [DO]it     [LAm]be, let it [SOL]be
let it [FA]be, let it [DO]be
[DO]Whisper words of [SOL]wisdom
let it [FA]be  [MIm]    [REm]    [DO]', 'let-it-be');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Norwegian Wood', 'The Beatles', 'ENG', '[MI]                       [RE] [LA] [MI]

[MI]I once had a girl, or should I say, [RE]she once [LA]had [MI]me
She showed me her room, isn''t it good, [RE]Norwe-[LA]gian [MI]wood

She [MIm]asked me to stay and she told me to sit any[LA]where
So [MIm]I looked around and I noticed there wasn''t a [FA#m]chair [SI]

[MI]I sat on a rug, biding my time, [RE]drinking [LA]her [MI]wine
We talked until two, and then she said, [RE]it''s time [LA]for [MI]bed

[MI]        [RE]  [LA] [MI]          [RE]  [LA] [MI]

She [MIm]told me she worked in the morning and started to [LA]laugh
I [MIm]told her I didn''t and crawled off to sleep in the [FA#m]bath [SI]

[MI]And when I awoke, I was alone, [RE]this bird [LA]had [MI]flown
So, I lit a fire, isn''t it good, [RE]Norwe-[LA]gian [MI]wood

[MI]        [RE]  [LA] [MI]', 'norwegian-wood');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Ob-La-Di, Ob-La-Da', 'The Beatles', 'ENG', '[FA7]     [SIb]

[SIb]Desmond has a barrow in the [FA]market place
Molly is the singer in a [SIb]band
Desmond says to Molly "girl I [MIb]like your face"
And Molly [SIb]says this as she [FA]takes him by the [SIb]hand

Ob-la-[SIb]di ob-la-da, life goes [FA6]on, br[SOLm]a!
[SIb]La-la how the [FA]life goes o[SIb]n
Ob-la-di ob-la-da life goes [FA6]on, br[SOLm]a!
[SIb]La-la how the [FA]life goes o[SIb]n

[SIb]Desmond takes a trolley to the [FA]jewellers stores
Buys a twenty carat golden [SIb]ring (Golden ring?)
Takes it back to Molly waiting [MIb]at the door
And as he [SIb]gives it to her [FA]she begins to [SIb]sing (Sing)

Ob-la-[SIb]di ob-la-da, life goes [FA6]on, br[SOLm]a!
[SIb]La-la how the [FA]life goes o[SIb]n
Ob-la-di ob-la-da life goes [FA6]on, br[SOLm]a!
[SIb]La-la how the [FA]life goes o[SIb]n

[MIb] In a couple of years they have built a home sweet [SIb]home   [SIb7]      [MIb]
With a couple of kids running in the yard
Of [SIb]Desmond and Molly [FA7]Jones (Ah ha ha ha ha ha)

[SIb]Happy ever after in the [FA]market place
Desmond lets the children lend a [SIb]hand (Arm! Leg!)
Molly stays at home and does her [MIb]pretty face
And in the [SIb]evening she still [FA]sings it with the [SIb]band

Ob-la-[SIb]di ob-la-da, life goes [FA6]on, br[SOLm]a!
[SIb]La-la how the [FA]life goes o[SIb]n
Ob-la-di ob-la-da life goes [FA6]on, br[SOLm]a!
[SIb]La-la how the [FA]life goes o[SIb]n

[MIb] In a couple of years they have built a home sweet h[SIb]ome    [SIb7]      [MIb]
With a couple of kids running in the yard
Of [SIb]Desmond and Molly [FA7]Jones (Ah ha ha ha ha ha)

Yeah, [SIb]happy ever after in the [FA]market place
Molly lets the children lend a [SIb]hand (Foot!)
Desmond stays at home and does his [MIb]pretty face
And in the [SIb]evening she''s a [FA]singer with the [SIb]band

Ob-la-[SIb]di ob-la-da, life goes [FA6]on, br[SOLm]a!
[SIb]La-la how the [FA]life goes o[SIb]n
Ob-la-di ob-la-da life goes [FA6]on, br[SOLm]a!
[SIb]La-la how the [FA]life goes o[SOLm]n
And if ya want some fun, Sing [FA7]Ob-la-di, Bla-[SIb]da!', 'ob-la-di-ob-la-da');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA'),
(@last_song_id, 'MIb'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Oh! Darling', 'The Beatles', 'ENG', '[MI7]  ...Oh [LA]darling, please be[MI]lieve me
[FA#m]I''ll never do you no [RE]harm
Be[SIm7]lieve me when I tell [MI7]you
[SIm7]I''ll never [MI7]do you no [LA]harm  [RE]      [LA]      [MI]

Oh [LA]darling, if you [MI]leave me
[FA#m]I''ll never make it a[RE]lone
Be[SIm7]lieve me when I beg [MI7]you
[SIm7]Don''t ever [MI7]leave me a[LA]lone  [RE]      [LA]      [LA7]

When you [RE]told me you didn''t [FA]need me anymore
Well, you [LA]know I nearly broke down and [LA7]cried
When you [SI7]told me you didn''t need me anymore
Well, you [MI]know I nearly broke [FA]down and [MI]died

[MI7]  ...Oh [LA]darling, if you [MI]leave me
[FA#m]I''ll never make it a[RE]lone
Be[SIm7]lieve me when I tell [MI7]you
[SIm7]I''ll never [MI7]do you no [LA]harm  [RE]      [LA]
Believe me, darlin'' [LA7]

When you [RE]told me, woo, you didn''t [FA]need me anymore
Well, you [LA]know I nearly broke down and [LA7]cried
When you [SI7]told me you didn''t need me anymore
Well, you [MI]know I nearly [FA]fell down and [MI]died

[MI7]  ...Oh [LA]darling, please be[MI]lieve me
[FA#m]I''ll never let you [RE]down
Oh, believe me, darlin''
Be[SIm7]lieve me when I [MI7]tell you
[SIm7]  I''ll never [MI7]do you no [LA]harm  [RE]      [LA]    [SIb9]     [LA9]', 'oh-darling');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('While My Guitar Gently Weeps', 'The Beatles', 'ENG', '[LAm]  [LAm]  [FA#m7]  [FA]
[LAm]  [SOL]  [RE]  [MI]

I [LAm]look at you a[LAm]ll see the [FA#m7]lover that''s [FA]sleeping
[LAm] While my gui[SOL]tar gently [RE]weeps [MI]
I [LAm]look at the f[LAm]loor and I [FA#m7]see it needs [FA]sweeping
[LAm] Still my gui[SOL]tar gently [DO]weeps  [MI]

[LA] I don''t know [DO#m]why   [FA#m]  nobody [DO#m]told you
[SIm] How to unfold your [MI]love
[LA] I don''t know [DO#m]how   [FA#m] someone con[DO#m]trolled you
[SIm] They bought and sold [MI]you

I [LAm]look at the [LAm]world and I [FA#m7]notice it''s [FA]turning
[LAm] While my gui[SOL]tar gently [RE]weeps  [MI]
With [LAm]every mi[LAm]stake we must [FA#m7]surely be [FA]learning
[LAm] Still my gui[SOL]tar gently [DO]weeps  [MI]Well...

[LAm]  [LAm]  [FA#m7]  [FA]  [LAm]  [SOL]  [RE]  [MI]
[LAm]  [LAm]  [FA#m7]  [FA]  [LAm]  [SOL]  [DO]  [MI]

[LA] I don''t know [DO#m]how   [FA#m]  you were di[DO#m]verted
[SIm] You were perverted t[MI]oo
[LA] I don''t know [DO#m]how   [FA#m] you were in[DO#m]verted
[SIm] No one alerted [MI]you

I [LAm]look at you a[LAm]ll, see the [FA#m7]love there that''s [FA]sleeping
[LAm] While my gui[SOL]tar gently w[RE]eeps   [MI]
[LAm] Look at you [LAm]all      [FA#m7]          [FA]
[LAm] Still my gui[SOL]tar gently [DO]we---[MI]-eps...

[LAm]  [LAm]  [FA#m7]  [FA]  [LAm]  [SOL]  [RE]  [MI]
[LAm]  [LAm]  [FA#m7]  [FA]  [LAm]  [SOL]  [DO]  [MI]', 'while-my-guitar-gently-weeps');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Yellow Submarine', 'The Beatles', 'ENG', 'In the [RE]town where [DO]I was [SOL]born
[MIm]Lived a [LAm]man who [DO]sailed to [RE7]sea
[SOL]And he [RE]told us [DO]of his [SOL]life
[MIm]In the [LAm]land of [DO]submari[RE7]nes
[SOL]So we [RE]sailed up [DO]to the [SOL]sun
[MIm]Till we [LAm]found the [DO]sea of [RE7]green
[SOL]And we [RE]lived be[DO]neath the [SOL]waves
[MIm]In our [LAm]yellow [DO]subma[RE7]rine

[SOL]We all live in a [RE]yellow submarine
Yellow submarine, [SOL]yellow submarine
We all live in a [RE]yellow submarine
Yellow submarine, [SOL]yellow submarine

And our [RE]friends are [DO]all on [SOL]board
[MIm]Many [LAm]more of them [DO]live next [RE7]door
[SOL]And the [RE]band b[DO]egins to [SOL]play ..[RE7].

[SOL]We all live in a [RE]yellow submarine
Yellow submarine, [SOL]yellow submarine
We all live in a [RE]yellow submarine
Yellow submarine, [SOL]yellow submarine

[RE]  [DO] [SOL]  [MIm] [LAm]  [DO] [RE7]
[SOL] [RE]  [DO] [SOL]  [MIm] [LAm]  [DO] [RE7]

[SOL]As we [RE]live a [DO]life of [SOL]ease
[MIm]Ever[LAm]yone of us has [DO]all we [RE7]need
[SOL]Sky of [RE]blue and [DO]sea of [SOL]green
[MIm]In our [LAm]yellow [DO]subma[RE7]rine

[SOL]We all live in a [RE]yellow submarine
Yellow submarine, [SOL]yellow submarine
We all live in a [RE]yellow submarine
Yellow submarine, [SOL]yellow submarine
[SOL]We all live in a [RE]yellow submarine
Yellow submarine, [SOL]yellow submarine
We all live in a [RE]yellow submarine
Yellow submarine, [SOL]yellow submarine', 'yellow-submarine');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Yesterday', 'The Beatles', 'ENG', '[FA]

[FA]Yesterday,[MIm7]  All my [LA7]troubles seemed so [REm]far away, [REm]
[SIb]  Now it [DO]looks as though they''re [FA]here to stay,
Oh, [REm]I bel[SOL7]ieve in [SIb]yester[FA]day.
[FA]Suddenly,[MIm7]  I''m not [LA7]half the man I [REm]used to be [REm]
[SIb]  There''s a [DO]shadow hanging [FA]over me,
Oh, [REm]yester[SOL7]day came [SIb]sudden[FA]ly.

[LA]Why   [LA7]she   [REm]had [DO]to [SIb]go,
[REm]I don''t [SOLm6]know, she [DO7]wouldn''t [FA]say.
[LA]I   [LA7]said [REm]some[DO]thing [SIb]wrong,
[REm]Now I [SOLm6]long for [DO7]yester[FA]day.

[FA]Yesterday,[MIm7]  Love was [LA7]such an easy [REm]game to play, [REm]
[SIb]  Now I [DO]need a place to [FA]hide away,
Oh, [REm]I bel[SOL7]ieve in [SIb]yester[FA]day.

[LA]Why   [LA7]she   [REm]had [DO]to [SIb]go,
[REm]I don''t [SOLm6]know, she [DO7]wouldn''t [FA]say.
[LA]I   [LA7]said [REm]some[DO]thing [SIb]wrong,
[REm]Now I [SOLm6]long for [DO7]yester[FA]day.

[FA]Yesterday,[MIm7]  Love was [LA7]such an easy [REm]game to play, [REm]
[SIb]  Now I [DO]need a place to [FA]hide away,
Oh, [REm]I bel[SOL7]ieve in [SIb]yester[FA]day.
Humm Hum-[REm]mm Humm [SOL7]Humm [SIb]Humm-mm [FA]Humm', 'yesterday');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'FA'),
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'REm'),
(@last_song_id, 'SIb'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SOLm');