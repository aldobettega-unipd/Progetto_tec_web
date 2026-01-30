-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Castle on the Hill', 'Ed Sheeran', 'en', '[RE] When I was six years [SOLadd9]old, I broke my leg[SIm7]      [LA4]
[RE] I was running [SOLadd9]from my brother and [SIm7]his friends [LA4]
[RE] And tasted the [SOLadd9]sweet perfume
of the [SIm7]mountain grass I [LA4]rolled down
[RE] I was younger [SOLadd9]then,   [SIm7] take me back to [LA4]when I
[SIm] Found my [LA]heart and broke it [RE]here
Made friends and [SOL6]lost them through the [SIm]years
And I''ve not [LA]seen the roaring [RE]fields in so long
[SOL6]I know I''ve grown, but I can''t [RE]wait to go home

[RE]I''m on [RE]my     [SOLadd9]way
[SIm7]Driving at [LA]90 down t[RE]hose coun[RE]try    [SOLadd9]lanes
[SIm7]Singing to [LA]Tiny Dancer
And [RE]I miss[RE]  the w[SOLadd9]ay you make[SIm7] me feel,[LA] and it''s real
When [RE]we watch[RE]ed the [SOLadd9]sunset
[SIm7]over the [LA4]castle on the h[RE]ill

[RE] Fifteen years [SOLadd9]old
and smoking [SIm7]hand-rolled cigarettes[LA4]
[RE] Running from the l[SOLadd9]aw through the backfields an[SIm7]d
Getting drunk with [LA4]my friends
[RE] Had my first [SOLadd9]kiss on a Friday [SIm7]night
I don''t [LA4]reckon that I did it [RE]right, but
I was younger [SOLadd9]then,    [SIm7] take me back to [LA4]when
We found[SIm] weekend [LA]jobs, when we got [RE]paid
We''d buy cheap [SOL6]spirits and drink them [SIm]straight
Me and my [LA]friends have not thrown [RE]up in so long
[SOL6]Oh, how we''ve grown,[SIm7] but I can''t [RE]wait to go home

[RE]I''m on [RE]my     [SOLadd9]way
[SIm7]Driving at [LA]90 down t[RE]hose coun[RE]try    [SOLadd9]lanes
[SIm7]Singing to [LA]Tiny Dancer
And [RE]I miss[RE]  the w[SOLadd9]ay you make[SIm7] me feel,[LA] and it''s real
When [RE]we watch[RE]ed the [SOLadd9]sunset
[SIm7]over the [LA4]castle on the hi[RE]ll   [SOLadd9]
[SIm7]Over the [LA]castle on the hi[RE]ll   [SOLadd9]
[SIm7]Over the [LA]castle on the hi[SIm7]ll    [SOLadd9]         [RE]    [LA]

[SIm7] One friend [SOLadd9]left to sell clothes
One works [LA]down by the coas[SIm7]t
One had two [SOLadd9]kids, but lives alone[RE]
One''s [LA]brother overdosed[SIm7]
One''s al[SOLadd9]ready on his second wife[RE]
One''s just [LA]barely getting by, bu[SIm7]t
These people [SOLadd9]raised me
And I[RE] can''t [LA]wait to go home

And [RE]I''m on [FA#m]my   [SOL]way
[SIm7]I still re[LA]member these [RE]old coun[FA#m]try  [SOL]lanes
When [SIm7]we did not [LA]know the answers
And [RE]I miss[RE]  the w[SOLadd9]ay you make[SIm7] me feel,[LA] and it''s real
When [RE]we watch[RE]ed the [SOLadd9]sunset
[SIm7]over the [LA4]castle on the hi[RE]ll   [SOLadd9]
[SIm7]Over the [LA]castle on the hi[RE]ll   [SOLadd9]
[SIm7]Over the [LA]castle on the hi[RE]ll', 'castle-on-the-hill');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Galway Girl', 'Ed Sheeran', 'en', 'She [FA#m]played the fiddle [LA]in an Irish band
But she [MI]fell in love [REadd9]with an English man
Kissed her on the neck
[LA]and then I took her by the hand
Said, "[MI]Baby, I just want to dance"

I met her on [FA#m]Grafton street [LA]right
outside of the bar
She shared a [MI]cigarette
with me while he[RE]r brother played the guitar
She asked me [FA#m]what does it mean,
the [LA]Gaelic ink on your arm?
Said it was [MI]one of my friend''s songs,

do you want to drink on?
She took [FA#m]Jamie as a cha[LA]ser, Jack for the fun
She got [MI]Arthur on the table
[RE]with Johnny riding a shotgun [SIm7]
Chatted some more[LA], one more drink at the bar
Then put [MI]Van on the jukebox, got up to dance

You know, she [RE]played the fiddle in [LA]an Irish band
But she [MI]fell in love [RE]with an English man
Kissed her on the neck
[LA]and then I took her by the hand
Said, "[MI]Baby, I just want to dance"
With my pretty little [RE]Galwa[LA]y Girl [MI]    [FA#m]
You''re my pretty little [RE]Galwa[LA]y Girl [MI]    [FA#m]

You know she [FA#m]beat me at darts
and [LA]then she beat me at pool
And then she [MI]kissed me like there
was nobo[RE]dy else in the room
As last [FA#m]orders were called was
when [LA]she stood on the stool
After [MI]dancing to Cèilidh singing to trad tunes
I never [FA#m]heard Carrickferg[LA]us ever sang so sweet
A ca[MI]pella in the bar [RE]using her feet for a beat
Oh, I could [SIm7]have that voice playing
[LA]on repeat for a week
And in this [MI]packed out room swear

she was singing to me
You know, she [RE]played the fiddle in [LA]an Irish band
But she [MI]fell in love [RE]with an English man
Kissed her on the neck
[LA]and then I took her by the hand
Said, "[MI]Baby, I just want to dance"
With my pretty little [RE]Galwa[LA]y Girl [MI]
My, my, my, m[FA#m]y, my, my, my [RE]Galwa[LA]y Girl [MI]
My, my, my, m[FA#m]y, my, my, my [RE]Galwa[LA]y Girl [MI]
My, my, my, m[FA#m]y, my, my, my [RE]Galwa[LA]y Girl [MI]    [FA#m]

And now we''ve [FA#m]outstayed our welcome
and it''s closing time
I was holding her hand,
her hand was holding mine
Our coats both smell of smoke,
whisky and wine
As we fill up our lungs
with the cold air of the night
I[FA#m] walked her home then she took me inside
To fi[MI]nish some Doritos and another bottle of wine
I [FA#m]swear I''m gonna put you in a song that I write
About a [MI]Galway Girl and a perfect night

You know, she [FA#m7]played the fiddle in an [LA]Irish band
But she [MI]fell in love with an [REadd9]English man
Kissed her on the neck
[LA]and then I took her by the hand
Said, "[MI]Baby, I just want to dance"
With my pretty little [RE]Galwa[LA]y Girl [MI]
My, my, my, m[FA#m]y, my, my, my [RE]Galwa[LA]y Girl [MI]
My, my, my, m[FA#m]y, my, my, my [RE]Galwa[LA]y Girl [MI]
My, my, my, m[FA#m]y, my, my, my [RE]Galwa[LA]y Girl [MI]    [FA#m]
[RE]  [LA]  [MI]  [FA#m]  [RE]  [LA]  [MI]  [FA#m]
[RE]  [LA]  [MI]  [FA#m]  [RE]  [LA]  [MI]  [FA#m]', 'galway-girl');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('I See Fire', 'Ed Sheeran', 'en', '[SIbm]Oh, misty eye of the mountain below
Keep careful watch of my brothers'' souls
And should the sky be filled
with fire and smoke
Keep watching over Durin''s sons

[SIbm] [SOLb]     [LAb] [SIbm]
[SIbm] [SOLb]     [LAb] [SIbm]
If this is to [SIbm]end in [REb]fire
Then we should [LAb]all burn [SOLb]together
Watch the [SIbm]flames climb [REb]high [LAb]into the [MIbm]night
Calling [SIbm]out for th[SOLb]e rope
[LAb]Stand by and we [SOLb]will
Watch the [MIbm]flames burn [REb]on and on
The [SOLb]mountain side, hey[SIbm]     [SOLb]        [LAb]    [SIbm]

And if we should [SIbm]die to[REb]night
Then we should [LAb]all die[SOLb] together
Raise a [SIbm]glass of [REb]wine [LAb] for the [MIbm]last time
Calling [SIbm]out for th[REb]e rope
[LAb]Prepare as we [SOLb]will
Watch the [MIbm]flames burn [REb]on and on
The [SOLb]mountain side
De[MIbm]solation [REb]comes upon the [SOLb]sky

Now I see [SIbm]fire  [SOLb]
[LAb]Inside the [SIbm]mountain
And I see fire [SOLb]
[LAb]Burning the [SIbm]trees
And I see fire[SOLb]
[LAb]Hollowing [SIbm]souls
And I see fire[SOLb]
[LAb]Blood in the [MIb5]breeze
And I hope that you remember me
[SIbm] [SOLb]     [LAb] [SIbm]
[SIbm] [SOLb]     [LAb] [SIbm]

Oh, should my [SIbm]people [REb]fall
Then surely [LAb]I''ll do the [SOLb]same
Confined in [SIbm]mountain [REb]halls
We got too [LAb]close to the [MIbm]flame
Calling [SIbm]out for the[REb] rope
[LAb]Hold fast and we [SOLb]will
Watch the [MIbm]flames burn [REb]on and on
The [SOLb]mountain side
Deso[MIbm]lation [REb]comes upon the [SOLb]sky

Now I see [SIbm]fire  [SOLbadd9]
[LAb]Inside the [SIbm]mountain
And I see fire [SOLbadd9]
[LAb]Burning the [SIbm]trees
And I see fire[SOLbadd9]
[LAb]Hollowing [SIbm]souls
And I see fire[SOLbadd9]
[LAb]Blood in the [MIbm7]breeze

And I hope that you remember me
And if the [MIbm]night is [SIbm]burning
I will [REb]cover my [LAb]eyes
For if the [MIbm]dark re[SIbm]turns
Then my [REb]brothers will [LAb]die
And as the [MIbm]sky is falling [SIbm]down
It crashed in[REb]to this lonely [LAb]town
And with that [MIbm]shadow upon the ground
I [REb] hear my [SOLb]people screaming out

Now I see [SIbm]fire  [SOLb]
[LAb]Inside the [SIbm]mountain
And I see fire [SOLb]
[LAb]Burning the [SIbm]trees
And I see fire[SOLb]
[LAb]Hollowing [SIbm]souls
And I see fire[SOLb]
[LAb]Blood in the [SIbm]breeze
I see fire
Oh yo[SOLb]u know I saw a city b[LAb]urning ou[SIbm]t (fire)

And I see fire
Feel the [SOLb]heat upon my skin, yeah ([LAb]fire[SIbm])
And I see fire.[SOLb]..    ([LAb]fire[SIbm])
And I see fire burn [SOLb]on and on the [LAb]mountain s[SIbm]ide', 'i-see-fire');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'MIbm'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SOLb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Perfect', 'Ed Sheeran', 'en', 'I found a [LAb]love for [FAm7]me
Darling, just [REbadd9]dive right in and follow my [MIb]lead
Well, I found a [LAb]girl, beauti[FAm7]ful and sweet
Oh, I never [REbadd9]knew you were the someone waiting for [MIb]me
''Cause we were just kids when we [LAb]fell in love
Not knowing [FAm7]what it was
I will not [REbadd9]give you up this [LAb]time[MIb]
But darling, just [LAb]kiss me slow
Your heart is [FAm7]all I own
And in your [REbadd9]eyes you''re holding m[MIb]ine

Baby, [FAm]I''m [REbadd9]dancing in the [LAb]dark
With [MIb]you between my [FAm7]arms
[REbadd9]Barefoot on the [LAb]grass
[MIb]Listening to our [FAm7]favourite song
When you [REbadd9]said you looked a [LAb]mess
I whispered [MIb]underneath my [FAm7]breath
But you [REb]heard it,
Darling, [LAb]you look [MIb]perfect..
to[LAb]night[MIb]        [FAm7]     [MIb]    [REb]      [MIb]

Well, I found a [LAb]woman, stronger than [FAm7]anyone I know
She shares my [REbadd9]dreams
I hope that someday I''ll share her [MIb]home
I found a [LAb]love to carry m[FAm7]ore than just my secrets
To carry [REbadd9]love, to carry children of our [MIb]own
We are still kids but we''re [LAb]so in love
Fighting a[FAm7]gainst all odds
I know we''ll [REb]be alright this [LAb]time[MIb]
Darling, just [LAb]hold my hand
Be my girl, I''ll [FAm7]be your man
I see my [REb]future in your e[MIb]yes

Baby, [FAm]I''m [REbadd9]dancing in the [LAb]dark
With [MIb]you between my [FAm7]arms
[REbadd9]Barefoot on the [LAb]grass
[MIb]Listening to our [FAm7]favourite song
When I [REbadd9]saw you in that [LAb]dress
Looking so [MIb]beautiful
I [FAm7]don''t de[REbadd9]serve this
Darling, [LAb]you look [MIb]perfect to[LAb]night [FAm7]

[REbadd9]  [MIb]
Baby, [FAm]I''m [REbadd9]dancing in the [LAb]dark
With [MIb]you between my [FAm7]arms
[REbadd9]Barefoot on the [LAb]grass
[MIb]Listening to our [FAm7]favourite song
I have [REb]faith in what I [LAb]see
Now I know I [MIb]have met an [FAm7]angel in [REb]person
And [LAb]she looks [MIb]perfect
I [REbadd9]don''t deserve this
[MIb]You look perfect..
to[LAb]nigh[MIb]t       [FAm7]     [MIb]    [REb]     [MIb]     [LAb]', 'perfect');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FAm'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIb'),
(@last_song_id, 'REb');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Photograph', 'Ed Sheeran', 'en', '[MI]  [DO#m7]  [SI4]  [LAadd9]
Loving can h[MI]urt, loving can h[DO#m]urt sometimes
But it''s the [SI]only thing that I know[LA]
When it gets h[MI]ard, you know it can get h[DO#m]ard sometimes
It is the [SI]only thing makes us feel al[LA]ive
[DO#m] We keep this love in a [LA]photograph
[MI] We made these memories [SI]for ourselves
Where [DO#m]our eyes are never closing
H[LA]earts are never broken
And [MI]time''s forever frozen [SI]still

So you can [MI]keep me
Inside the pocket of your [SI]ripped jeans
Holding me closer ''til our [DO#m7]eyes meet
You won''t ever be a[LAadd9]lone,
wait for me to come h[MI]ome

Loving can [MI]heal, loving can m[DO#m]end your soul
And it''s the o[SI]nly thing that I know, kno[LA]w
I swear it will get e[MI]asier
Remember that with every p[DO#m]iece of you
Hm, and it''s the o[SI]nly thing
we take with us when we di[LA]e
[DO#m]Hm, we keep this love in this [LA]photograph
[MI] We made these memories for [SI]ourselves
Where our [DO#m]eyes are never closing
[LA]Hearts were never broken
And [MI]time''s forever frozen [SI]still

So you can [MI]keep me
Inside the pocket of your [SI]ripped jeans
Holding me closer ''til our [DO#m7]eyes meet
You won''t ever be al[LAadd9]one
And if you [MI]hurt me
That''s okay baby, only [SI]words bleed
Inside these pages you just [DO#m7]hold me
And I won''t ever let you [LAadd9]go
Wait for me to come h[DO#m]ome
Wait for me to come h[LA]ome
Wait for me to come h[MI]ome
Wait for me to come h[SI]ome

Oh, you can [MI]fit me
Inside the necklace you got when you were [SI]sixteen
Next to your heartbeat where I [DO#m]should be
Keep it deep within your [LAadd9]soul
And if you [MI]hurt me
Well, that''s okay baby, only [SI]words bleed
Inside these pages you just [DO#m7]hold me
And I won''t ever let you [LAadd9]go

When I''m a[MI]way, I will remember how you [SI]kissed me
Under the lamppost back on [DO#m]Sixth street
Hearing you whisper through the [LA]phone
"Wait for me to come home"', 'photograph');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Shape of You', 'Ed Sheeran', 'en', '[DO#m]  [FA#m7]  [LA]  [SI]
[DO#m]  [FA#m7]  [LA]  [SI]
The [DO#m]club isn''t the best [FA#m7]place to find a lover
So the [LA]bar is where I g[SI]o
[DO#m]Me and my friends at the [FA#m7]table doing shots
Drinking [LA]faster and then we talk s[SI]low
Come [DO#m]over and start up a conver[FA#m7]sation with just me
And [LA]trust me I''ll give it a ch[SI]ance now
Take my [DO#m]hand, stop
Put Van The [FA#m7]Man on the jukebox
And [LA]then we start to d[SI]ance

And now I''m singing like
[DO#m]Girl, you know I [FA#m7]want your love
[LA]Your love was handmade [SI]for somebody like [DO#m]me
Come on now, [FA#m7]follow my lead
[LA]I may be crazy, [SI]don''t mind me
Say, [DO#m]boy, let''s not talk too much
[LA]Grab on my waist and put that body on [DO#m]me
Come on now, follow my lead
Come, [LA]come on now, follow my lead

[DO#m]  I''m in [FA#m7]love with the shape of [LA]you
We push and [SI]pull like a magnet [DO#m]do
Although my [FA#m7]heart is falling [LA]too
I''m in [SI]love with your bod[DO#m]y
And last [FA#m7]night you were in my r[LA]oom
And now my [SI]bedsheets smell like [DO#m]you
Every day discove[FA#m7]ring something brand [LA]new
I''m in [SI]love with your body
[DO#m]Oh—i—oh—i—[FA#m7]oh—i—oh—i  [LA]
I''m in [SI]love with your body
[DO#m]Oh—i—oh—i—[FA#m7]oh—i—oh—i  [LA]
I''m in [SI]love with your body
[DO#m]Oh—i—oh—i—[FA#m7]oh—i—oh—i  [LA]
I''m in [SI]love with your bod[DO#m]y
Every day discove[FA#m7]ring something brand [LA]new
I''m in [SI]love with the shape of you

[DO#m]One week in we let the [FA#m7]story begin
We''re going [LA]out on our first [SI]date
You and [DO#m]me are thrifty
So go a[FA#m7]ll you can eat
Fill up your [LA]bag and I fill up a plate
We talk for [DO#m]hours and hours about the [FA#m7]sweet and the sour
And how your [LA]family is doing o[SI]kay
Leave and [DO#m]get in a taxi, then [FA#m7]kiss in the backseat
Tell the [LA]driver make the radio [SI]play
And now I''m singing like
[DO#m]Girl, you know I [FA#m7]want your love
[LA]Your love was handmade [SI]for somebody like [DO#m]me
Come on now, [FA#m7]follow my lead
[LA]I may be crazy, [SI]don''t mind me
Say, [DO#m]boy, let''s not talk too much
[LA]Grab on my waist and put that body on [DO#m]me
Come on now, follow my lead
Come, [LA]come on now, follow my lead

[DO#m]  I''m in [FA#m7]love with the shape of [LA]you
We push and [SI]pull like a magnet [DO#m]do
Although my [FA#m7]heart is falling [LA]too
I''m in [SI]love with your bod[DO#m]y
And last [FA#m7]night you were in my r[LA]oom
And now my [SI]bedsheets smell like [DO#m]you
Every day discove[FA#m7]ring something brand [LA]new
I''m in [SI]love with your body
[DO#m]Oh—i—oh—i—[FA#m7]oh—i—oh—i  [LA]
I''m in [SI]love with your body
[DO#m]Oh—i—oh—i—[FA#m7]oh—i—oh—i  [LA]
I''m in [SI]love with your body
[DO#m]Oh—i—oh—i—[FA#m7]oh—i—oh—i  [LA]
I''m in [SI]love with your bod[DO#m]y
Every day discove[FA#m7]ring something brand [LA]new
I''m in [SI]love with the shape of y[DO#m]ou

Come on, be my baby, come on
Come on, be my baby, come on
Come on, be my baby, come on
Come on, be my baby, come on
[DO#m] Come on, be my [FA#m7]baby, come on
[LA] Come on, be my [SI]baby, come on
[DO#m] Come on, be my [FA#m7]baby, come on
[LA] Come on, be my baby, come on

[DO#m]  I''m in [FA#m7]love with the shape of [LA]you
We push and [SI]pull like a magnet [DO#m]do
Although my [FA#m7]heart is falling [LA]too
I''m in [SI]love with your bod[DO#m]y
And last [FA#m7]night you were in my r[LA]oom
And now my [SI]bedsheets smell like [DO#m]you
Every day discove[FA#m7]ring something brand [LA]new
I''m in [SI]love with your bo[DO#m]dy
Come on, be my [FA#m7]baby, come on
[LA] Come on, be my [SI]baby, come on[DO#m]
(I''m in love with your body)
Come on, be my [FA#m7]baby, come on
[LA] Come on, be my [SI]baby, come on[DO#m]
Come on, be my [FA#m7]baby, come on
[LA] Come on, be my [SI]baby, come on[DO#m]
Every day discover[FA#m7]ing something brand n[LA]ew
I''m in [SI]love with the shape of you', 'shape-of-you');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'SI');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Thinking Out Loud', 'Ed Sheeran', 'en', '[RE] When your [RE]legs don''t work like they [SOL]used to before[LA]
[RE] And I [RE]can''t sweep you off of your [SOL]feet  [LA]
[RE] Will[RE] your mouth still remember the [SOL]taste of my love[LA]?
[RE]  Wil[RE]l your eyes still smile [SOL]from your cheeks[LA]?
And, darling, [RE]I  [RE]will be loving you
[SOL]   ''[LA]til we''re [RE]70 [RE]        [SOL]    [LA]
And, baby, [RE]my [RE]heart could still fall
[SOL]as  [LA]hard at 2[RE]3   [RE]        [SOL]
And I''m thinking ''[LA]bout how
[MIm7]people fall in love in my[LA]sterious [RE]ways
[MIm7]Maybe just the touch of a [LA]hand
Well, [MIm7]me—I fall in love with you eve[LA]ry single [SIm7]day
And [MIm7]I just wanna tell you I [LA]am

So, honey, no[RE]w   [RE]        [SOL]
Take me[LA] into your loving a[RE]rms [RE]        [SOL]
Kiss me[LA] under the light of a [RE]thousand [RE]stars   [SOL]
Place [LA]your head on my beating [RE]heart[RE]
I''m [SOL]thinking out [LA]loud
Maybe [SIm]we  [LA]found [SOL]love [RE]right  [MIm7]where [LA]we [RE]are

[RE] Whe[RE]n my hair''s all but gone and my [SOL]memory fades[LA]
[RE]  An[RE]d the crowds don''t remember my [SOL]name  [LA]
[RE]  Whe[RE]n my hands don''t [SOL]play the strings the [LA]same way
(mm[RE]m...) [RE]I know you will still love me the [SOL]same [LA]
''Cause, honey, [RE]your [RE]soul could never [SOL]grow [LA]old,
it''s evergre[RE]en  [RE]        [SOL]     [LA]
And, baby, y[RE]our [RE]smile''s forever
[SOL]in my [LA]mind and memo[RE]ry  [RE]        [SOL]
I''m thinking ''[LA]bout how
[MIm7]people fall in love in mys[LA]terious [RE]ways
[MIm7]Maybe it''s all part of a p[LA]lan
Well, [MIm7]I''ll just keep on making the [LA]same mi[SIm7]stakes
[MIm7]Hoping that you''ll under[LA]stand

That, baby, n[RE]ow  [RE]        [SOL]
Take me[LA] into your loving a[RE]rms [RE]        [SOL]
Kiss me[LA] under the light of a [RE]thousand [RE]stars   [SOL]
Place [LA]your head on my beating [RE]heart[RE]
I''m [SOL]thinking out [LA]loud
Maybe [SIm]we  [LA]found [SOL]love [RE]right  [MIm7]where [LA]we [RE]are
[RE]  [RE]  [SOL]  [LA]    [RE]  [RE]  [SOL]  [LA]
[RE]  [RE]  [SOL]  [LA]    [RE]  [RE]  [SOL]  [LA]
That, baby, n[RE]ow  [RE]        [SOL]
Take me[LA] into your loving a[RE]rms [RE]        [SOL]
Kiss me[LA] under the light of a [RE]thousand [RE]stars   [SOL]
Place [LA]your head on my beating [RE]heart[RE]
I''m [SOL]thinking out [LA]loud
Maybe [SIm]we  [LA]found [SOL]love [RE]right  [MIm7]where [LA]we [RE]are
Oh, baby, [SIm]we  [LA]found [SOL]love [RE]right w[MIm7]here [LA]we [RE]are
And [SIm]we  [LA]found [SOL]love [RE]right w[MIm7]here [LA]we [RE]are', 'thinking-out-loud');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'LA'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SIm'),
(@last_song_id, 'SOL');

