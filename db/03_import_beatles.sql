-- File generato automaticamente per il database 'miosito'
SET NAMES 'utf8mb4';

-- 1. Inserimento Artista
INSERT INTO artista (nome_artista, descrizione_artista, slug_artista) VALUES 
('The Beatles', 'Canzoni e accordi di The Beatles', 'the-beatles')
ON DUPLICATE KEY UPDATE nome_artista=nome_artista;

-- 2. Inserimento Canzoni
INSERT INTO canzone (titolo_canzone, autore_canzone, descrizione_canzone, testo_canzone, slug_canzone) VALUES 
('A Day in the Life', 'The Beatles', 'Testo e accordi di A Day in the Life di The Beatles', 'Intro:
[SOL]     [SIm]     [MIm]     [MIm7]      [DO]   
[SOL] I read the [SIm]news today, o[MIm]h boy  [MIm]       
[DO] About a [MIm]lucky man who [LAadd9]made the grade[LAm]    
[SOL] And though the [SIm]news was rather [MIm]sad   [MIm]       
[DO] Well, I just [FA]had to laugh[MIm]     [MIm]       
[DO] I saw the [FA]photograph [MIm]     [DO]   
[SOL] He blew his [SIm]mind out in a [MIm]car  [MIm]       
[DO] He didn''t [MIm]notice that the [LAadd9]lights had changed [LAm]    
[SOL] A crowd of [SIm]people stood and [MIm]stared  [MIm]       
[DO] They''d seen his [FA]face before 
[MIm] Nobody was really sure  
if [MIm]he was from the House of [DO]Lords 

[SOL] I saw a [SIm]film today, oh[MIm] boy  [MIm]       
[DO] The English [MIm]army had just [LAadd9]won the war[LAm]    
[SOL] A crowd of [SIm]people turned a[MIm]way  [MIm]       
[DO] But I just [FA]had to look  [MIm]    
Having [MIm]read the [DO]book 
I''d love to [SIm]turn [SOL]you [LAm9]on... [SI4]     [DO]    [REadd9]            

Woke [MI]up, fell out of bed 
Dragged a comb across my [RE]head 
Found my [MI]way downstairs and [FA#m7]drank a cup 
And [MI]looking up, I [LA6]noticed I was late 
Found my [MI]coat and grabbed my hat 
Made the bus in seconds [RE]flat 
Found my [MI]way upstairs and [FA#m7]had a smoke 
And [MI]somebody spoke and I [LA6]went into a dream     

[DO]     [SOL]      [RE]     [LA]     [MI]   
[DO]     [SOL]      [RE]     [LA]     [MIm]     [RE]   [DO]    [RE]   
[SOL] Ah I read the [SIm]news today, oh[MIm7] boy   [SOL]       
[DO] Four thousand [MIm]holes in Blackburn, [LAadd9]Lancashire[LAm]    
[SOL] And though the [SIm]holes were rather [MIm7]small   [SOL]       
[DO] They had to [FA]count them all 
[MIm]Now they know how many holes it [SOL]takes  
to fill the Albert [DO]Hall 
I''d love to [SIm]turn [SOL]you [LAmadd9]on...   [SI4]     [DO]    [REadd9]          
 
', 'a-day-in-the-life'),
('A Hard Day’s Night', 'The Beatles', 'Testo e accordi di A Hard Day’s Night di The Beatles', 'Intro:
[REm7]       
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

[SOL]     [DO]    [SOL]        [FA]      [SOL]    
[SOL]     [DO]    [SOL]        [FA]      [SOL]    
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
You know I [SOL]feel [DO]al-[SOL]right [REm7]       
 
', 'a-hard-days-night'),
('Across the Universe', 'The Beatles', 'Testo e accordi di Across the Universe di The Beatles', 'Intro:
[REb]           [FAm]       [LAb]    
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
Jai guru deva  Jai guru deva...
 
', 'across-the-universe'),
('All My Loving', 'The Beatles', 'Testo e accordi di All My Loving di The Beatles', '
Close your [FA#m]eyes and I''ll [SI]kiss you 
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

[LA7]           [MI]          [SI9]           [MI]   
Close your [FA#m]eyes and I''ll [SI]kiss you 
To[MI]morrow, I''ll [DO#m]miss you 
Re[LA]member I''ll [FA#m]always be [RE]true  [SI7]    
And then [FA#m]while I''m a[SI]way 
I''ll write [MI]home every [DO#m]day  
And I''ll [LA]send all my [SI]lovin'' to [MI]you 

All my [DO#m]lovin'' (Ooh), [DO#m]I will send to [MI]you 
All my [DO#m]lovin'' (Ooh), [DO#m]darlin'', I''ll be [MI]true 
All my [DO#m]lovin'' (Ooh), huh, all [MI]my lovin'', ooh 
All my [DO#m]lovin'' (Ooh), huh, I will send t[MI]o you 
 
', 'all-my-loving'),
('All Together Now', 'The Beatles', 'Testo e accordi di All Together Now di The Beatles', 'Intro:
[FA#]    [SOL]    
..[SOL]One, two, three, four 
[RE7]Can I have a little more? 
[SOL]Five, six, seven, eight, nine, [RE7]ten 
I love [SOL]you 
A B C D
[RE7]Can I bring my friend to tea? 
[SOL]E F G H I [RE7]J   I love yo[SOL]u   
Bom bom bom [DO]bompa bom 
Sail the ship, [SOL]bompa bom 
Chop the tree, [DO]bompa bom 
Skip the rope, [RE7]bompa bom 
Look at me
All together now
[SOL]All together now (All together now) 
All together now
[RE7]All together now (All together now) 
[SOL]All together now 

[SOL]Black, white, green, red 
[RE7]Can I take my friend to bed? 
[SOL]Pink, brown, yellow, orange, and [RE7]blue I love yo[SOL]u   
All together now

[SOL]All together now (All together now) 
All together now
[RE7]All together now (All together now) 
[SOL]All together now 
All together now (All together now)
All together now
[RE7]All together now (All together now) 
[SOL]All together now 

Bom bom bom [DO]bompa bom 
Sail the ship, [SOL]bompa bom 
Chop the tree, [DO]bompa bom 
Skip the rope, [RE7]bompa bom 
Look at me
All together now

[SOL]All together now (All together now) 
All together now (All together now)
[RE7]All together now (All together now) 
[SOL]All together now (All together now) 
All together now (All together now)
All together now (All together now)
[RE7]All together now (All together now) 
[SOL]All together now (All together now) 
All together now (All together now)
All together now (All together now)
[RE7]All together now (All together now) 
All together [SOL]now 
 
', 'all-together-now'),
('All You Need Is Love', 'The Beatles', 'Testo e accordi di All You Need Is Love di The Beatles', '
[SOL]Love, [RE]love,   [MIm7]love 
[SOL]Love, [RE]love,   [MIm7]love 
[RE7]Love,   [SOL]love, [RE]love    [RE]       [RE]    [RE7]    

[SOL]  There''s nothing you can [RE]do     
that can''t be [MIm]done 
[SOL]  There''s nothing you can [RE]sing   
that can''t be [MIm]sung 
[RE7]  Nothing you can [SOL]say 
but you can [RE]learn to play the game[RE]      
It''s [RE]easy [RE]       [RE7]    

[SOL]  There''s nothing you can [RE]make   
that can''t be [MIm]made 
[SOL]  No one you can [RE]save   
that can''t be [MIm]saved 
[RE7]  Nothing you can [SOL]do  
but you can [RE]learn how to be you in [RE]time  
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

[SOL]  There''s nothing you can [RE]know   
that isn''t [MIm]known 
[SOL]  Nothing you can [RE]see    
that isn''t [MIm]shown 
[RE7]  Nowhere you can [SOL]be  
that isn''t [RE]where you''re meant to b[RE]e     
Its [RE]easy [RE]       [RE7]    

[SOL]  All you [LA7]need is [RE7]love  [RE5+]     
[SOL]  All you [LA7]need is [RE7]love  [RE5+]     
[SOL]  All you [SI7]need is [MIm]love.. [SOL]love   
[DO]  Love is [RE7]all you need [SOL]    
[SOL]  All you [LA7]need is [RE7]love  [RE5+]     
[SOL]  All you [LA7]need is [RE7]love  [RE5+]     
[SOL]  All you [SI7]need is [MIm]love.. [SOL]love   
[DO]  Love is [RE7]all you need [SOL]    
 
', 'all-you-need-is-love'),
('And I Love Her', 'The Beatles', 'Testo e accordi di And I Love Her di The Beatles', 'Intro:
[FA#m]            [MI6]    
[FA#m] I give her [DO#m]all my love 
[FA#m] That''s all I [DO#m]do   
[FA#m] And if you [DO#m]saw my love 
[LA] You''d love her [SI]too 
I [MI]love her 
[FA#m] She gives me [DO#m]everything 
[FA#m] And tender[DO#m]ly   
[FA#m] The kiss my [DO#m]lover brings 
[LA] She brings to [SI7]me  
And I [MI]love her 

[DO#m] A love like [SI]ours 
[DO#m] Could never [SOL#m]die   
[DO#m] As long as [SOL#m]I     
Have you [SI]near me  [SI7]    

[FA#m] Bright are the [DO#m]stars that shine 
[FA#m] Dark is the [DO#m]sky  
[FA#m] I know this [DO#m]love of mine 
[LA] Will never [SI]die 
And I [MI]love her 

[SOLm]        [REm]       [SOLm]        [REm]    
[SOLm]        [REm]       [SIb]       [DO]      [FA]   
[SOLm] Bright are the [REm]stars that shine 
[SOLm] Dark is the [REm]sky 
[SOLm] I know this [REm]love of mine 
[SIb] Will never [DO]die 
And I [FA]love her... 

[SOLm]            [FA6]           [SOLm]            [RE]   
', 'and-i-love-her'),
('Back in the U.S.S.R.', 'The Beatles', 'Testo e accordi di Back in the U.S.S.R. di The Beatles', 'Intro:
[MI7]    
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

[LA]     [RE]     [DO]     [RE]     [LA]     [RE]     [DO]     [RE]   
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
Yeah, back In the U.S.S.R
 
', 'back-in-the-ussr'),
('Blackbird', 'The Beatles', 'Testo e accordi di Blackbird di The Beatles', 'Intro:
[SOL]    [LAm7]     [SOL]       [SOL]    
[SOL]Blackbird [LAm7]singing in the [SOL]dead of [SOL]night 
[DO]Take these [DO#m7]broken   [RE]wings and [SI7]learn to [MIm]fly  [MIb]    
[RE]All [DO#m7]your     [DO]life [DOm]    
[SOL]You were only [LA7]waiting          
for this [RE7]moment to a[SOL]rise   [DO]   [SOL]       [LA7]     [RE7]       [SOL]    

[SOL]Blackbird [LAm7]singing in the [SOL]dead of [SOL]night 
[DO]Take these [DO#m7]sunken   [RE]eyes and [SI7]learn to [MIm]see  [MIb]    
[RE]All [DO#m7]your     [DO]life [DOm]    
[SOL]You were only [LA7]waiting  
for this [RE7]moment to be [SOL]free 

[FA]Bla[DO]----ckb[REm]ird [DO]  f[SIb6]ly,   [DO]   
[FA]Bla[DO]----ckb[REm]ird [DO]  f[SIb6]ly,   [LA7]    
Into the [RE7]light of a dark black[SOL] nig[LAm7]ht   [SOL]       [SOL]    

[DO]   [DO#m7]         [RE]   [SI7]        [MIm]     [MIb]    
[RE]   [DO#m7]         [DO]    [DOm]     [SOL]        [LA7]     [RE7]       [SOL]    
[FA]Bla[DO]----ckb[REm]ird [DO]  f[SIb6]ly,   [DO]   
[FA]Bla[DO]----ckb[REm]ird [DO]  f[SIb6]ly,   [LA7]    
Into the [RE7]light of a dark black [SOL]nigh[LAm7]t    [SOL]       [SOL]    

[SOL]    [LAm7]     [SOL]       [DO]   [SOL]       [LA7]    [RE7]      
[SOL]Blackbird [LAm7]singing in the [SOL]dead of [SOL]night 
[DO]Take these [DO#m7]broken   [RE]wings and [SI7]learn to [MIm]fly  [MIb]    
[RE]All [DO#m7]your     [DO]life [DOm]    
[SOL]You were only [LA7]waiting  
for this [RE7]moment to a[SOL]rise 
[DO]You were [SOL]only   [LA7]waiting  
for this [RE7]moment to a[SOL]rise 
[DO]You were [SOL]only waiti[LA7]ng  
for this [RE7]moment to a[SOL]rise 
 
', 'blackbird'),
('Can’t Buy Me Love', 'The Beatles', 'Testo e accordi di Can’t Buy Me Love di The Beatles', '
Can''t buy me [MIm]love, [LAm]oh  
[MIm]Love, [LAm]oh  
Can''t buy me [REm7]love, [SOL7]oh   

I''ll [DO7]buy you a diamond ring, my friend 
If it makes you feel all right
I''ll [FA7]get you anything my friend 
If it [DO7]makes you feel all right 
''Cause [SOL7]I don''t care too[FA7] much for money 
For money can''t buy me [DO7]love 
I''ll give you all I''ve got to give
If you say you love me too
I [FA7]may not have a lot to give 
But what I''ve [DO7]got I''ll give to you 
[SOL7]I don''t care too[FA7] much for money 
For money can''t buy me [DO7]love 

Can''t buy me [MIm]love, [LAm]oh  
[DO]Everybody tells me so 
Can''t buy me [MIm]love, [LAm]oh  
[REm]No, no, no, [SOL7]no   

[DO7]Say you don''t need no diamond rings 
And I''ll be satisfied
[FA7]Tell me that you want the kind of things 
That [DO7]money just can''t buy 
[SOL7]I don''t care too[FA7] much for money 
Money can''t buy me [DO7]love... 

[DO7]         [FA7]      [DO7]      [SOL7]     [FA7]    [DO7]    
Can''t buy me [MIm]love, [LAm]oh  
[DO]Everybody tells me so 
Can''t buy me [MIm]love, [LAm]oh  
[REm]No, no, no, [SOL7]no   

[DO7]Say you don''t need no diamond rings 
And I''ll be satisfied
[FA7]Tell me that you want the kind of things 
That [DO7]money just can''t buy 
[SOL7]I don''t care too[FA7] much for money 
Money can''t buy me [DO7]love 
Can''t buy me [MIm]love, [LAm]oh  
[MIm]Love, [LAm]oh  
Buy me [REm7]love, [SOL7]oh ...[DO7]oh  
 
', 'cant-buy-me-love'),
('Come Together', 'The Beatles', 'Testo e accordi di Come Together di The Beatles', 'Intro:
     [REm]    
[REm]  Here come old flat top, He come grooving up slowly, 
He got [REm]  Joo Joo eyeball, He one holy roller 
He got  [LA7]  Hair down to his knee; 
[SOL7]Got to be a joker, he just do what he please. 
Strumentale:
[REm]    
[REm]  He wear no shoe shine, he got toe jam football 
He got [REm]  monkey finger, he shoot co-ca cola 
He say, [LA7]  "I know you, you know me." 
[SOL7]One thing I can tell you is you got to be free 
Come To[SIm]gether, Right [SOL]now... [LA7]  over me. 
Strumentale:
[REm]    
[REm]  He bag production, He got wal-rus gumboot 
He got [REm]  O-no sideboard, He one spinal cracker 
He got [LA7]  feet down below his knee 
[SOL7]Hold you in his armchair, you can feel his disease 
Come To[SIm]gether, Right [SOL]now... [LA7]  over me. 
Strumentale:
[REm]    
[LA7]    
[REm]  He roller coaster, he got early warning 
He got [REm]  muddy water, He one Mo-jo filter 
He say, [LA7]"One and one and one is three." 
[SOL7]Got to be good looking ''cause he so hard to see 
Come To[SIm]gether, Right [SOL]now... [LA7]  over me. 
Strumentale:
[REm]    
[REm7]  Come together... come together... 
 
', 'come-together'),
('Day Tripper', 'The Beatles', 'Testo e accordi di Day Tripper di The Beatles', 'Intro:
e|-[MI7]----------------------------| 
[B|-----------------------------|]G|-----------------------------| 
[D|-------------2-0---4----0-2--|ripete]A|----------2------2----2------|       
[E|--0--3-4---------------------|]                                 
[MI7]Got a good reason 
For taking the easy way out
[LA7]Got a good reason 
For [MI7]taking the easy way out, now 
She was a [FA#7]day tripper 
One-way ticket, yeah
It took me [LA7]so  [SOL#7]long to find [DO#7]out  
And I found [SI7]out    [MI7]    

[MI7]She''s a big teaser 
She took me half the way there
[LA7]She''s a big teaser 
[MI7]She took me half the way there, now 
She was a [FA#7]day tripper 
A one-way ticket, yeah
It took me [LA7]so  [SOL#7]long to find [DO#7]out  
And I found [SI7]out... 

[MI7]    
I [MI7]tried to please her 
She only played one-night stands
I [LA7]tried to please her 
[MI7]She only played one-night stands, now 
She was a [FA#7]day tripper 
Sunday driver, yeah
It took me [LA7]so  [SOL#7]long to find [DO#7]out  
And I found [SI7]out...[MI7]    
Day tripper, yeah
Day tripper, yeah
Day tripper
Day tripper, yeah
Day tripper...
 
', 'day-tripper'),
('Dear Prudence', 'The Beatles', 'Testo e accordi di Dear Prudence di The Beatles', 'Intro:
[RE6]     [LA]       [RE]    [DO]       [SOL]        [LA]       [DO]          
[RE]    [RE7]     [SOL7+]          [RE5+]     
Dear[RE] Prudence[RE7]     [SOL7+]          [RE5+]                          
won''t you come out to [RE]play[RE7]     [SOL7+]          [RE5+]      
Dear[RE] Prudence[RE7]     [SOL7+]          [RE5+]                       
greet the brand new [RE]day.[RE7]..   [SOL7+]          [RE5+]     
The [RE]sun is up, the [RE]sky is blue it''s [SOL7+]beautiful,   
and [SOLm]so are you  
[RE5+]Dear [RE]Prudence  [DO] won''t you  
[SOL]come out to [RE]play[RE7]     [SOL7+]          [RE5+]     

Dear [RE] Prudence[RE7]     [SOL7+]          [RE5+]                
open up your [RE]eyes[RE7]     [SOL7+]          [RE5+]     
Dear [RE] Prudence[RE7]     [SOL7+]          [RE5+]               
see the sunny [RE]skie[RE7]s    [SOL7+]          [RE5+]      
The [RE]wind is low, the [RE]birds will sing 
That [SOL7+]you are part of [SOLm]everything 
Dear[RE] Prudence  [DO] won''t you [SOL]open up you [RE]eyes  

[SOL]        [LA]       [SOL]       
Look a[RE]round round [SOL]round round  
[LA]round round [SOL]round round 
Look a[RE]round round [SOL]round round [LA]round round [SOL]round round 
[RE] Look a[FA]round[SIb6]      [SOL]     

[RE]    [RE7]     [SOL7+]          [RE5+]     
Dear[RE]  Prudence[RE7]     [SOL7+]          [RE5+]                  
let me see you [RE]smile[RE7]     [SOL7+]          [RE5+]     
Dear[RE]  Prudence[RE7]     [SOL7+]          [RE5+]                 
like a little [RE]child[RE7]...  [SOL7+]          [RE5+]     
The [RE]clouds will be a [RE]daisy chain 
So [SOL7+]let me see you [SOLm]smile again 
Dear[RE] Prudence  [DO]  won''t you [SOL]let me see you [RE]smile... 

[RE]       [SOL7+]          [SOLm7+]           
Dear[RE] Prudence[RE7]     [SOL7+]          [RE5+]                          
won''t you come out to [RE]play[RE7]     [SOL7+]          [RE5+]      
Dear[RE] Prudence[RE7]     [SOL7+]          [RE5+]                       
greet the brand new [RE]day.[RE7]..   [SOL7+]          [RE5+]     
The [RE]sun is up, the [RE]sky is blue it''s [SOL7+]beautiful,   
and [SOLm]so are you  
Dear[RE] Prudence   [DO] won''t you [SOL]come out to [RE]play  

[RE6]     [LA]       [RE]    [DO]       [SOL]        [LA]       [DO]         [RE]   
', 'dear-prudence'),
('Don’t Let Me Down', 'The Beatles', 'Testo e accordi di Don’t Let Me Down di The Beatles', '
[MI]Don''t let me [FA#m]down, don''t let me [MI]down 
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
Don''t let me [FA#m]down, don''t let me let [MI]down 
 
', 'dont-let-me-down'),
('Drive My Car', 'The Beatles', 'Testo e accordi di Drive My Car di The Beatles', 'Intro:
[RE]    [RE9]     [RE]   
[RE7] Asked a girl what she [SOL7]wanted to be 
[RE7] She said, "Baby, [SOL7]can''t you see? 
[RE7] I wanna be famous, a [SOL7]star of the screen" 
But [LA7]you can do something in between 

[SIm]Baby, you can drive my [SOL7]car  
[SIm]Yes, I''m gonna be a [SOL7]star 
[SIm]Baby, you can drive my [MI7]car 
And [LA]maybe I''ll [RE]love you[SOL]     [LA]   

[RE7] I told that girl that my [SOL7]prospects were good 
[RE7] And she said, "Baby, it''s [SOL7]understood 
[RE7] Working for peanuts is [SOL7]all very fine 
But [LA7]I can show you a better time" 

[SIm]Baby, you can drive my [SOL7]car  
[SIm]Yes, I''m gonna be a [SOL7]star 
[SIm]Baby, you can drive my [MI7]car 
And [LA]maybe I''ll [RE]love you[SOL]     [LA]   
Beep-beep, beep-beep, [RE]yeah  [SOL]       [RE]      [SOL]    

[RE]      [SOL]       [LA7]    
[SIm]Baby, you can drive my [SOL7]car  
[SIm]Yes, I''m gonna be a [SOL7]star 
[SIm]Baby, you can drive my [MI7]car 
And [LA]maybe I''ll [RE]love you[SOL]     [LA]   

[RE7] I told that girl I can [SOL7]start right away 
[RE7] When she said,  
"Listen, babe, I got [SOL7]somethin'' to say 
[RE7] I got no car and it''s [SOL7]breaking my heart 
But [LA7]I''ve found a driver and that''s a start" 

[SIm]Baby, you can drive my [SOL7]car  
[SIm]Yes, I''m gonna be a [SOL7]star 
[SIm]Baby, you can drive my [MI7]car 
And [LA]maybe I''ll [RE]love you[SOL]     [LA]   

Beep-beep, beep-beep, y[RE]eah [SOL]     [LA]   
Beep-beep, beep-beep, y[RE]eah [SOL]     [LA]   
Beep-beep, beep-beep, y[RE]eah [SOL]     [LA]   
Beep-beep, beep-beep, y[RE]eah.[SOL]..   [LA]   
 
', 'drive-my-car'),
('Eight Days a Week', 'The Beatles', 'Testo e accordi di Eight Days a Week di The Beatles', 'Intro:
[REadd9]         [MI]        [SOL]         [RE]   
[RE]Ooh I need your [MI]love babe, 
[SOL]Guess you know it''s [RE]true 
Hope you need my [MI]love babe, 
[SOL]Just like I need [RE]you 
[SIm]Hold me, [SOL]love me, [SIm]hold me, [MI]love me 
[RE]Ain''t got nothin'' but [MI]love babe, 
[SOL] Eight days a [RE]week 

[RE]Love you ev''ry [MI]day girl, 
[SOL]Always on my [RE]mind 
One thing I can [MI]say girl, 
[SOL]Love you all the [RE]time 
[SIm]Hold me, [SOL]love me, [SIm]hold me, [MI]love me 
[RE]Ain''t got nothin'' but [MI]love girl, 
[SOL] Eight days a [RE]week 

[LA]Eight days a week 
I [SIm]love you 
[MI]Eight days a week 
Is [SOL]not enough to [LA]show I care 

[RE]Ooh I need your [MI]love babe, 
[SOL]Guess you know it''s [RE]true 
Hope you need my [MI]love babe, 
[SOL]Just like I need [RE]you 
[SIm]Hold me, [SOL]love me, [SIm]hold me, [MI]love me 
[RE]Ain''t got nothin'' but [MI]love babe, 
[SOL] Eight days a [RE]week 

[LA]Eight days a week 
I [SIm]love you 
[MI]Eight days a week 
Is [SOL]not enough to [LA]show I care 

[RE]Love you ev''ry [MI]day girl, 
[SOL]Always on my [RE]mind 
One thing I can [MI]say girl, 
[SOL]Love you all the [RE]time 
[SIm]Hold me, [SOL]love me, [SIm]hold me, [MI]love me 
[RE]Ain''t got nothin'' but [MI]love girl, 
[SOL] Eight days a [RE]week 
[SOL] Eight days a [RE]week 
[SOL] Eight days a [RE]week 

[REadd9]         [MI]        [SOL]         [RE]   
', 'eight-days-a-week'),
('Eleanor Rigby', 'The Beatles', 'Testo e accordi di Eleanor Rigby di The Beatles', '
[DO]Ah, look at all the lonely [MIm]people. 
[DO]Ah, look at all the lonely [MIm]people. 

[MIm]Eleanor Rigby, picks up the rice in the church 
where a wedding has [DO]been 
lives in a [MIm]dream. 
Waits at the [MIm]window, wearing the face 
that she keeps in a [RE]jar by the [DO]door 
who is it [MIm]for? 

[MIm7]All the lonely [MIm6]people, 
where [DO]do they all come [MIm]from? 
[MIm7]All the lonely [MIm6]people, 
where [DO]do they all be[MIm]long? 

[MIm]Father McKenzie, writing the words 
of a sermon that no one will [DO]hear 
no-one comes [MIm]near. 
Look at him [MIm]working, darning his socks 
in the night when there’s [RE]nobody [DO]there 
what does he [MIm]care? 

[MIm7]All the lonely [MIm6]people, 
where [DO]do they all come [MIm]from? 
[MIm7]All the lonely [MIm6]people, 
where [DO]do they all be[MIm]long? 

[DO]Ah, look at all the lonely [MIm]people. 
[DO]Ah, look at all the lonely [MIm]people. 

[MIm]Eleanor Rigby died in the church 
and was buried along with her nam[DO]e... 
nobody [MIm]came. 
Father Mc[MIm]Kenzie, wiping the dirt 
from his hands as he [RE]walks from the [DO]grave 
no-one was [MIm]seved. 

[MIm7]All the lonely [MIm6]people, 
where [DO]do they all come [MIm]from? 
[MIm7]All the lonely [MIm6]people, 
where [DO]do they all be[MIm]long? 
 
', 'eleanor-rigby'),
('Free as a Bird', 'The Beatles', 'Testo e accordi di Free as a Bird di The Beatles', 'Intro:
[LA]     [FA#m7]        [FA7+]       [MI7]    
[LA]     [FA#m7]        [REm]      [MI7]    
[LA]     [FA#m]       [REm]      [SOL7]        
[DO]     [LAm]      [MI7]        [MI7]    
[LA]Free[FA#m7]        [FA7+]      [MI7]as a b[LA]ird [FA#m7]       [REm]    
It''s the [MI7]next best [LA]thing to [FA#m]be     [REm7]     

Free [SOL7]as a [DO]bird [LAm]      [MI7]        [MI7]    

[LA]Home,[FA#m7]        [FA7+]       [MI7]home and [LA]dry  [FA#m]     
[REm] Like a [MI7]homing [LA]bird I''ll [FA#m]fly    [REm7]     
As a [SOL7]bird on [DO]wings[LAm]      [MI7]        [MI7]    

[FA] Whatever happened to 
[FA#m7] The life that we once knew? 
[SOL] Can we really live wi[LA]thout each [LA]other? 
[FA] Where did we lose the touch 
[FA#m7] That seemed to mean so much? 
[SOL] It always made me [MI7]feel  [MI7]so  

[LA]Free [FA#m7]        [FA7+]      [MI7]as a b[LA]ird  [FA#m]     
[REm] Like the [MI7]next best [LA]thing to [FA#m]be      

[REm] Free [SOL7]as a [DO]bird [MI7]        [MI7]    

[LA]Home, ([FA#m7]home)   [FA7+]       [MI7]home and [LA]dry  [FA#m7]      
[REm] Like a [MI7]homing [LA]bird I''ll [FA#m7]fly     [REm]    

As a [SOL7]bird on [DO]wings[LAm]      [FA]       [SOL]    

[FA] Whatever happened to 
[FA#m7] The life that we once knew? 
[SOL] Always made me fe[MI7]el     [MI7]so free 

[DO]Oh...[LAm]      [FAm]          [SOL7]       [DO]     [LAm]      [FAm7]       [SOL7]     
[DO]     [LAm]      [FAm7]       [SOL7]     
[LA]Free [FA#m7]        [FA7+]      [MI7]as a b[LA]ird  [FA#m]     
[REm] Is the [MI7]next best [LA]thing to [FA#m]be     [REm7]          
Free [SOL]as a [LA]bird [FA#m]       [REm]    
Free [SOL]as a [LA]bird [FA#m]       [REm7]     
Free [SOL]as a [LA]bird.[FA#m]..     [REm]      [SOL]      [LA]   
 
', 'free-as-a-bird'),
('Get Back', 'The Beatles', 'Testo e accordi di Get Back di The Beatles', 'Intro:
[LA5]             [SOL]       [RE]      
[LA5]Jojo was a man who thought he was a loner 
[RE5]But he knew it couldn''t l[LA5]ast 
Jojo left his home in Tucson, Arizona
F[RE5]or some California gr[LA5]ass 

Get [LA7]back, get back 
Get [RE7]back to where you once be[LA]longed 
[SOL]       [RE] Get  [LA7]back, get back 
Get [RE7]back to where you once be[LA]longed 
Get back Jojo...

[LA]            [RE]       [LA]    [SOL]    [RE]   
[LA]  ...Go home[RE]       [LA]    [SOL]       [RE]      
Get [LA7]back, get back 
B[RE7]ack to where you once bel[LA]onged  [SOL]       
[RE]Get   [LA7]back, get back    
[LA]Back to where you once be[RE]longed... [RE7]    
Oh, get back, Jo[LA]...         [RE]      [LA]      [SOL]       [RE]      

[LA]            [RE]       [LA]      [SOL]       [RE]      
[LA5]Sweet Loretta Martin thought she was a woman 
B[RE5]ut she was another m[LA5]an  
All the girls around her say she''s got it coming
B[RE5]ut she gets it while she c[LA5]an  

[SOL]   Oh, [RE]get  b[LA7]ack, get back 
Get [RE7]back to where you once be[LA7]longed  [SOL]       
[RE]Get   [LA7]back, get back 
Get [RE7]back to where you once be[LA7]longed 
Get back Loretta, woo, woo...

[LA]            [RE]        [LA]     [SOL]       [RE]      
[LA]            [RE]      [LA]...Go home  

[SOL]   Oh, [RE]get   [LA7]back, yeah, get back 
Get [RE7]back to where you once be[LA7]longed 
Yeah, get back, get back
Get [RE]back to where you once belonged  [RE7]    
Ooh... [LA5]      
Get back, Loretta [RE7]    
Your mommy''s waitin[LA]'' for you [SOL]       [RE]      [LA7]    
Wearin'' her high-heel shoes
And a low-neck sweater[RE7]    
Get back home, Lo[LA7]retta  [SOL]        
[RE]Get   [LA7]back, get back 
Get b[RE7]ack to where you once belonged..[LA].     [SOL]    [RE]   
 
', 'get-back'),
('Girl', 'The Beatles', 'Testo e accordi di Girl di The Beatles', '
Is there [DOm]anybody [SOL7]going to listen [DOm]to my [DOm7]story 
[FAm]All about the girl who came to [MIb]stay? [SOL7]     
She''s the [DOm]kind of girl 
You [SOL7]want so much, it [DOm]makes you [DOm7]sorry 
[FAm]Still you don''t regret a single [DOm]day 
Ah, [MIb]girl[SOLm]...      [FAm]        [SIb7]       
[MIb]Girl, [SOLm]girl     [FAm]        [SIb7]      

When I [DOm]think of all the [SOL7]times 
I tried [DOm]so hard to [DOm7]leave her 
[FAm]She will turn to me and start to [MIb]cry  [SOL7]     
And she [DOm]promises the [SOL7]earth to me 
And [DOm]I bel[DOm7]ieve her 
[FAm]After all this time I don''t [DOm]know why 
Ah, [MIb]girl[SOLm]...      [FAm]        [SIb7]       
[MIb]Girl, [SOLm]girl     [FAm]        [SIb7]      

[FAm]She''s the kind of girl who puts you [DO]down 
When friends are there
You feel a [FAm]fool    [DO]   
[FAm]When you say she''s looking good 
She [DO]acts as if it''s understood 
She''s [FAm]cool, ooh, [LAb]ooh, ooh 

[MIb]Girl[SOLm],        [FAm]        [SIb7]      [MIb]    
[MIb]Girl, [SOLm]girl     [FAm]        [SIb7]      

Was she [DOm]told when she was [SOL7]young 
That pain would [DOm]lead to [DOm7]pleasure? 
[FAm]Did she understand it when they[MIb] said [SOL7]     
That a [DOm]man must break his [SOL7]back 
To earn his [DOm]day of [DOm7]leisure? 
[FAm]Will she still believe it when he''[DOm]s dead? 
Ah, [MIb]girl[SOLm]...      [FAm]        [SIb7]       
[MIb]Girl, [SOLm]girl     [FAm]        [SIb7]      

[DOm]      [SOL7]       [DOm]      [DOm7]       [FAm]         [MIb]      [SOL7]     
[DOm]      [SOL7]       [DOm]      [DOm7]       [FAm]         [DOm]    
Ah, [MIb]girl[SOLm]...      [FAm]        [SIb7]       
[MIb]Girl, [SOLm]girl     [FAm]        [SIb7]      
 
', 'girl'),
('Golden Slumbers', 'The Beatles', 'Testo e accordi di Golden Slumbers di The Beatles', 'Intro:
[LAm7]...Once there was a way 
To get back [REm]homeward [DO]       [REm]     [DO]      [REm]    
[SOL7]Once there was a way 
To get back [DO]home 
[MI7]Sleep, pretty da[LAm]rling, do not [REm7]cry    
[SOL7] And [FA]I will [SOL]sing a lulla[DO]by 

[DO]Golden [FAadd9]slumbers fill your [DO]eyes   
Smiles a[FAadd9]wait you when you [DO]rise 
[MI7]Sleep pretty da[LAm]rling, do not [REm7]cry    
[SOL7] And [FA]I will [SOL]sing a lullab[DO]y  

[LAm7]Once there was a way 
To get back home[REm]ward [DO]       [REm]     [DO]      [REm]    
[SOL7]Once there was a way 
To get back [DO]home 
[MI7]Sleep, pretty dar[LAm]ling, do not [REm7]cry    
[SOL7] And [FA]I will [SOL7]sing a lulla[DO]by 
 
', 'golden-slumbers'),
('Happiness Is a Warm Gun', 'The Beatles', 'Testo e accordi di Happiness Is a Warm Gun di The Beatles', '
She''s [LAm7]not a [LAm6+]girl who [MIm9]misses much [MIm]    
[LAm7] Do do do do do d[LAm6+]o,     [MIm9] oh yeah [MIm]    

[REm6+] She''s well-acquainted  
with the touch of the velvet hand
Like a lizard on a [LAm]window pane 
The [REm]man in the crowd  
with the multicolored mirrors
On his [LAm9]hobnail boots 
[REm]Lying with his eyes while his hands are busy 
Working [LAm]overtime 
[REm6+] A soap impression of his wife which he ate 
And donated to the Natio[LAm]nal Trust 

[LA]                    [DO]        [LAm]    
[LA]I need a fix ''cause I''m going down 
Down to the pits that I left uptown
[DO]I need a fix ''cause I''m [LAm]going down 

[LA]Mother Superior [DO]jumped the gun 
[LA]Mother Superior [SOL]jumped the gun 
[LA]Mother Superior [DO]jumped the gun 
[LA]Mother Superior [SOL]jumped the gun 
[LA]Mother Superior [DO]jumped the gun 
[LA]Mother Superior [SOL]jumped the gun 

[DO] Happi[LAm]ness is a [FA]warm gun  
(bang, [SOL]bang, shoot, [DO]shoot) 
Happi[LAm]ness is a [FA]warm gun, mo[SOL]mma  
(bang, bang, shoot, [DO]shoot) 
When [LAm]I hold you[FA] in my [SOL]arms  [DO]   
And I [LAm]feel my [FA]finger on your[SOL] trigger  
[DO] I kn[LAm]ow nobo[FA]dy can do me no [SOL]harm  
[DO] Because  
Happi[LAm]ness is a [FA]warm gun, mo[SOL]mma  
[DO]  Happi[LAm]ness is a [FA]warm gun,  
yes it [SOL]is (bang, bang, shoot, shoot) 
[FAm]Happiness is a warm, yes it is...  

g[DO]un (happi[LAm]ness, [FA]  bang, [SOL]bang, shoot, shoot) 
Well, don''t you know that [DO]happiness.[LAm]..  
is a [FA]warm gun mo[SOL]mma? 
(Happiness is a warm gun, [DO]yeah) 
 
', 'happiness-is-a-warm-gun'),
('Hello, Goodbye', 'The Beatles', 'Testo e accordi di Hello, Goodbye di The Beatles', '
[FA6]You say yes, [DO]I say no 
[SOL7]You say stop and [LAm]I say go go [SOL7]go,  
[LAm]   oh [SOL7]no     
You say goodbye and [FA]I say hel[DO]lo  [SOL]       
Hello hel[LAm7]lo     [SOL]    
I don''t know [FA]why you say good[LAb]bye, I say hel[DO]lo   
[SOL]  Hello hel[LAm7]lo    [SOL]    
I don''t know [FA]why you say good[SIbadd9]bye, I say [DO]hello 

[FA6]I say high, [DO]you say low 
[SOL7]You say why and [LAm]I say I don''t [SOL7]know,  
[LAm]   oh [SOL7]no     
You say goodbye and [FA]I say hel[DO]lo   [SOL]       
(Hello goodbye hello goodbye) Hello hel[LAm7]lo    [SOL]    
(Hello goodbye) I don''t know [FA]why you say good[LAb]bye 
I say hel[DO]lo 
[DO](Hello goodbye hello goodbye[SOL]) Hello hel[LAm7]lo   
(Hello goodbye) I don''t know [FA]why you say good[SIbadd9]bye     
(Hello goodbye) I say hel[DO]lo/goodbye 

[FA]   .[DO]..Why why why [SOL7]why why why  
do you [LAm]say goodbye good[SOL7]bye,  [LAm]      
oh [SOL7]no?  
You say goodbye and [FA]I say hel[DO]lo  [SOL]       
Hello hel[LAm7]lo     [SOL]    
I don''t know [FA]why you say good[LAb]bye, I say hel[DO]lo 
[SOL]    Hello hel[LAm7]lo     [SOL]    
I don''t know [FA]why you say good[SIbadd9]bye, I say hel[DO]lo 

[FA6]You say yes (I say yes) [DO]I say no (But I may mean no) 
[SOL7]You say stop (I can stay)  
and [LAm]I say go go [SOL7]go (Till it''s time to go), [LAm]oh  
Oh [SOL7]no   
You say goodbye and [FA]I say hel[DO]lo  [SOL]            
Hello hel[LAm7]lo   
I don''t know [FA]why you say good[LAb]bye, I say hel[DO]lo 
[SOL]   Hello hel[LAm7]lo    [SOL]    
I don''t know why you [FA]say good[SIbadd9]bye, I say hel[DO]lo 
[SOL]  Hello hel[LAm7]lo    [SOL]    
I don''t know [FA]why you say good[LAb]bye,    
I say hello..[DO].        [FA#m7]          [FA]   
hel[DO]lo 

[DO]Hela heba helloa 
Hela heba helloa, cha cha cha
Hela heba helloa, wooo
Hela heba helloa, hela
Hela heba helloa, cha cha cha
Hela heba helloa, wooo
Hela heba helloa, cha cah cah 
 
', 'hello-goodbye'),
('Help', 'The Beatles', 'Testo e accordi di Help di The Beatles', '
[SIm]Help! I need some[SIm]body   
[SOL]Help! Not just [SOL]anybody 
[MI]Help! You know I need someone, 
[LA]Help! 

[LA]  When I was younger 
so much [DO#m]younger than today 
[FA#m]  I never needed anybody''s 
[RE]help in [SOL]any [LA]way 
But now those days are gone
I''m [DO#m]not so self-assured 
[FA#m]  Now I find I''ve changed my mind 
I''ve [RE]opened [SOL]up the [LA]door 

[SIm]Help me if you can I''m feeling down 
[SIm]  and I [SOL]do appreciate you being ''round[SOL]        
[MI]Help me get my feet back on the ground 
won''t you [LA]please please help me 

And [LA]now my life has changed 
in [DO#m]oh so many ways 
[FA#m]  My independence seemed 
to [RE]vanish [SOL]in the [LA]haze 
But every now and then I [DO#m]feel so insecure 
[FA#m]  I know that I just need you 
like I''ve [RE]never [SOL]done be[LA]fore 

[SIm]Help me if you can I''m feeling down 
[SIm]  and I [SOL]do appreciate you being ''round[SOL]         
[MI]Help me get my feet back on the ground 
won''t you [LA]please please help [MI]me 

[LA]  When I was younger 
so much [DO#m]younger than today 
[FA#m]  I never needed anybody''s 
[RE]help in [SOL]any [LA]way 
But now those days are gone
I''m [DO#m]not so self-assured 
[FA#m]  Now I find I''ve changed my mind 
I''ve [RE]opened [SOL]up the [LA]door 

[SIm]Help me if you can I''m feeling down 
[SIm]  and I [SOL]do appreciate you being ''round[SOL]         
[MI]Help me get my feet back on the ground 
won''t you [LA]please please help [MI]me 
Help me, help [LA]me, [LA6]oooh 
 
', 'help'),
('Helter Skelter', 'The Beatles', 'Testo e accordi di Helter Skelter di The Beatles', 'Intro:

e[|]|-----[MI7]0--(repeat)----------| 
[B|--12\3--(repeat)----------|]G|--------------------------| 
[D|--------------------------|]A|--------------------------| 
[E|--------------------------|]                              
e[|]|-----[MI6]0--(repeat)----------| 
[B|-----2--(repeat)----------|]G|--------------------------| 
[D|--------------------------|]A|--------------------------| 
[E|--------------------------|]                              
e[|]|-----[DO]0--(repeat)----------|                      
[B|-----1--(repeat)----------|]G|--------------------------| 
[D|--------------------------|]A|--------------------------| 
[E|--------------------------|]                              
[MI7]When I get to the bottom 
I go back to the top of the [MI6]slide 
Where I stop and I turn and I go for a [DO]ride, 
Till I get to the bottom, and I see you a[SOL]gain, 
Yeah, Yeah, [MI5]Yeah! 

[MI]Do you, don’t you want me to love you? 
I’m coming down fast, but I’m miles above you
Tell me, tell me, tell me,
Come on [SOL]tell me the answer, 
Well, you [LA]may be a lover, but you ain’t no dancer [MI]   

[LA]Helter Skelter, [MI]Helter Skelter, 
[LA]Helter Skelter[MI], yeah! 

[MI]Will you, won’t you want me to make you? 
I’m coming down fast, but don’t let me break you
[SOL]Tell me, tell me, tell me the answer, 
You [LA]may be a lover, but you ain’t no danc[MI]er 
Look out!

[LA]Helter Skelter, [MI]Helter Skelter, 
[LA]Helter Skelter[MI], yeah! 
[MI]Look out ‘cause here she comes! 

[LA]     [MI]     [LA]     [MI]      [MI7]    
[MI7]When I get to the bottom 
I go back to the top of the [MI6]slide 
Where I stop and I turn and I go for a [DO]ride, 
Till I get to the bottom, and I see you a[SOL]gain, 
Yeah, Yeah, [MI5]Yeah! 

[MI]Well, do you, don’t you want me to make you? 
I’m coming down fast, but don’t let me break you
[SOL]Tell me, tell me, tell me your answer, 
Well, you [LA]may be a lover, but you ain’t no danc[MI]er 
Look out!

[LA]Helter Skelter, [MI]Helter Skelter, 
[LA]Helter Skelter[MI], yeah!   

[MI]...Look out! Helter Skelter! 
She coming down fast!
Yes she is, [MI7]yes she is, coming down fast... 

[LA]Helter Skelter, [MI]Helter Skelter, 
[LA]Helter Skelter, yeah! [MI]   
 
', 'helter-skelter'),
('Here Comes The Sun', 'The Beatles', 'Testo e accordi di Here Comes The Sun di The Beatles', '
[LA]  Here comes the sun 
[RE]  here comes the [SI7]sun and I say [RE] it''s all right 
 
[LA]  Little darling 
it''s been a [RE]long cold lonely [MI7]winter 
[LA]  Little darling 
it feels like [RE]years since it''s been [MI7]here 
[LA]  Here comes the sun 
[RE]  here comes the [SI7]sun and I say [RE] it''s all right 

[LA]  Little darling 
the smiles re[RE]turning to the [MI7]faces 
[LA]  Little darling 
it feels like [RE]years since it''s been [MI7]here 
[LA]  Here comes the sun 
[RE]  here comes the [SI7]sun and I say [RE] it''s all right 
Strumentale:
     [DO]     [SOL]      [RE]         [RE]     [LA]     [MI7]    
[DO]Sun, [SOL]sun, [RE]sun,     [RE]here it [LA]comes   [MI7]    
[DO]Sun, [SOL]sun, [RE]sun,     [RE]here it [LA]comes   [MI7]    
[DO]Sun, [SOL]sun, [RE]sun,     [RE]here it [LA]comes   [MI7]    
[DO]Sun, [SOL]sun, [RE]sun,     [RE]here it [LA]comes   [MI7]    

[LA]  Little darling 
I feel that [RE]ice is slowly [MI7]melting 
[LA]  Little darling 
it seems like [RE]years since it''s been [MI7]clear 
[LA]  Here comes the sun 
[RE]  here comes the [SI7]sun and I say [RE] it''s all right 

[LA]  Here comes the sun, [RE]  here comes the [SI7]sun 
it''s [LA]all right 
It''s [LA]all right. 
 
', 'here-comes-the-sun'),
('Hey Bulldog', 'The Beatles', 'Testo e accordi di Hey Bulldog di The Beatles', 'Intro:
e|[SI5]----------------|----------------|  
[B|----------------|----------------|]G|----------------|----------------|  
[D|-------2--3---4-|-------4--3---2-|]A|2-2-5-2--2------|2-2-5-2--2------|  
[E|----------------|----------------|]                                      
[SI7] Sheepdog [FA#m]standing in the rain 
[SI7] Bullfrog [FA#m]doing it again 
[LA] Some kind of [FA#m]happiness is [MI]measured out in [MI7]miles 
[LA] What makes you [FA#m]think you''re something [SI7]special  
when you smile?
 Childlike, [FA#m]no one understands 
[SI7] Jack-knife [FA#m]in your sweaty hands 
[LA] Some kind of [FA#m]innocence is [MI]measured out in [MI7]years 
[LA] You don''t know [FA#m]what it''s  
like to [SI7]listen to your fears 

[SIm]You can [SOL]talk to [SIm6+]me    
[SIm7]You can talk to [MIm]me   [DO]      
[MIm6+]You can talk to [MIm7]me   
If you''re [SIdim]lonely, you can [MIm]talk to [SI5]me             
Riff...

[SI7]       [FA#m7]         [SI7]       [FA#m]     
[LA]    [FA#m]      [MI7]       [LA]    [FA#m]      [SI7]    
[SI7] Big man (yeah?) [FA#m]walking in the park 
[SI7] Wigwam [FA#m]frightened of the dark 
[LA] Some kind of [FA#m]solitude is [MI]measured out in [MI7]you 
[LA] You think you [FA#m]know me, but you [SI7]haven''t got a clue 

[SIm]You can [SOL]talk to [SIm6+]me    
[SIm7]You can talk to [MIm]me   [DO]      
[MIm6+]You can talk to [MIm7]me   
If you''re [SIdim]lonely, you can [MIm]talk to [SI5]me                
Riff...

[SI7]       [FA#m]        [SI7]       [FA#m]     
', 'hey-bulldog'),
('Hey Jude', 'The Beatles', 'Testo e accordi di Hey Jude di The Beatles', '
Hey [FA]Jude, don’t make it [DO]bad 
take a [DO7]sad song and make it [FA]better 
Re[SIb]member to let her into your [FA]heart 
then you can [DO]start to [DO7]make it [FA]better 
Hey [FA]Jude, don’t be a[DO]fraid 
you were [DO7]made to go out and [FA]get her  
The [SIb]minute you let her under your [FA]skin 
then you be[DO]gin to [DO7]make it [FA]better 

[FA7]  And anytime you feel the [SIb]pain, hey [REm]Jude, re[SOLm]frain 
don’t carry the [DO7]world upon your [FA]shoulders 
[FA7]  For well you know that it''s a [SIb]fool who [REm]plays it [SOLm]cool 
by making his [DO7]world a little [FA]colder 

Da da da [FA7]da da [DO7]da da da 

Hey [FA]Jude, don’t let me [DO]down 
you have [DO7]found her, now go and [FA]get her 
Re[SIb]member to let her into your [FA]heart 
then you can [DO]start to [DO7]make it [FA]better 

[FA7]  So let it out and let it in[SIb],  hey [REm]Jude, be[SOLm]gin  
you''re waiting for [DO7]someone to per[FA]form with 
[FA7]  And don’t you know that it''s just 
[SIb]you, hey [REm]Jude, you''ll [SOLm]do   
the movement you [DO7]need is on your [FA]shoulders 

Da da da [FA7]da da [DO7]da da da 

Hey [FA]Jude, don’t make it [DO]bad 
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
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude 
 
', 'hey-jude'),
('Hey Jude', 'The Beatles', 'Testo e accordi di Hey Jude di The Beatles', '
Hey [FA]Jude, don’t make it [DO]bad 
take a [DO7]sad song and make it [FA]better 
Re[SIb]member to let her into your [FA]heart 
then you can [DO]start to [DO7]make it [FA]better 
Hey [FA]Jude, don’t be a[DO]fraid 
you were [DO7]made to go out and [FA]get her  
The [SIb]minute you let her under your [FA]skin 
then you be[DO]gin to [DO7]make it [FA]better 

[FA7]  And anytime you feel the [SIb]pain, hey [REm]Jude, re[SOLm]frain 
don’t carry the [DO7]world upon your [FA]shoulders 
[FA7]  For well you know that it''s a [SIb]fool who [REm]plays it [SOLm]cool 
by making his [DO7]world a little [FA]colder 

Da da da [FA7]da da [DO7]da da da 

Hey [FA]Jude, don’t let me [DO]down 
you have [DO7]found her, now go and [FA]get her 
Re[SIb]member to let her into your [FA]heart 
then you can [DO]start to [DO7]make it [FA]better 

[FA7]  So let it out and let it in[SIb],  hey [REm]Jude, be[SOLm]gin  
you''re waiting for [DO7]someone to per[FA]form with 
[FA7]  And don’t you know that it''s just 
[SIb]you, hey [REm]Jude, you''ll [SOLm]do   
the movement you [DO7]need is on your [FA]shoulders 

Da da da [FA7]da da [DO7]da da da 

Hey [FA]Jude, don’t make it [DO]bad 
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
[FA]Na na na [MIb]na na na na [SIb]na na na na, hey [FA]Jude 
 
', 'hey-jude'),
('I Feel Fine', 'The Beatles', 'Testo e accordi di I Feel Fine di The Beatles', 'Intro:
[RE7]      [DO7]      [SOL7]     
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

[SOL7]           [RE]         
[RE7]      [DO7]      [SOL7]     
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
[RE]She''s in love with [DO]me and I feel [SOL7]fine 
 
', 'i-feel-fine'),
('I Saw Her Standing There', 'The Beatles', 'Testo e accordi di I Saw Her Standing There di The Beatles', 'Intro:
[MI7]    
Well, she was [MI7]just seventeen 
You [LA7]know what I [MI7]mean 
And the way she looked
Was way beyond com[SI7]pare 
So [MI]how could I [MI7]dance with a[LA]nother 
[DO]Ooh, when I [MI]saw her [SI7]standing [MI7]there? 

Well, [MI7]she looked at me 
And [LA7]I, I could [MI7]see 
That before too long
I''d fall in love with [SI7]her 
[MI]She wouldn''t [MI7]dance with a[LA]nother 
[DO]Ooh, when I [MI]saw her [SI7]standing [MI7]there   

Well, my [LA7]heart went "boom" 
When I crossed that room
And I held her hand in [SI7]mine    [LA7]    

Oh we [MI7]danced through the night 
And we [LA7]held each other [MI7]tight 
And before too long
I fell in love with [SI7]her 
Now [MI]I''ll never [MI7]dance with a[LA7]nother 
[DO]Ooh, since I [MI7]saw her [SI7]standing [MI7]there... 

[MI7]                   [SI7]       [MI]      [MI7]       [LA7]    
[MI7]       [SI7]       [MI7]    
Well, my [LA7]heart went, "Boom" 
When I crossed that room
And I held her hand in [SI7]mine   [LA7]    

Oh, we [MI7]danced through the night 
And we [LA7]held each other [MI7]tight 
And before too long
I fell in love with [SI7]her 
Now [MI]I''ll never [MI7]dance with a[LA]nother 
[DO]Oh, since I [MI7]saw her [SI7]standing [MI7]there 
Oh, since I saw her [SI7]standing [MI7]there 
Yeah, well since I saw her [SI7]standing [LA7]there   [MI7]    [MI9]    
 
', 'i-saw-her-standing-there'),
('I Should Have Known Better', 'The Beatles', 'Testo e accordi di I Should Have Known Better di The Beatles', 'Intro:
[SOL]     [RE]    [SOL]     [RE]    [SOL]     [RE]    [SOL]     [RE]   
[SOL]I    [RE]    [SOL]     [RE]should have known [SOL]better  
with a [RE]girl like y[SOL]ou   [RE]   
That I [SOL]would love every[RE]thing that you d[MIm]o   
And I d[DO]o, hey, hey, h[RE]ey, and I d[SOL]o    [RE]    [SOL]     
[RE]Whoa, oh, [SOL]I    [RE]    [SOL]     [RE]never rea[SOL]lized   
what a [RE]kiss could b[SOL]e   
[RE] This could [SOL]only [RE]happen to m[MIm]e   
Can''t you s[DO]ee, can''t you s[SI7]ee  

[MIm] That when I [DO]tell you that I [SOL]love you, [SI7]oh  
[MIm] You''re gonna say you love me, t[SOL]o----[SOL7]o,   oh 
[DO] And when I [RE]ask you to be m[SOL]i----[MIm]ne  
[DO] You''re gonna s[RE]ay you love me, t[SOL]oo   [RE]    [SOL]    

[RE]So oh, [SOL]I    [RE]    [SOL]     [RE]should rea[SOL]lized  
a lot of [RE]things be[SOL]fore [RE]   
If this is [SOL]love you''ve got to [RE]give me [MIm]more 
Give me [DO]more, hey hey [RE]hey, give me [SOL]more [RE]    [SOL]     [RE]   

[SOL]     [RE]    [SOL]     [RE]    [SOL]     [RE]    [SOL]     [RE]   
[SOL]     [RE]    [MIm]        [DO]       [RE]       [SOL]     [RE]    [SOL]      
[RE]Whoa, oh, [SOL]I    [RE]    [SOL]     [RE]never rea[SOL]lized  
what a [RE]kiss could b[SOL]e    [RE]   
This could [SOL]only [RE]happen to m[MIm]e   
Can''t you s[DO]ee, can''t you s[SI7]ee  

[MIm] That when I [DO]tell you that I [SOL]love you, [SI7]oh  
[MIm] You''re gonna say you love me, t[SOL]o----[SOL7]o,   oh 
[DO] And when I [RE]ask you to be m[SOL]i----[MIm]ne  
[DO] You''re gonna s[RE]ay you love me, t[SOL]oo   [RE]    [SOL]      
You [RE]love me, t[SOL]oo,  [RE]    [SOL] you [RE]love me, t[SOL]oo,  [RE]   
[SOL]  you [RE]love me, t[SOL]oo... 
 
', 'i-should-have-known-better'),
('I Want to Hold Your Hand', 'The Beatles', 'Testo e accordi di I Want to Hold Your Hand di The Beatles', 'Intro:
[DO]    [RE]      [DO]    [RE]       [DO]    [RE]   
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
[DO] I want to [RE]hold your [DO]hand... [SOL]    
 
', 'i-want-to-hold-your-hand'),
('I Want You (She’s So Heavy)', 'The Beatles', 'Testo e accordi di I Want You (She’s So Heavy) di The Beatles', 'Intro:
[REm]     [REm]        [REm]        [REm]                  
[MI7]          [SIb]       [LA5+]     
I want you [LAm7]     
I want you so bad
I want you
I want you so bad.[DO].. 
It''s [RE5]driving me [FA]mad 
It''s [SOL]driving [MI7]me       [LAm7]mad  

I want [REm7]you  
I want you so bad, babe
I want you
I want you so bad.[FA].. 
It''s [DO]driving me [SIb]mad 
It''s [SOL5]dri--[SOL#5]ving  [LA5]me  [MI7]mad... 

I want [LAm7]you  
I want you so bad, babe
I want you
I want you so bad
It''s [RE5]driving me [FA]mad 
It''s [SOL]driving [MI7]me       [LAm7]mad  

I want [REm7]you  
I want you so bad, babe
I want you
I want you so bad[FA]   
It''s [DO]driving me [SIb]mad 
It''s [SOL5]dri--[SOL#5]ving  [LA5]me  [MI7]mad... 

She''s so.[REm]..  [REm]       [REm]       [REm]        [MI7]heavy    

[DO5]    [SI5]    [SIb7]        [LA5+]     
[REm]Heavy, [REm]heavy, [REm]heavy..[REm].       [MI7]          

[DO5]    [SI5]    [SIb7]        [LA5+]     
[LAm7]              
[DO]    [RE]    [FA]    [SOL]     [MI7]         [LAm7]     
[REm7]              
[FA]    [DO]    [SIb]     [SOL5]      [SOL#5]       [LAm]     [MI7]       
She''s so.[REm]..  [REm]       [REm]       [REm]        [MI7]heavy   

[DO5]    [SI5]    [SIb7]        [LA5+]     
[REm]Heavy, [REm]heavy, [REm]heavy..[REm].       [MI7]          

[DO5]    [SI5]    [SIb7]        [LA5+]     
I want [LAm7]you  
I want you so bad, babe
I want you
I want you so bad[DO]   
It''s [RE5]driving me [FA]mad 
It''s [SOL]driving [MI7]me       [LAm7]mad  

I want [REm7]you  
You know I want you so bad, babe
I want you
You know I want you so bad[FA]   
It''s [DO]driving me [SIb]mad 
It''s [SOL5]dri--[SOL#5]ving  [LA5]me  [MI7]mad... 
Yeah...
She''s so.[REm]..  [REm]       [REm]       [REm]        [MI7]        

[DO5](rip[SI5]ete)[SIb7]       [LA5+]     
[REm]    [REm]       [REm]       [REm]        [MI7]          
[DO5]    [SI5]    [SIb7]         [LA5+]     
', 'i-want-you-shes-so-heavy'),
('I’m Only Sleeping', 'The Beatles', 'Testo e accordi di I’m Only Sleeping di The Beatles', '
[RE#m]When I wake up early in the [SOL#m]morning 
[FA#]Lift my [SI]head, [FA#]I''m still [LA#7]yawning 
[RE#m]When I''m in the middle of a [SOL#m]dream 
[FA#]Stay in [SI]bed, [FA#]float up [SI]stream (float up [SOL#m7]stream) 

[FA#]Please, don''t wake me 
[SOL#m]No, don''t shake me 
[LA#m]Leave me where I [SOL#m]am    
I''m only [SI7+]sleeping        

[RE#m]Everybody seems to think I''m [SOL#m]lazy  
[FA#]I don''t [SI]mind, I [FA#]think they''re [LA#7]crazy 
[RE#m]Runnin'' everywhere at such a [SOL#m]speed 
''[FA#]Til they f[SI]ind [FA#]there''s no [SI]need (there''s no n[SOL#m7]eed)   

[FA#]Please, don''t spoil my [SOL#m]day   
I''m miles a[LA#m]way  
And after [SOL#m]all   
I''m only [SI7+]sleeping    [RE#m]        

[DO#m]Keepin'' an eye on the [RE#7]world going by my [SOL#m]window 
[MIm]Takin'' my time 
[RE#7]Lyin'' there and staring at the [SOL#m]ceiling 

[FA#]Waiting f[SI]or a [FA#]sleepy f[LA#7]eeling 

[RE#m]          [SOL#m]           [FA#]     [SI]    [FA#]     [SI]      
[FA#]Please, don''t spoil my d[SOL#m]ay    
I''m miles a[LA#m]way  
And after [SOL#m]all   
I''m only [SI7+]sleeping     [RE#m]        

[DO#m]Keepin'' an eye on the [RE#7]world going by my [SOL#m]window 
[MIm]Takin'' my time 
[RE#7]When I wake up early in the [SOL#m]morning 

[FA#]Lift my [SI]head, [FA#]I''m still [LA#7]yawning 
[RE#m]When I''m in the middle of a [SOL#m]dream 
[FA#]Stay in b[SI]ed, [FA#]float up [SI]stream (float up str[SOL#m]eam)  

[FA#]Please, don''t wake me 
[SOL#m]No, don''t shake me 
[LA#m]Leave me where I [SOL#m]am    
I''m only [SI7+]sleeping...    [RE#m]     
 
', 'im-only-sleeping'),
('In My Life', 'The Beatles', 'Testo e accordi di In My Life di The Beatles', 'Intro:
[LA]     [MI]     [LA]     [MI]   
There are [LA]places [MI]I''ll re[FA#m]member[LA7]    
All my [RE]lif[REm]e though [LA]some have changed 
Some forever, [MI]not for [FA#m]better [LA7]    
Some have [RE]gon[REm]e and [LA]some remain 
All these [FA#m]places have their [RE]moments 
With [SOL]lovers and friends I [LA]still can recall 
Some are [FA#m]dead and some are [SI]living 
In [REm]my life I''ve [LA]loved them all 

[LA]     [MI]   
But of [LA]all these [MI]friends and [FA#m]lovers[LA7]    
There is [RE]no [REm]one com[LA]pares with you 
And these memories [MI]lose their [FA#m]meaning[LA7]    
When I [RE]think of [REm]love as [LA]something new 
Though I [FA#m]know I''ll never lose a[RE]ffection 
For [SOL]people and things that [LA]went before 
I [FA#m]know I''ll often stop and think a[SI]bout them 
In [REm]my life I [LA]love you more 

[LA]    [MI]    [FA#m]      [LA7]     [RE]    [REm]     [LA]   
[LA]    [MI]    [FA#m]      [LA7]     [RE]    [REm]     [LA]   
Though I [FA#m]know I''ll never lose a[RE]ffection 
For [SOL]people and things that [LA]went before 
I [FA#m]know I''ll often stop and think a[SI]bout them 
In [REm]my life I [LA]love you more     [MI]   
In [REm]my life I love you [LA]more [MI]   [MI7]    [LA]    
 
', 'in-my-life'),
('I’ve Just Seen a Face', 'The Beatles', 'Testo e accordi di I’ve Just Seen a Face di The Beatles', 'Intro:
[FA#m]            [MI]   [RE]   [MIm]       [RE]     [RE]       [MI]       [MI7]    
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
[RE] Me back ag[LA]ain 

[LA]          [LA]        [FA#m]            [MI]   [RE]      [MI]    [LA]   
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
[RE] Me back again  [MI]    [LA]   
 
', 'ive-just-seen-a-face'),
('Lady Madonna', 'The Beatles', 'Testo e accordi di Lady Madonna di The Beatles', 'Intro:
[LA]    [RE]    [LA]    [RE]    [LA]    [RE]    [FA]    [LA]   
[LA]Lady Ma[RE]donna, [LA]children at your [RE]feet. 
[LA]Wonder how you [RE]manage to [FA]make ends [LA]meet. 
[LA]Who finds the [RE]money [LA]when you pay the [RE]rent. 
[LA]Did you think that [RE]money was [FA]heaven [LA]sent? 

[REm7]Friday night arrives without a [SOL7]suitcase. 
[DO]Sunday morning creeping like a [LAm]nun. 
[RE7]Monday''s child has learned to tie his [SOL7]bootlace. 
[DO]See.. [SIm]how they''ll [MI7]run. 

[LA]Lady Ma[RE]donna, [LA]baby at your [RE]breast. 
[LA]Wonder how you [RE]manage to [FA]feed the [LA]rest. 
Strumentale:
[LA]    [RE]    [LA]    [RE]    [LA]    [RE]    [FA]    [LA]   
[REm7]Ba ba ba ba ba ba ba  
ba[C] ba ba ba ba ba[Am] ba ba 
[REm7]ba ba ba ba ba ba ba ba 
[DO]See.. [SIm]how they''ll [MI7]run. 

[LA]Lady Ma[RE]donna, [LA]lying on your [RE]bed. 
[LA]Listen to the [RE]music playing [FA]in your [LA]head. 
Strumentale:
[LA]    [RE]    [LA]    [RE]    [LA]    [RE]    [FA]    [LA]   
[REm7]Tuesday afternoon is never [SOL7]ending, 
[DO]Wednesday morning papers didn''t [LAm]come. 
[RE7]Thursday night your stockings needed [SOL7]mending. 
[DO]See.. [SIm]how they''ll [MI7]run. 

[LA]Lady Ma[RE]donna, [LA]children at your [RE]feet. 
[LA]Wonder how you [RE]manage to [FA]make ends [LA]meet. 
Strumentale:
[LA]    [RE]    [FA]    [LA]   
', 'lady-madonna'),
('Let It Be', 'The Beatles', 'Testo e accordi di Let It Be di The Beatles', 'Intro:
[DO]    [SOL]     [LAm]     [SOL]    [FA7+]      [FA6]    
[DO]    [SOL]     [FA]   [MIm]    [REm]    [DO]   
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
[FA]    [MIm]    [REm]    [DO]      [SIb]    [FA]   [SOL]     [FA]        [DO]   
[FA]    [MIm]    [REm]    [DO]      [SIb]    [FA]   [SOL]     [FA]        [DO]   
Solo:
[DO]    [SOL]     [LAm]     [FA]    [DO]    [SOL]     [FA]    [DO]   
[DO]    [SOL]     [LAm]     [FA]    [DO]    [SOL]     [FA]    [DO]   
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
let it [FA]be  [MIm]    [REm]    [DO]   
 
', 'let-it-be'),
('Lucy in the Sky with Diamonds', 'The Beatles', 'Testo e accordi di Lucy in the Sky with Diamonds di The Beatles', 'Intro:
[LA]     [LA]         [FA#m7]        [FA]   
[LA]Picture your[LA]self in a [FA#m7]boat on a [REm]river  
With [LA]tangerine [LA]trees and [FA#m7]marmalade [FA]skies 
[LA]Somebody [LA]calls you, you [FA#m7]answer quite [REm]slowly 
A [LA]girl with ka[LA]leidoscope [FA#m7]eyes     [REm]     [RE]      

[SIb]Cellophane flowers of [DOadd9]yellow and green 
[FA]Towering over your [SIb]head 

[DOadd9]Look for the girl with the [SOL]sun in her eyes    
And she''s [RE]gone 

[SOL]Lucy in the [DO]sky with [RE]diamonds 
[SOL]Lucy in the [DO]sky with [RE]diamonds 
[SOL]Lucy in the [DO]sky with [RE]diamonds  Ah... 

[LA]Follow her d[LA]own to a b[FA#m7]ridge by a [REm]fountain 
Where [LA]rocking horse [LA]people eat [FA#m7]marshmallow [FA]pies 
[LA]Everyone [LA]smiles as you [FA#m7]drift past the [REm]flowers 
That [LA]grow so in[LA]credibly [FA#m7]high    [REm]     [REm]       

[SIb]Newspaper taxis a[DOadd9]ppear on the shore 
[FA]Waiting to take you a[SIb]way 

[DOadd9]Climb in the back with your [SOL]head in the clouds 
And you''re [RE]gone 

[SOL]Lucy in the [DO]sky with [RE]diamonds 
[SOL]Lucy in the [DO]sky with [RE]diamonds 
[SOL]Lucy in the [DO]sky with [RE]diamonds  Ah... 

[LA]Picture your[LA]self on a [FA#m7]train in a [REm]station 
With [LA]plasticine [LA]porters with [FA#m7]looking glass [FA]ties 
[LA]Suddenly [LA]someone is [FA#m7]there at the [REm]turnstile 
The [LA]girl with the ka[LA]leidoscope [FA#m7]eyes...  [REm]     [REm]       

[SOL]Lucy in the [DO]sky with [RE]diamonds 
[SOL]Lucy in the [DO]sky with [RE]diamonds 
[SOL]Lucy in the [DO]sky with [RE]diamonds  Ah... [LA]   
[SOL]Lucy in the [DO]sky with [RE]diamonds 
[SOL]Lucy in the [DO]sky with [RE]diamonds 
[SOL]Lucy in the [DO]sky with [RE]diamonds  Ah... [LA]   
 
', 'lucy-in-the-sky-with-diamonds'),
('Michelle', 'The Beatles', 'Testo e accordi di Michelle di The Beatles', 'Intro:
[FAm]     [DO5+]         [LAb]         [REm7]         [REb7+]       [DO]   
[FA]Michelle, [SIbm7]  ma belle, [MIb6]these are words that [REdim]go      
to[SIdim]gether [DO]well, [SIdim]my  Mi[DO]chelle 
[FA]Michelle, [SIbm7]  ma belle [MIb6]sont des mots qui [REdim]vont        
tres [SIdim]bien en[DO]semble, [SIdim]tres bien en[DO]semble 
I [FAm]love you, I love you, I love you,  
[LAb7] that''s all I want to [REb]say 
[DO7]  until I find a [FAm]way 
I will say the [DO5+]only    [LAb]words  I [REm7]know        
that [REb7+]you''ll under[DO]stand 

[FA]Michelle, [SIbm7]  ma belle [MIb6]sont des mots qui [REdim]vont        
tres [SIdim]bien en[DO]semble, [SIdim]tres bien en[DO]semble 
I [FAm]need to, I need to, I need to,   
[LAb7] I need to make you [REb]see 
[DO7]  oh what you mean to [FAm]me  
until I [DO5+]do  I''m [LAb]hoping  [REm7]you will [REb7+]know what I [DO]mean 
I [FA]love you... 

[SIbm7]         [MIb7]        [REdim]       [SIdim]       [DO]    [SIdim]       [DO]   
I [FAm]want you, I want you, I want you,  
[LAb7] I think you know by [REb]now 
[DO7]  I''ll get to you some[FAm]how 
until I [DO5+]do  I''m [LAb]telling [REm7]you so   [REb7+]      
you''ll under[DO]stand 

[FA]Michelle, [SIbm7]  ma belle [MIb6]sont des mots qui [REdim]vont        
tres [SIdim]bien en[DO]semble, [SIdim]tres bien en[DO]semble 
And I will say the [DO5+]only    [LAb]words  I [REm7]know that[REb7+]      
you''ll under[DO]stand, my Mi[FA]chelle... 

[SIbm7]         [MIb7]        [REdim]       [SIdim]       [DO]    [SIdim]       [DO]   
', 'michelle'),
('Norwegian Wood', 'The Beatles', 'Testo e accordi di Norwegian Wood di The Beatles', 'Intro:
e|[MI]-------------------------[RE]---[LA]---[MI]--| 
[B|-0---2-0-------------------------|]G|---------2-1-----2-1-------2-----| 
[D|---------------4-----2---0-------|]A|----------------------------4-2--| 
[E|---------------------------------|]                                      
[MI]I once had a girl, or should I say, [RE]she once [LA]had   [MI]me 
She showed me her room, isn''t it good, [RE]Norwe-[LA]gian  [MI]wood 

She [MIm]asked me to stay and she told me to sit any[LA]where 
So [MIm]I looked around                             
and I noticed there wasn''t a [FA#m]chair   [SI]   

[MI]I sat on a rug, biding my time, [RE]drinking [LA]her   [MI]wine 
We talked until two, and then she said, 
[RE]it''s time [LA]for   [MI]bed 

[MI]          [RE]       [LA]      [MI]            [RE]       [LA]      [MI]   
She [MIm]told me she worked in the morning                
and started to [LA]laugh 
I [MIm]told her I didn''t and crawled off  
to sleep in the [FA#m]bath    [SI]   

[MI]And when I awoke, I was alone, [RE]this bird [LA]had   [MI]flown 
So, I lit a fire, isn''t it good, [RE]Norwe-[LA]gian  [MI]wood 

[MI]          [RE]       [LA]      [MI]          
', 'norwegian-wood'),
('Now and Then', 'The Beatles', 'Testo e accordi di Now and Then di The Beatles', 'Intro:
[(One,]      [two,]     [three)]       
[LAm]       [SOL6]        [LAm]       [SOL6]     
[LAm] I know it''s t[SOL6]rue  
[LAm] It''s all beca[SOL6]use of you 
[LAm] And, if I [FA7+]make it through 
It''s [MI7]all because of [SOL]you...  [LAm]    
And, now and t[SOL6]hen  
[LAm] If we must [SOL6]start again 
[LAm] Well, we will [FA]know for sure 
That [MI7]I will [SOL]love   [LAm]you 

[SOL] Now and then 
I miss [SIm]you 
Oh, [MIm]now and then 
I w[LAm]ant you to be [RE]there for me 
[LAm]Always to re[RE]turn to me 

[LAm] I know it''s [SOL6]true 
[LAm] It''s all because [SOL6]of you 
[LAm] And, if you [FA]go away 
I k[MI7]now you''ll never [SOL]sta----[LAm]y   

[SOL] Now and then 
I miss [SIm]you 
Oh, [MIm]now and then 
I w[LAm]ant you to be [RE]there for me 

[REm]Ah...      [DO]          [REm]           [DO]   

[MIm]           [LAm]           [RE]          [REm]       [SOL]    
[LAm] I know it''s [SOL6]true 
[LAm] It''s all because [SOL6]of you 
[LAm] And, if I [FA]make it through 
It''s [MI7]all because of [SOL]you... [LAm]    

[SOL]       [MI7]       [LAm]       [SOL]       [MI7]       [LAm]    
[SOL]     [FA]    [MI7]     [LAm]    
', 'now-and-then'),
('Nowhere Man', 'The Beatles', 'Testo e accordi di Nowhere Man di The Beatles', '
[MI]He''s a real [SI]nowhere man 
[LA]Sitting in his [MI]nowhere land 
[FA#m7]Making all his [LAm]nowhere plans for [MI]nobody [MI9]    
[MI]Doesn''t have a [SI]point of view 
[LA]Knows not where he''s [MI]going to 
[FA#m7]Isn''t he a [LAm]bit like you and [MI]me? 

Nowhere [SOL#m]man please [LA]listen 
You don''t [SOL#m]know what you''re [LA]missing 
Nowhe[SOL#m]re man, the [LAadd9]world is at your command [SI]   

[MI]      [SI]      [LA]      [MI]      [FA#m7]         [LAm]       [MI]   
[MI]He''s as blind as [SI]he can be 
[LA]Just sees what he [MI]wants to see 
[FA#m7]Nowhere man, can [LAm]you see me at [MI]all 

Nowhere [SOL#m]man don''t [LA]worry 
Take your [SOL#m]time, don''t [LA]hurry 
Leave it [SOL#m]all ''til [LAadd9]somebody else 
Lends you a hand [SI]   
Ah, la, la, la, la

[MI]Doesn''t have a [SI]point of view 
[LA]Knows not where he''s [MI]going to 
[FA#m7]Isn''t he a [LA]bit like you and [MI]me? 

Nowhere [SOL#m]man please [LA]listen 
You don''t [SOL#m]know what you''re [LA]missing 
Nowhere [SOL#m]man, The [LAadd9]world is at your command[SI]   
Ah, la, la, la, la

[MI]He''s a real [SI]nowhere man 
[LA]Sitting in his [MI]nowhere land 
[FA#m7]Making all his [LAm]nowhere plans for [MI]nobody 
[FA#m7]Making all his [LAm]nowhere plans for [MI]nobody 
[FA#m7]Making all his [LAm]nowhere plans for [MI]nobody 
 
', 'nowhere-man'),
('Ob-La-Di, Ob-La-Da', 'The Beatles', 'Testo e accordi di Ob-La-Di, Ob-La-Da di The Beatles', 'Intro:
[FA7]        [SIb]    
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

[MIb] In a couple of years they have built             
a home sweet [SIb]home   [SIb7]      [MIb]    
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

[MIb] In a couple of years they have built             
a home sweet h[SIb]ome    [SIb7]      [MIb]    
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
And if ya want some fun,
Sing [FA7]Ob-la-di, Bla-[SIb]da! 
 
', 'ob-la-di-ob-la-da'),
('Octopus’s Garden', 'The Beatles', 'Testo e accordi di Octopus’s Garden di The Beatles', 'Intro:
e|-----------------------------[SI]---[MI]---| 
[B|--------------12-14-12-------------|]G|------9-11-13----------13-11-9--13-| 
[D|-9-11------------------------------|]A|-----------------------------------| 
E|-----------------------------------|
e|--------------12-----------------[SI7]-------|-[MI]-- 
[B|-----------------14-12-----------10--11-|-12]G|------9-11-13----------13-11-9---11--12-|-13 
[D|-9-11-----------------------------------|---]A|----------------------------------------|--- 
[E|----------------------------------------|---]                                               
[DO#m]       [LA]     [SI]   
[MI] I''d like to be 
[DO#m] Under the sea 
In an [LA]octopus'' garden 
In the [SI]shade 
[MI] He''d let us in 
[DO#m] Knows where we''ve been 
In his [LA]octopus'' garden 
In the [SI]shade 
[DO#m] I''d ask my friends 
To come and se[SI]e   [LA]   
An octopus'' [SI]garden with me 

[MI] I''d like to be [SI]       [DO#m]     
Under the sea
[SI] In an [LA]octopus'' [SI]garden 
In the [MI]shade 
We would be warm  [SI]       [DO#m]     
Below the storm
[SI] In our [LA]little hideaway 
Beneath the [SI]waves 
[MI] Resting our head  [SI]       [DO#m]     
On the seabed
[SI] In an [LA]octopus'' garden near a [SI]cave 

[DO#m] We would sing 
And dance aro[SI]und [LA]   
Because we know
We [SI]can''t be found 
[MI] I''d like to be [SI]       [DO#m]     
Under the sea
[SI] In an [LA]octopus'' [SI]garden 
In the [MI]shade 

[LA]        [FA#m]          [RE]        [SI]   
[MI]        [DO#m]          [RE]    [MI]    [LA]    [SI]   
[MI] We would shout 
[DO#m] And swim about 
The [LA]coral that lies 
Beneath the [SI]waves (Lies beneath the ocean [MI]waves) 
Oh what joy
For [DO#m]every girl and boy 
[LA]Knowing they''re happy 
And they''re [SI]safe (Happy and they''re [DO#m]safe) 
We would be so happy
You and me [SI]    
[LA]No one there to tell us What to [SI]do 

[MI] I''d like to be [SI]       [DO#m]     
Under the sea
[SI] In an [LA]octopus'' [SI]garden 
With [DO#m]you  
[SI] In an [LA]octopus'' [SI]garden with [DO#m]you  
[SI] In an [LA]octopus'' [SI]garden with [MI]you    [SI]   [MI]   
 
', 'octopuss-garden'),
('Oh! Darling', 'The Beatles', 'Testo e accordi di Oh! Darling di The Beatles', '
[MI7]  ...Oh [LA]darling, please be[MI]lieve me 
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
[SIm7]  I''ll never [MI7]do you no [LA]harm  [RE]      [LA]    [SIb9]     [LA9]    
 
', 'oh-darling'),
('Paperback Writer', 'The Beatles', 'Testo e accordi di Paperback Writer di The Beatles', '
[DO]Paperback [SOL6]wri--[SOL]ter (paperback [SOL4]wri--[DO]ter)   

e|--[SOL]-----------------------------------| 
[B|-------------------------------------|]G|------------0------------------------| 
[D|---------0---------3-----------0--3--|]A|------3------------------3-----------| 
[E|---3------------3-----3-----3--------|]                                         
[e|-------------------------------------|]B|-------------------------------------| 
[G|------------0------------------------|]D|---------0---------3-----------0--3--| 
[A|------3------------------3-----------|]E|---3------------3-----3-----3--------| 

Dear [SOL]Sir or Madam, will you read my book? 
It took me years to write, will you take a look?
It''s based on a novel by a man named Lear
And I need a job
So I wanna be a paperback [DO]writer 
Paperback [SOL]writer 
It''s a dirty story of a dirty man
And his clinging wife doesn''t understand
His son is working for the Daily Mail
It''s a steady job
But he wants to be a paperback [DO]writer 
Paperback [SOL]writer 

[DO]Paperback [SOL6]wri--[SOL]ter (paperback [SOL4]wri--[DO]ter)     

[SOL]    
It''s a [SOL]thousand pages, give or take a few 
I''ll be writing more in a week or two
I could make it longer if you like the style
I can change it ''round
And I wanna be a paperback [DO]writer 
Paperback [SOL]writer 
If you really like it you can have the rights
It could make a million for you overnight
If you must return it you can send it here
But I need a break
And I wanna be a paperback [DO]writer 
Paperback [SOL]writer 

[DO]Paperback [SOL6]wri--[SOL]ter (paperback [SOL4]wri--[DO]ter)  [SOL]    
Paperback writer (paperback writer)
Paperback writer (paperback writer)
Paperback writer (paperback writer)
Paperback writer (paperback writer)...
 
', 'paperback-writer'),
('Penny Lane', 'The Beatles', 'Testo e accordi di Penny Lane di The Beatles', '
In Penny L[SI]ane there [SI]is a   [SOL#m7]barber 
[SI]showing [DO#m7]photograph[FA#7]s      [FA#]    
Of every [SI]head he''s [SI]had the 
[SOL#m7]pleasure [SI]to   kn[SIm7]ow   
And all the [SOL#m7]people that come and [SOL7+]go    
stop and s[FA#7]ay hello[FA#]    [FA#7]       [FA#]    
On the [SI]corner [SI]is a   [SOL#m7]banker 
[SI]with a  [DO#m7]motorca[FA#7]r      [FA#]    
The little [SI]children [SI]laugh at h[SOL#m7]im     
behi[SI]nd   hi[SIm7]s back 
And the [SOL#m7]banker never wears a m[SOL7+]ack   
in the p[FA#7]ouring r[FA#]ain, [MI]very strange 

Penny [LA]Lane is in my [LAadd9]ears and in my [RE]eyes 
[LA]There beneath the [LAadd9]blue suburban [RE]skies 
I sit, and [FA#7]mean while [FA#]back 

In Penny L[SI]ane there [SI]is a  f[SOL#m7]ireman 
with [SI]an   ho[DO#m7]urglass[FA#7]       [FA#]    
And in his [SI]pocket [SI]is a  p[SOL#m7]ortrait 
[SI]of the Q[SIm7]ueen 
He likes to [SOL#m7]keep his fire engine c[SOL7+]lean  
It''s a [FA#7]clean ma[FA#]chine [FA#7]       [FA#]    

[SI]    [SI]        [SOL#m7]        [SI]        [DO#m7]       [FA#7]       [FA#]    
[SI]    [SI]        [SOL#m7]        [SI]        [SIm7]     
[SOL#m7]           [SOL7+]       [FA#7]       [FA#]     [MI]   
Penny [LA]Lane is in my e[LAadd9]ars and in my [RE]eyes 
[LA]  A four of [LAadd9]fish and finger [RE]pie in summer 
[FA#7]meanwhile [FA#]back 

Behind the [SI]shelter [SI]in the m[SOL#m7]iddle  
o[SI]f the r[DO#m7]oundabou[FA#7]t      [FA#]    
The pretty [SI]nurse is [SI]selling [SOL#m7]poppies 
[SI]from a [SIm7]tray 
And tho'' she [SOL#m7]feels as if she''s in a [SOL7+]play  
she is a[FA#7]nyway  [FA#]      [FA#7]       [FA#]    
In Penny [SI]Lane the [SI]barber s[SOL#m7]haves  
an[SI]other  [DO#m7]customer [FA#7]       [FA#]    
We see the [SI]banker s[SI]itting w[SOL#m7]aiting 
[SI]for a t[SIm7]rend 
And then the f[SOL#m7]ireman rushes [SOL7+]in    
from the [FA#7]pouring rai[FA#]n,  [MI]very strange 

Penny [LA]Lane is in my [LAadd9]ears and in my [RE]eyes 
[LA]There beneath the [LAadd9]blue suburban [RE]skies I sit 
and [FA#7]mean while [FA#]back 

Penny [SI]Lane is in my [RE#m7]ears and in my [MI]eyes 
[SI]There beneath the [RE#m7]blue suburban s[MI]kies 
Penny Lane [SI]   
 
', 'penny-lane'),
('Please Please Me', 'The Beatles', 'Testo e accordi di Please Please Me di The Beatles', 'Intro:
[MI]   
[MI] Last night I said these words to [LA]my [MI]girl  [SOL]    [LA]   [SI]   
[MI] I know you never even [LA]try, [MI]girl 
C''[LA]mon (C''mon), c''[FA#m]mon (C''mon),  
c''[DO#m]mon (C''mon), c''[LA]mon (C''mon) 
Please [MI]please me, oh [LA]yeah, like [SI7]I please [MI]you  [LA]   [SI]   

[MI] You don''t need me to show the [LA]way, [MI]love [SOL]    [LA]   [SI]   
[MI] Why do I always have to [LA]say "[MI]love" 
C''[LA]mon (C''mon), c''[FA#m]mon (C''mon),  
c''[DO#m]mon (C''mon), c''[LA]mon (C''mon) 
Please [MI]please me, oh [LA]yeah, like [SI7]I please [MI]you   

[LA]I don''t wanna sound complaining 
[SI]But you know there''s always rain in [MI]my heart  
(In my heart)
[LA]I do all the pleasing with you,  
[SI]it''s so hard to reason 
With [MI]you, oh [LA]yeah, why [SI7]do you make me [MI]blue  [LA]   [SI]   

[MI] Last night I said these words to [LA]my [MI]girl [SOL]    [LA]   [SI]   
[MI] I know you never even [LA]try, [SI]girl 
C''[LA]mon (C''mon), c''[FA#m]mon (C''mon),  
c''[DO#m]mon (C''mon), c''[LA]mon (C''mon) 
Please [MI]please me, oh [LA]yeah, like [SI7]I please [MI]you  
(Me) Whoa [LA]yeah, like [SI7]I please [MI]you 
(Me) Whoa [LA]yeah, like [SI7]I please [MI]you [SOL]     [DO]    [SI7]     [MI]   
 
', 'please-please-me'),
('Rain', 'The Beatles', 'Testo e accordi di Rain di The Beatles', 'Intro:
[SOL]    
If the [SOL]rain comes 
They [DO]run and [RE]hide their [SOL]heads 
They [DO]might as [RE]well be[SOL] dead 
If the [DO]rain comes 
If the [SOL]rain comes 
When the sun shines
They [DO]slip in[RE]to the [SOL]shade (when the sun shines down) 
And [DO]sip their [RE]lemo[SOL]nade (when the sun shines down) 
When the [DO]sun shines 
When the [SOL]sun shines 

[SOL]Ra---------[SOL4]in   
I don''t [SOL]mind 
Shi--------[SOL4]ne   
The weather''s [SOL]fine 

I can [SOL]show you 
That [DO]when it [RE7]starts to[SOL] rain  
(when the rain comes down)
[DO]Every[RE]thing is the[SOL] same (when the rain comes down) 
I can [DO]show you 
I can [SOL]show you 

[SOL]Ra---------[SOL4]in   
I don''t [SOL]mind 
Shi--------[SOL4]ne   
The weather''s [SOL]fine 

Can you [SOL]hear me? 
That [DO]when it [RE]rains and [SOL]shines  
(when it rains and shines)
It''s [DO]just a [RE]state of [SOL]mind?  
(When it rains and shines)
Can you [DO]hear me? 
Can you [SOL]hear me? 

[SOL] Sdeah reiht edih dna nur yeht,  
semoc niar eht fi (rain)
Niar (rain)
Senihs nus
 
', 'rain'),
('Real Love', 'The Beatles', 'Testo e accordi di Real Love di The Beatles', 'Intro:
[MIbm]        [SIb7]        [MIbm]        [SIb7]     
[MIb]All my little plans and [SOLm]schemes 
[DOm]Lost like some forgotten dream[SIb5+]s                        
[LAb]Seems that all I really [SOLm]was d[FAm]oing  [SIb]    
Was waiting for [MIb]you   [LAb]      [MIb]      [LAb]    
[MIb]Just like little girls and [SOLm]boys    
[DOm]Playing with their little toys[SIb5+]                 
[LAb]Seems like all they really w[SOLm]ere d[FAm]oing  [SIb]    
Was waiting for [MIb]love  [LAb]      [MIb]      [LAb]    
[MIb]Don''t need to be a[LAbm]lone 
[MIb]No need to be a[LAbm]lone 

[MIb] It''s [DOm]real l[LAb]ove, it''s [SIb]re---[MIb]al  
Yes, it''s [DOm]real l[LAb]ove, it''s [SIb]real 

[MIbm]        [SIb7]        [MIbm]        [SIb7]     
[MIb]From this moment on I k[SOLm]now     
E[DOm7]xactly where my life will go[SIb5+]         
[LAb]Seems that all I really [SOLm]was d[FAm]oing  [SIb]    
Was waiting for [MIb]love  [LAb]      [MIb]      [LAb]    
[MIb]Don''t need to be a[LAbm]fraid 
[MIb]No need to be a[LAbm]fraid 

[MIb] It''s [DOm]real l[LAb]ove, it''s [SIb]re---[MIb]al  
Yes, it''s [DOm]real l[LAb]ove, it''s [SIb]real [FAm7]      [LAb]       [DO7]    

[FAm]           [SIb4]        [SIb]    
[MIb]Thought I''d been in love bef[SOLm]ore     
But [DOm]in my heart, I wanted mo[SIb5+]re             
[LAb]Seems like all I really [SOLm]was do[FAm]ing  [SIb]    
Was waiting for [MIb]you   [LAb]      [MIb]      [LAb]    
[MIb]Don''t need to be al[LAbm]one     
[MIb]Don''t need to be al[LAbm]one  

[MIb] It''s [DOm]real l[LAb]ove, it''s [SIb]re---[MIb]al  
Yes, it''s [DOm]real l[LAb]ove, it''s [SIb]re---[MIb]al  
Yes, it''s [DOm]real l[LAb]ove, it''s [SIb]re---[MIb]al  
It''s [DOm]real l[LAb]ove, it''s [SIb]re---[MIb]al  
Yes, it''s [DOm]real l[LAb]ove, it''s [SIb]re---[MIb]al  
It''s [DOm]real l[LAb]ove, it''s [SIb]re---[MIb]al  
Yes, it''s [DOm]real l[LAb]ove, it''s [SIb]re---[MIb]al  
It''s [DOm]real l[LAb]ove, it''s [SIb]real... 
 
', 'real-love'),
('Revolution', 'The Beatles', 'Testo e accordi di Revolution di The Beatles', '
You [SI]say you want a revolution 
Well, you [MI]know 
We all want to change the [SI]world 
You tell me that it''s evolution
Well, you [MI]know 
We all want to change the [FA#]world  [DO#m]     
But when you talk about des[FA#]truction  [DO#m]     
Don''t you know that you can [LA]count [SI]me [SOL#]out    [FA#]    
Don''t you know it''s gonna [SI]be 
All [MI]right,[SI] all [MI]right,[SI] all [MI]right [FA#7]     

You [SI]say you got a real solution 
Well, you [MI]know 
We''d all love to see the [SI]plan 
You ask me for a contribution
Well, you [MI]know 
We''re doing what we [FA#7]can     [DO#m]     
But if you want money for people with [FA#]minds that hate 
[DO#m]All I can tell is brother you [LA]have [SI]to [SOL#]wait   [FA#7]     
Don''t you know it''s gonna [SI]be 
All [MI]right,[SI] all [MI]right,[SI] all [MI]right  [FA#7]     

[SI]     [MI]     [FA#]    
You [SI]say you''ll change the constitution 
Well, you [MI]know 
We all want to change yo[SI]ur head 
You tell me it''s the institution
Well, you [MI]know 
You better free you mind in[FA#]stead   [DO#m]     
But if you go carrying pictures of [FA#]chairman Mao 
[DO#m]You ain''t going to make it with [LA]any[SI]one[SOL#] anyhow  [FA#]    
Don''t you know it''s gonna [SI]be 
All [MI]right[SI], all [MI]right[SI], all [MI]right  [FA#7]     

All [SI]right, all [MI]right, all [SI]right 
All [MI]right, all [SI]right, all [MI]right  [FA#7]     
All right, all right  [SI]   
 
', 'revolution'),
('The Ballad of John And Yoko', 'The Beatles', 'Testo e accordi di The Ballad of John And Yoko di The Beatles', '
[MI]  ...Standing in the dock at Southampton 
Trying to get to Holland or France
The man in the Mac said, "You''ve got to go back"
You know, they didn''t even give us a chance
Christ, you know it ain''t [LA]easy 
You know how hard it can b[MI]e  
The way things are [SI]going 
They''re gonna crucify [MI]me 

[MI]Finally, made the plane into Paris 
Honeymooning down by the Seine
Peter Brown called to say, "You can make it okay
You can get married in Gibraltar, near Spain"
Christ, you know it ain''t [LA]easy 
You know how hard it can b[MI]e  
The way things are g[SI]oing 
They''re gonna crucify [MI]me 

Drove from [MI]Paris to the Amsterdam Hilton 
Talking in our beds for a week
The news people said, "Say what you doing in bed"
I said, "We''re only trying to get us some peace"
Christ, you know it ain''t [LA]easy 
You know how hard it can b[MI]e  
The way things are g[SI]oing 
They''re gonna crucify [MI]me 

[LA]Saving up your money for a rainy day 
Giving all your clothes to charity
Last night the wife said, 
"Poor boy, when you''re dead
You [SI]don''t take, nothing with you but your soul" 

[MI]Made a lightning trip to Vienna 
Eating chocolate cake in a bag
The newspaper said, "She''s gone to his head
They look just like two gurus in drag"
Christ, you know it ain''t [LA]easy 
You know how hard it can b[MI]e  
The way things are g[SI]oing 
They''re gonna crucify [MI]me 

[MI]Caught the early plane back to London 
50 acorns tied in a sack
The men from the press said, "We wish you success
It''s good to have the both of you back"
Christ, you know it ain''t [LA]easy 
You know how hard it can b[MI]e  
The way things are g[SI]oing 
They''re gonna crucify [MI]me 
The way things are g[SI]oing 
They''re gonna crucify [MI]me 

[SI]          [MI]        [MI6]    
', 'the-ballad-of-john-and-yoko'),
('Sgt. Pepper’s Lonely Hearts Club Band', 'The Beatles', 'Testo e accordi di Sgt. Pepper’s Lonely Hearts Club Band di The Beatles', 'Intro:
[LA7]           [DO7]      [SOL7]     
It was [SOL7]twenty years ago to[LA7]day 
Sergeant [DO7]Pepper taught the band to [SOL7]play 
They''ve been going in and out of [LA7]style 
But they''re [DO7]guaranteed to raise a [SOL7]smile 
So [LA7]may I introduce to you 
The [DO7]act you''ve known for all these years 
[SOL7]Sergeant Pepper''s [DO7]Lonely Heart''s Club [SOL7]Band 

[DO7]       [FA]       [DO7]       [RE7]    
We''re [SOL]Sergeant Pepper''s [SIb]Lonely He[DO7]art''s Club B[SOL7]and  
We [DO7]hope you will enjoy the sh[SOL7]ow   
Sergeant Pepper''s [SIb]Lonely He[DO7]art''s Club B[SOL7]and  
Sit [LA7]back and let the evening [RE7]go  

[DO7]Sergeant Pepper''s Lonely 
S[SOL7]ergeant Pepper''s Lonely 
S[LA7]ergeant Pepper''s Lonely 
[DO7]Heart''s Club [SOL7]Band 

It''s [DO7]wonderful to be here 
It''s [FA7]certainly a thrill 
You''re [DO7]such a lovely audience 
We''d [RE7]like to take you home with us 
We''d love to take you home

I don''t [SOL7]really wanna stop the [LA7]show 
But I [DO7]thought you might like to [SOL7]know 
That the [SOL7]singer''s gonna sing a [LA7]song 
And he [DO7]wants you all to sing a[SOL7]long 
So [LA7]may I introduce to you 
The [DO7]one and only Billy Shears 
[SOL7]Sergeant Pepper''s [DO7]Lonely Heart''s Club [SOL7]Band    [DO7]    
 
', 'sgt-peppers-lonely-hearts-club-band'),
('She Loves You', 'The Beatles', 'Testo e accordi di She Loves You di The Beatles', '
She [MIm]loves you, yeah, yeah, yeah 
She [LA7]loves you, yeah, yeah, yeah 
She [DO]loves you, yeah, yeah, [SOL6]yeah  [SOL]    

You [SOL]think you''ve lost your [MIm]love 
Well I [SIm]saw her yester[RE]day 
It''s [SOL]you she''s thinking [MIm]of  
And she [SIm]told me what to [RE]say 

She [SOL]loves you 
And you know that can''t be [MIm]bad    
Yes she [DOm]loves you 
And you know you should be [RE]glad 

She [SOL]said you hurt her [MIm]so  
She [SIm]almost lost her [RE]mind 
But [SOL]now she says she [MIm]knows 
You''re [SIm]not the hurting [RE]kind 

She [SOL]loves you 
And you know that can''t be [MIm]bad    
Yes she [DOm]loves you 
And you know you should be [RE]glad 

She [MIm]loves you, yeah, yeah, yeah 
She [LA7]loves you, yeah, yeah, yeah 
With a [DOm]love like that 
You [RE]know you should be [SOL]glad 

And [SOL]so its up to you 
I [SIm]think it''s only [RE]fair 
[SOL]Pride can hurt you [MIm]too 
A[SIm]pologize to [RE]her 
She [SOL]loves you 
And you know that can''t be [MIm]bad    
Yes she [DOm]loves you 
And you know you should be [RE]glad 

She [MIm]loves you, yeah, yeah, yeah 
She [LA7]loves you, yeah, yeah, yeah 
With a [DOm]love like that 
You [RE]know you should be [SOL]glad [MIm]    
With a [DOm]love like that 
You [RE7]know you should be [SOL]glad [MIm]    
With a [DOm]love like that 
You [RE7]know you should be [SOL]glad [MIm]    
Yeah, yeah, yeah
[DO]  Yeah, yeah, yeah, [SOL6]yeah 
 
', 'she-loves-you'),
('Something', 'The Beatles', 'Testo e accordi di Something di The Beatles', 'Intro:
e[|]|-----[FA]---------------[MIb]----[SOL]--------| 
[B|--------10--13br-10-11--12------|]G|--------------------------------| 
[D|--------------------------------|]A|--------------------------------| 
[E|--------------------------------|]                                    
[DO]Something in the way she [DO7+]moves     [DO7]    
Attracts me like no other [FA]lover [FA]      
[RE7]Something in the way she [SOL]woos m[FA]e     [SOL7]        
I [LAm]don''t want to leave her n[LAm7+]ow    
You [LAm7]know I believe her n[RE7]ow   [FA]    [MIb]    [SOL]       

[DO]Somewhere in her smile she k[DO7+]nows      [DO7]    
That I don''t need no other [FA]lover [FA]      
[RE7]Something in her style that s[SOL]hows m[FA]e     [SOL7]        
[LAm]Don''t want to leave her n[LAm7+]ow    
You [LAm7]know I believe her [RE7]now  [FA]     [MIb]    [SOL]       

[LA]   
You''re asking m[DO#m]e will my love [FA#m]grow   [LA]      
I don''t [RE]know, [SOL]I don''t [LA]know  
You stick a[DO#m]round now it may [FA#m]show   [LA]      
I don''t [RE]know, [SOL]I don''t [DO]know 

[DO]    [DO7+]          [DO7]     [FA]      [FA]      
[RE7]     [SOL]    [FA]      [SOL7]        
[LAm]     [LAm7+]      [LAm7]      [RE7]     [FA]     [MIb]    [SOL]       
[DO]Something in the way she k[DO7+]nows      [DO7]    
And all I have to do is [FA]think of her [FA]      
[RE7]Something in the things she [SOL]shows m[FA]e     [SOL7]        
[LAm]Don''t want to leave her no[LAm7+]w     
You [LAm7]know I believe her [RE7]now     

[FA]     [MIb]    [SOL]       [LA]   
[FA]     [MIb]    [SOL]       [DO]   
', 'something'),
('Strawberry Fields Forever', 'The Beatles', 'Testo e accordi di Strawberry Fields Forever di The Beatles', 'Intro:
[MI]    [MI7+]      [MI7]       [SOL#m7]          [DO#7]     
[FA#m]      [MI]    [RE]   [LA]   
[LA] Let me take you down 
''Cause I''m going [MIm7]to Strawberry Fields           
[FA#] Nothing is real 
And [RE]nothing to get [FA#]hung about 
[RE]Strawberry Fields fo[LA]rever 

[MI]Living is [MI7+]easy with [MI7]eyes closed [MI9]    [DO#7]     

[FA#m] Misunder[FA#m]standing all you [RE]see 
It''s getting [MI]hard to be some[LA]one 
But [LA]it all  [FA#m]works out[FA#m]        
[RE] It doesn''t [MI]matter much t[RE]o me  [LA]   
      
Let me take you down
''Cause I''m going [MIm7]to Strawberry Fields [MIm]       
[FA#] Nothing is real 
And [RE]nothing to [MI]get [FA#]hung about 
[RE]Strawberry Fields fo[LA]rever 

[MI]No one [MI7+]I think is [MI7]in my t[MI9]ree [DO#7]     

[FA#m] I mean it [LA]must be high or [RE]low   [RE]       [MI]   
[RE] That is you [MI]can''t, you know, tune [LA]in 
But it''s all [FA#m]right  [MI]   
[RE] That is I [MI]think it''s not to[RE]o bad [LA]   
 
Let me take you down
''Cause I''m going [MIm7]to Strawberry Fields [MIm]       
[DO#m7] Nothing is real 
And [RE]nothing to [MI]get [FA#]hung about 
[RE]Strawberry Fields fo[LA]rever 

[MI]Always, n[MI7+]o some[MI7]times, think it''s [MI9]me  [DO#7]     

[FA#m] But you know I [LA]know when it''s a [RE]dream [RE]       [MI]   
[RE] I think I [MI]know I mean a [LA]yes 
But it''s all [FA#m]wrong [MI]   
[RE] That is I [MI]think I disa[RE]gree [LA]   
 
Let me take you down
''Cause I''m going [MIm7]to Strawberry Fields[MIm]       
[FA#7] Nothing is real 
And [RE]nothing to [MI]get [FA#]hung about 
[RE]Strawberry Fields fo[LA]rever [FA#m]     
[RE]Strawberry Fields fo[LA]rever  
[RE]Strawberry [MI]Fields fo[RE]rever 

[LA]      
', 'strawberry-fields-forever'),
('The Long And Winding Road', 'The Beatles', 'Testo e accordi di The Long And Winding Road di The Beatles', '
[DOm]The long and winding r[LAb]oad     
that [MIb]leads [MIb7]to your d[LAb]oor  
will [SOLm]never disapp[DOm]ear  
[FAm] I''ve seen that [SIb7]road bef[MIb]ore  [REb]        
[LAb] It [SOLm]always [DOm]leads me her  
[FAm] Lead me [SIb7]to you [MIb]door  
The [DOm]wild and windy ni[LAb]ght     
that the [MIb]rain [MIb7]washed a[LAb]way  
Has [SOLm]left a [DOm]pool of tears  
[FAm7] crying [SIb7]for the [MIb]day  [REb]        
[LAb] Why [SOLm]leave me s[DOm]tanding here  
[FAm7] let me [SIb7]know the [MIb]way  

[MIb]Many times I''ve [LAb]been alone  
and [MIb]many times I''ve [FAm7]cried  [SIb7]     
[MIb]Any way you''ll [LAb]never know  
the [MIb]many ways I''ve [FAm7]tried  [SIb7]     

But [DOm]still they lead me b[LAb]ack     
to the [MIb]long [MIb7]winding r[LAb]oad  
You [SOLm]left me w[DOm]aiting here  
[LAb] a long l[SIb7]ong time a[MIb]go   [REb]        
[LAb] Don''t [SOLm]leave me [DOm]standing here  
[FAm7] lead me [SIb7]to your [MIb]door  

[MIb]         [LAb]     [MIb]         [FAm7]      [SIb7]     
[MIb]         [LAb]     [MIb]         [FAm7]      [SIb7]     
But [DOm]still they lead me b[LAb]ack     
to the [MIb]long [MIb7]winding r[LAb]oad  
You [SOLm]left me wai[DOm]ting here  
[FAm7]  a long [SIb7]long time a[MIb]go   [REb]        
[LAb] Don''t [SOLm]leave me sta[DOm]nding here  
[FAm7] lead me [SIb7]to your [MIb]door  
[LAb]    Yeah yeah [MIb]yeah 
 
', 'the-long-and-winding-road'),
('Ticket to Ride', 'The Beatles', 'Testo e accordi di Ticket to Ride di The Beatles', 'Intro:
[LAadd9]       
I [LAadd9]think I''m gonna be sad 
I think it''s today, yeah
The girl that''s driving me mad
Is going a[SIm]way   [MI]   
[FA#m]She''s got a ticket to [RE7]ride 
[FA#m]She''s got a ticket to [SOL7+]ride  
[FA#m]She''s got a ticket to [MI]ride 
But she don''t [LAadd9]care   

She [LAadd9]said that living with me 
Is bringing her down yeah
For she would never be free
When I was a[SIm]round  [MI]   
[FA#m]She''s got a ticket to [RE7]ride 
[FA#m]She''s got a ticket to [SOL7+]ride   
[FA#m]She''s got a ticket to [MI]ride 
But she don''t [LAadd9]care   

I [RE7]don''t know why she''s ridin'' so high 
She ought to think twice
She ought to do right by [MI]me 
Be[RE7]fore she gets to saying goodbye 
She ought to think twice,
She ought to do right by [MI]me 

I [LAadd9]think I''m gonna be sad 
I think it''s today yeah
The girl that''s driving me mad
Is going a[SIm]way, [MI]yeah 
[FA#m]She''s got a ticket to [RE7]ride 
[FA#m]She''s got a ticket to [SOL7+]ride  
[FA#m]She''s got a ticket to [MI]ride 
But she don''t [LAadd9]care   

I [RE7]don''t know why she''s ridin'' so high 
She ought to think twice
She ought to do right by [MI]me 
Be[RE7]fore she gets to saying goodbye 
She ought to think twice
She ought to do right by [MI]me 

[LAadd9]She said that living with me 
Is bringing her down, yeah
For she would never be free
When I was a[SIm]round  [MI]   
Ah, [FA#m]she''s got a ticket to [RE7]ride 
[FA#m]She''s got a ticket to [SOL7+]ride  
[FA#m]She''s got a ticket to [MI]ride 
But she don''t [LAadd9]care   
My baby don''t care, my baby don''t care
My baby don''t care, my baby don''t care
My baby don''t care, my baby don''t care...
 
', 'ticket-to-ride'),
('Twist And Shout', 'The Beatles', 'Testo e accordi di Twist And Shout di The Beatles', 'Intro:
e[|]|----------[RE]--------[SOL]-------[LA]---------------| 
[B|----------------------------------------|]G|----------------------------------------| 
[D|----------0---4-------------------------|]A|-0--2--4-------------2---0---0--0--0--0-| [x2]   
[E|------------------3---------------------|]                                            
Well shake it up [RE]baby now, ([SOL]shake it up [LA]baby) 
Twist and [RE]shout ([SOL]Twist and [LA]shout) 
Come on, come on, come on
come on, [RE]baby now, ([SOL]come on [LA]baby) 
Come on and work it on [RE]out 
([SOL]Work it on [LA]out, ooh!) 

Well work it on [RE]out, ([SOL]work it on [LA]out) 
You know you look so [RE]good ([SOL]Look so [LA]good) 
You know you got me [RE]goin'' now, ([SOL]Got me [LA]goin'')  
Just like I knew you [RE]would 
(Like I [SOL]knew you [LA]would) 

Well shake it up [RE]baby now ([SOL]shake it up [LA]baby) 
Twist and [RE]shout ([SOL]Twist and [LA]shout) 
Come on, come on, come on
come on, [RE]baby now, ([SOL]come on [LA]baby) 
Come on and work it on [RE]out 
([SOL]Work it on [LA]out, ooh!) 

You know you twist it little [RE]girl 
([SOL]twist little [LA]girl) 
Tou know you twist so [RE]fine ([SOL]Twist so [LA]fine) 
Come on and twist a little [RE]closer now 
([SOL]twist a little [LA]closer) 
And let me know that you''re [RE]mine 
(Let me [SOL]know you''re [LA]mine, ooh!) 

[RE]    [SOL]     [LA]      [RE]    [SOL]     [LA]   
[RE]    [SOL]     [LA]      [RE]    [SOL]     [LA]   
e[|]|--[RE]--------[SOL]------[LA]-------------| 
[B|-----------------------------|]G|-------2--4--7--6---2--4--2--|x4 
[D|--4----4--5--9--7---4--5--4--|]A|--5--------------------------| 
[E|-----------------------------|]                                 
[LA]Ahh ahh [LA7]ahh ahh ahh  yeah!! 

[RE]Baby now, ([SOL]shake it [LA]up baby) 
Twist and [RE]shout ([SOL]Twist and [LA]shout) 
Come on, come on, come on
come on, [RE]baby now, ([SOL]come on [LA]baby) 
Come on and work it on [RE]out 
([SOL]Work it on [LA]out, ooh!) 

You know you twist it little [RE]girl 
([SOL]twist little [LA]girl) 
Tou know you twist so [RE]fine ([SOL]Twist so [LA]fine) 
Come on and twist a little [RE]closer now 
([SOL]twist little [LA]closer) 
And let me know that you''re [RE]mine 
(Let me [SOL]know you''re [LA]mine ooh!) 

Well shake it shake it shake it [RE]baby now 
([SOL]shake it up [LA]baby) 
Well shake it shake it shake it [RE]baby now 
([SOL]shake it up [LA]baby) 
Well shake it shake it shake it [RE]baby now 
([SOL]shake it up [LA]baby) 
[LA]Ahh ahh [LA7]ahh  ahh        

[LA]    [SIb]     [SI]    [DO]    [DO#]     [RE]     [RE9]    
', 'twist-and-shout'),
('We Can Work It Out', 'The Beatles', 'Testo e accordi di We Can Work It Out di The Beatles', '
[RE] Try to see it [RE4]my  [RE]way, 
Do I have to keep on talking [DO]till I can''t go [RE]on? 
While you see it [RE4]your [RE]way, 
Run the risk of knowing that our [DO]love may soon be [RE]gone 
[SOL]We can work it [RE]out, 
[SOL]We can work it [LA]out 

[RE] Think of what you''re [RE4]sayi[RE]ng 
You can get it wrong and still you [DO]think that it''s al[RE]right 
Think of what I''m [RE4]sayi[RE]ng, 
We can work it out and get it [DO]straight, or say good [RE]night 
[SOL]We can work it [RE]out, 
[SOL]We can work it [LA]out 

[SIm]Life is very short, and [LA]there''s no [SOL]time[FA#4]     
For [FA#]fussing and [SIm]fighting, my [SIm]friend  [SOL]     [SIm]        
[SIm]I have always thought that [LA]it''s a [SOL]crim[FA#4]e,   
So [FA#]I will [SIm]ask you [SIm]once ag[SOL]ain  [SIm]        

[RE] Try to see it [RE4]my  [RE]way,  
Only time will tell if I am [DO]right or I am [RE]wrong 
While you see it [RE4]your [RE]way 
There''s a chance that we may fall a[DO]part before too [RE]long 
[SOL]We can work it [RE]out, 
[SOL]We can work it [LA]out 

[SIm]Life is very short, and [LA]there''s no [SOL]time[FA#4]     
For [FA#]fussing and [SIm]fighting, my [SIm]friend  [SOL]     [SIm]        
[SIm]I have always thought that [LA]it''s a [SOL]crim[FA#4]e,   
So [FA#]I will [SIm]ask you [SIm]once ag[SOL]ain  [SIm]        

[RE] Try to see it [RE4]my w[RE]ay, 
Only time will tell if I am [DO]right or I am [RE]wrong 
While you see it [RE4]your [RE]way 
There''s a chance that we may fall a[DO]part before too [RE]long 
[SOL]We can work it [RE]out, 
[SOL]We can work it [LA]out    [RE]    [SOL]        [RE]   
 
', 'we-can-work-it-out'),
('When I’m Sixty-Four', 'The Beatles', 'Testo e accordi di When I’m Sixty-Four di The Beatles', 'Intro:
[REb]           [SOLb]      [LAb7]      [REb]    [LAb]    [REb]    
[REb]   ...When I get older losing my hair 
Many years from [LAb]now 
Will you still be sending me a Valentine
Birthday greetings [REb]bottle of wine 
If I''d been out till quarter to three
[REb7]Would you lock the [SOLb]door      
Will you [SOLbm6+]still need me, [REb]will you still [SIb7]feed me 
[MIb7]When I''m [LAb7]sixty-[REb]four[LAb]    [REb]    

[SIbm]            [LAb]       [SIbm]     
[SIbm]You''ll be older [FA7]too 
[SIbm]   And if you [MIbm]say the word 
[SOLb]I could [LAb]stay with [REb]you    [LAb7]     

[REb]I could be handy, mending a fuse 
When your lights have [LAb7]gone 
You can knit a sweater by the fireside
Sunday mornings [REb]go for a ride 
Doing the garden, digging the weeds
[REb7]Who could ask for [SOLb]more 
Will you still [SOLbm6+]need me, [REb]will you still [SIb7]feed me 
[MIb7]When I''m [LAb7]sixty-[REb]four 

[SIbm]Every summer we can rent a cottage 
In the Isle of [LAb]Wight, if it''s not too [SIbm]dear 
We shall scrimp and [FA7]save 
[SIbm]  Grandchildren [MIbm]on your knee 
[SOLb]Vera, [LAb]Chuck and [REb]Dave   [LAb7]     

[REb]Send me a postcard, drop me a line 
Stating point of [LAb7]view 
Indicate precisely what you mean to say
Yours sincerely, [REb]wasting away 
Give me your answer, fill in a form
[REb7] Mine for ever[SOLb7]more  
Will you still [SOLbm6+]need me, [REb]will you still [SIb7]feed me 
[MIb7]When I''m [LAb7]sixty-[REb]four[LAb7]     [REb]    

[REb]           [SOLb]      [LAb7]      [REb]    [LAb]    [REb]    
', 'when-im-sixty-four'),
('While My Guitar Gently Weeps', 'The Beatles', 'Testo e accordi di While My Guitar Gently Weeps di The Beatles', 'Intro:
[LAm]     [LAm]         [FA#m7]          [FA]   
[LAm]     [SOL]     [RE]    [MI]   
I [LAm]look at you a[LAm]ll      
See the [FA#m7]lover that''s [FA]sleeping 
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

[LAm]     [LAm]         [FA#m7]          [FA]    [LAm]     [SOL]     [RE]    [MI]   
[LAm]     [LAm]         [FA#m7]          [FA]    [LAm]     [SOL]     [DO]    [MI]   
[LA] I don''t know [DO#m]how   [FA#m]  you were di[DO#m]verted 
[SIm] You were perverted t[MI]oo 
[LA] I don''t know [DO#m]how   [FA#m] you were in[DO#m]verted 
[SIm] No one alerted [MI]you 

I [LAm]look at you a[LAm]ll,     
see the [FA#m7]love there that''s [FA]sleeping 
[LAm] While my gui[SOL]tar gently w[RE]eeps   [MI]   
[LAm] Look at you [LAm]all      [FA#m7]          [FA]   
[LAm] Still my gui[SOL]tar gently [DO]we---[MI]-eps... 

[LAm]     [LAm]         [FA#m7]          [FA]    [LAm]     [SOL]     [RE]    [MI]   
[LAm]     [LAm]         [FA#m7]          [FA]    [LAm]     [SOL]     [DO]    [MI]   
', 'while-my-guitar-gently-weeps'),
('With a Little Help from My Friends', 'The Beatles', 'Testo e accordi di With a Little Help from My Friends di The Beatles', 'Intro:
[DO]Billlllll - [RE]lyyyyyyyyy [MI]Shears 

[MI]What would you t[SI]hink if I s[FA#m]ang out of tune, 
Would you stand up and w[SI]alk out on m[MI]e  
Lend me your e[SI]ars and I''ll s[FA#m]ing you a song, 
And I''ll try not to s[SI]ing out of [MI]key 

Oh, I get b[RE]y with a little h[LA]elp from my fri[MI]ends, 
Hmm, I get h[RE]igh with a little h[LA]elp from my fri[MI]ends, 
Hmm, gonna t[LA]ry with a little help from my fri[MI]ends [SI]   

[MI]What do I [SI]do when my l[FA#m]ove is away 
(Does it worry you to b[SI]e al[MI]one) 
How do I f[SI]eel by the e[FA#m]nd of the day 
(Are you sad because you''re o[SI]n your o[MI]wn) 

Oh, I get b[RE]y with a little h[LA]elp from my fri[MI]ends, 
Hmm, I get h[RE]igh with a little h[LA]elp from my fri[MI]ends, 
Hmm, gonna t[LA]ry with a little help from my fri[MI]ends  
Do you n[DO#m]eed anyb[FA#]ody, 
I [MI]need some[RE]body to l[LA]ove 
Could it b[DO#m]e anyb[FA#]ody 
I [MI]want some[RE]body to l[LA]ove 

[MI]Would you bel[SI]ieve in a l[FA#m]ove at first sight, 
(Yes I''m certain that it h[SI]appens all the t[MI]ime) 
What do you s[SI]ee when you t[FA#m]urn out the light, 
(I can''t tell you, but I k[SI]now it''s m[MI]ine) 

Oh, I get b[RE]y with a little h[LA]elp from my fri[MI]ends, 
Hmm, I get h[RE]igh with a little h[LA]elp from my fri[MI]ends, 
Hmm, gonna t[LA]ry with a little help from my fri[MI]ends  
Do you n[DO#m]eed anyb[FA#]ody, 
I [MI]need some[RE]body to l[LA]ove 
Could it b[DO#m]e anyb[FA#]ody 
I [MI]want some[RE]body to l[LA]ove 

Oh, I get b[RE]y with a little h[LA]elp from my fri[MI]ends, 
Hmm, gonna t[RE]ry with a little h[LA]elp from my fr[MI]iends 
Oh, I get h[LA]igh with a little help from my fri[MI]ends, 
Yes, I get b[RE]y with a little help from my fr[LA]iends,  
With a little help from my [DO]frieee[RE]eeeeee[MI]nds 
 
', 'with-a-little-help-from-my-friends'),
('Words of Love', 'The Beatles', 'Testo e accordi di Words of Love di The Beatles', 'Intro:
[LA]        [RE]    [MI]    [LA]        [RE]    [MI]   
[LA]        [RE]    [MI]    [LA]        [RE]    [MI]   
[LA]Hold me close and[RE]   
[MI]Tell me how yo[LA]u feel [RE]   
[MI]Tell me love i[LA]s real [RE]    [MI]Mmm.[LA]..     [RE]    [MI]   
[LA]Words of love you [RE]   
[MI]Whisper soft an[LA]d true [RE]   
[MI]Darling, I lov[LA]e you [RE]    [MI]Mmm.[LA]..      [RE]    [MI]   

[LA]        [RE]    [MI]    [LA]        [RE]    [MI]   
[LA]        [RE]    [MI]    [LA]        [RE]    [MI]   
[LA]        [RE]    [MI]    [LA]        [RE]    [MI]   
[LA]        [RE]    [MI]    [LA]        [RE]    [MI]   
[LA]Let me hear you [RE]say 
The [MI]words I long t[LA]o hear  [RE]   
[MI]Darling, when yo[LA]u''re near [RE]    [MI]Mmm.[LA]..      [RE]    [MI]   
[LA]Words of love you[RE]   
[MI]Whisper soft a[LA]nd true  [RE]   
[MI]Darling, I love [LA]you   [RE]    [MI]Mmm.[LA]..      [RE]    [MI]   

[LA]        [RE]    [MI]    [LA]        [RE]    [MI]   
', 'words-of-love'),
('Yellow Submarine', 'The Beatles', 'Testo e accordi di Yellow Submarine di The Beatles', '
In the [RE]town where [DO]I was [SOL]born 
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

[RE]    [DO]   [SOL]     [MIm]    [LAm]     [DO]   [RE7]    
[SOL]    [RE]    [DO]   [SOL]     [MIm]    [LAm]     [DO]   [RE7]    
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
Yellow submarine, [SOL]yellow submarine 
 
', 'yellow-submarine'),
('Yesterday', 'The Beatles', 'Testo e accordi di Yesterday di The Beatles', 'Intro:
[FA]    
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
Humm Hum-[REm]mm Humm [SOL7]Humm [SIb]Humm-mm [FA]Humm 
 
', 'yesterday'),
('You’ve Got to Hide Your Love Away', 'The Beatles', 'Testo e accordi di You’ve Got to Hide Your Love Away di The Beatles', '
[SOL]Here I [RE]stand, [FA]head in [SOL]hand 
[DO]Turn my face to the [FA]wall [DO]   
[SOL]If she''s [RE]gone, I [FA]can''t go [SOL]on  
[DO]Feeling two-foot [FA]sma-[DO]----[RE]ll 
[SOL]Every[RE]where [FA]people [SOL]stare 
[DO]Each and every [FA]day [DO]   
[SOL]I can [RE]see them [FA]laugh at [SOL]me  
[DO]And I hear them [FA]sa--[DO]----[RE]y   [RE]       [RE]       [RE]      

[SOL]Hey, you''ve got to [DO]hide your love a[RE4]way [RE]   [REadd9]       [RE]   
[SOL]Hey, you''ve got to [DO]hide your love a[RE4]way [RE]   [REadd9]       [RE]   

[SOL]How can [RE]I  [FA]even [SOL]try? 
[DO]I can never [FA]win [DO]   
[SOL]Hearing [RE]them, [FA]seeing [SOL]them 
[DO]In the state I''m [FA]in..[DO].   [RE]   
[SOL]How could [RE]she [FA]say to [SOL]me  
"[DO]Love will find a [FA]way"[DO]?  
[SOL]Gather ''[RE]round, [FA]all you [SOL]clowns 
[DO]Let me hear you [FA]sa--[DO]----[RE]y   [RE]       [RE]       [RE]      

[SOL]Hey, you''ve got to [DO]hide your love a[RE4]way [RE]   [REadd9]       [RE]   
[SOL]Hey, you''ve got to [DO]hide your love a[RE4]way [RE]   [REadd9]       [RE]   

[SOL]     [RE]    [FA]    [SOL]     [DO]      [FA]    [DO]   
[SOL]     [RE]    [FA]    [SOL]     [DO]      [FA]    [DO]    [SOL]    
', 'youve-got-to-hide-your-love-away');