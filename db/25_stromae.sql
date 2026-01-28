-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Formidable', 'Stromae', 'FRA', 'Formid[MIm]able,[RE]   formi[SOL]dable
[DO] Tu étais formi[LAm]dable, j''étais fort mi[MIm]nable
[SI7] Nous étions formi[MIm]dables
[RE]Formi--[SOL]dable
[DO] Tu étais formi[LAm]dable, j''étais fort mi[MIm]nable
[SI7] Nous étions formi[MIm]dables

Oh, béb[RE]é, oups, mademoi[SOL]selle
J''vais pas vous draguer,[DO] promis juré[LAm]
J''suis célibataire[MIm], depuis hier, pu[SI7]tain
J''peux pas faire d''en[MIm]fant et bon, c''est pas
Hé, reviens, cinq minutes quoi[RE],
j''t''ai pas insul[SOL]tée
J''suis poli, cour[DO]tois, et un peu fort bou[LAm]rré
Mais pour les mecs comme [MIm]moi
Vous avez autre chose à fai[SI7]re, hein
M''auriez vu hi[MIm]er, j''étais

Formid[MIm]able,[RE]   formi[SOL]dable
[DO] Tu étais formi[LAm]dable, j''étais fort mi[MIm]nable
[SI7] Nous étions formi[MIm]dables
[RE]Formi--[SOL]dable
[DO] Tu étais formi[LAm]dable, j''étais fort mi[MIm]nable
[SI7] Nous étions formi[MIm]dables

Oh, tu t''es regar[RE]dé? Tu t''crois [SOL]beau
Parce que tu t''es mari[DO]é? Mais c''est qu''un a[LAm]nneau
Mec, t''emballes [MIm]pas
Elle va t''lar[SI7]guer comme elles le font chaque [MIm]fois
Et puis l''autre fille, tu lui en as par[RE]lé?
S''tu veux, j''lui [SOL]dis, comme ça, c''est ré[DO]glé
Et au petit au[LAm]ssi, enfin si vous en a[MIm]vez
Attends trois [SI7]ans, sept ans et là,
vous ve[MIm]rrez si c''est

Formid[MIm]able,[RE]   formi[SOL]dable
[DO] Tu étais formi[LAm]dable, j''étais fort mi[MIm]nable
[SI7] Nous étions formi[MIm]dables
[RE]Formi--[SOL]dable
[DO] Tu étais formi[LAm]dable, j''étais fort mi[MIm]nable
[SI7] Nous étions formi[MIm]dables

Hé pe[RE]tite, oh pardon, pe[SOL]tit
Tu sais dans la v[DO]ie, y a ni méchants ni gen[LAm]tils
Si maman est [MIm]chiante
C''est qu''elle a peur d''être mami[SI7]e
Si papa trompe maman [MIm]
C''est parce que maman vieillit, tiens
Pourquoi t''es tout [RE]rouge? Ben reviens ga[SOL]min
Et qu''est-ce que vous avez [DO]tous
À me regarder comme un [LAm]singe, vous?
Ah oui, vous êtes [MIm]saints, vous
Bande de ma[SI7]caques
Donnez-moi un bébé [MIm]singe, il sera

Formid[MIm]able,[RE]   formi[SOL]dable
[DO] Tu étais formi[LAm]dable, j''étais fort mi[MIm]nable
[SI7] Nous étions formi[MIm]dables
[RE]Formi--[SOL]dable
[DO] Tu étais formi[LAm]dable, j''étais fort mi[MIm]nable
[SI7] Nous étions formi[MIm]dables

[RE]   [SOL]   [DO]   [LAm]   [MIm]   [SI7]   [MIm]', 'formidable');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Papaoutai', 'Stromae', 'FRA', '[MIbm]    [REb] [SIbm7]  [SOLb]  [LAb]

[MIbm]    [REb] [SIbm7]  [MIbm]    [REb]

[SIbm]Dites-moi d''où il [LAb]vient
Enfin [SIbm]je saurai où je [LAb]vais
Maman [SIbm]dit que lorsqu''on [LAb]cherche bien
On fi[SOLm]nit toujours par[DOm] trouver
Elle dit [SIbm]qu''il n''est jamais très[MIbm] loin
Qu''il part [SIbm]très souvent trava[MIbm]iller
Maman [SOLb]dit "Travailler c''est[SOLb7+] bien"
Bien mieux [FA7]qu''être mal accompagné

Pas vrai?
[SIbm]  Où est[LAb] ton [SOLb]papa?
[MIbm]Dis-moi, où [LAb]est ton [SIbm]papa?
Sans même [LAb]devoir [SOLb]lui parler
Il [MIbm]sait ce [LAb]qu''il ne [SIbm]va pas
[SOLb] Ah sacré[MIbm] papa
[LAb]Dis-moi où es-tu ca[SIbm]ché?
Ça doit[SOLb] faire au mo[MIbm]ins mille fois
[LAb] Que j''ai compté mes[SIbm] doigts  ...Hé

[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]  Où [SIbm]t''es? Papa où t''es?
[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]Où t''es? Où [SIbm]t''es? Où Papa où t''es?
[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]  Où [SIbm]t''es? Papa où t''es?
[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]Où t''es? Où [SIbm]t''es? Où Papa où t''es?

[SOLb]   [MIbm]   [LAb]   [SIbm]

[SOLb]   [MIbm]   [LAb]   [SIbm]

Où [SOLb]t''es?  [MIbm]       [LAb]      [SIbm]

[SOLb]   [MIbm]   [LAb]   [SIbm]

[SIbm]Quoi, qu''on [LAb]y croit ou pas
Il y aura [SIbm]bien un jour où on [LAb]n''y croira plus
Un [SIbm]jour où l''autre [LAb]on sera tous papa
Et d''un [SIbm]jour à l''au[LAb]tre, on aura disparu
[MIbm]Serons-nous [SIbm]détestables?
[MIbm]Serons-nous [SIbm]admirables?
Des géniteurs ou [LAb]des génies
Dites-nous [SOLm]qui donne naissance aux [DOm]irresponsables?
[SIbm]Ah, dites-nous qui, tiens
Tout le monde sait comment on fait des bébés
Mais personne ne sait comment on [LAb]fait des papas
[SOLb]Monsieur je sais tout en aurait [LAb]héri--té[FA7], c''est ça?
[MIbm] Il faut le sucer de [SIbm]son pouce où quoi?
[MIbm]Dites-nous [SIbm]où c''est caché?
Ça doit[SOLb7+] faire au moins mille fois
Qu''on a[FA7] bouffé nos doigts  ...Hé

[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]  Où [SIbm]t''es? Papa où t''es?
[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]Où t''es? Où [SIbm]t''es? Où Papa où t''es?
[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]  Où [SIbm]t''es? Papa où t''es?
[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]Où t''es? Où [SIbm]t''es? Où Papa où t''es?

[SOLb]   [MIbm]   [LAb]   [SIbm]

[SOLb]   [MIbm]   [LAb]   [SIbm]

Où [SOLb]t''es?  [MIbm]       [LAb]      [SIbm]

[SOLb]   [MIbm]   [LAb]   [SIbm]

[SOLb] Où est ton [MIbm]papa?
[LAb]Dis-moi, où est ton [SIbm]papa?
[SOLb]Sans même devoir[MIbm] lui parler
Il [LAb]sait ce qu''il ne [SIbm]va pas
[SOLb] Ah sacré[MIbm] papa
[LAb]Dis-moi où es-tu [SIbm]caché?
Ça doit[SOLb] faire au m[MIbm]oins mille fois
Que j''ai[LAb] compté [SIbm]mes doigts
[SOLb] Où est ton [MIbm]papa?
[LAb]Dis-moi, où est ton [SIbm]papa?
[SOLb]Sans même devoir[MIbm] lui parler
Il [LAb]sait ce qu''il ne [SIbm]va pas
[SOLb] Ah sacré[MIbm] papa
[LAb]Dis-moi où es-tu [SIbm]caché?
Ça doit[SOLb] faire au m[MIbm]oins mille fois
Que j''ai[LAb] compté [SIbm]mes doigts ...Hé

[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]  Où [SIbm]t''es? Papa où t''es?
[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]Où t''es? Où [SIbm]t''es? Où Papa où t''es?
[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]  Où [SIbm]t''es? Papa où t''es?
[SOLb]  Où [MIbm]t''es? Papa où t''es?
[LAb]Où t''es? Où [SIbm]t''es? Où Papa où t''es?

[SOLb]   [MIbm]   [LAb]   [SIbm]

[SOLb]   [MIbm]   [LAb]   [SIbm]

Où [SOLb]t''es?  [MIbm]       [LAb]      [SIbm]

[SOLb]   [MIbm]   [LAb]   [SIbm]

[SIbm] [LAb] [SOLb]    [MIbm] [LAb] [SIbm]

[SIbm] [LAb] [SOLb]    [MIbm] [LAb] [SIbm]

[SOLb]  [MIbm7]  [LAb]  [SIbm]   [SOLb]  [MIbm7]  [LAb]  [SIbm]', 'papaoutai');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DOm'),
(@last_song_id, 'FA'),
(@last_song_id, 'LAb'),
(@last_song_id, 'MIbm'),
(@last_song_id, 'REb'),
(@last_song_id, 'SIbm'),
(@last_song_id, 'SOLb'),
(@last_song_id, 'SOLm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
('Alors on Danse', 'Stromae', 'FRA', '[DO#m]    [LA]  [SOL#5]  [DO#m]    [LA]  [SOL#5]
Alors [DO#m]on      [LA]    [SOL#5]
Alors [DO#m]on      [LA]    [SOL#5]

Alors on
[DO#m] Qui dit étude dit tra[LA]vail
Qui [SOL#5]dit taf te dit les [DO#m]thunes
Qui dit argent dit dé[LA]penses
Et [SOL#5]qui dit crédit dit cré[DO#m]ance
Qui dit dette te dit [LA]huissier
Et lui [SOL#5]dit assis dans la [DO#m]merde
Qui dit amour dit les [LA]gosses
Dit [SI]toujours et dit di[DO#m]vorce
Qui dit proches te dit [LA]deuils
Car les [SOL#m]problèmes ne viennent pas s[DO#m]euls
Qui dit crise te dit [LA]monde
Dit fa[SOL#m]mine, dit tiers-[DO#m]monde
Et qui dit fatigue dit ré[LA]veil
Encore sourd de la ve[DO#m]ille
Alors on sort pour oubli[LA]er tous les problèmes

Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse


Et là tu te dis que c''est fini

Car pire que ça ce serait la mort
Quand tu crois enfin que tu t''en sors
Quand y en a plus et ben y en a en[DO#m]core
Est-ce la zik ou les pro[LA]blèmes?
Les [SOL#m]problèmes ou bien la mu[DO#m]sique
Ça te prend les tripes, ça te prend la [LA]tête
Et puis t[SI]u pries pour que ça s''a[DO#m]rrête
Mais c''est ton corps, c''est pas le [LA]ciel
Alors tu [SOL#m]te bouches plus les orei[DO#m]lles
Et là tu cries encore plus [LA]fort
Et ça [SI]persiste
Alors on [MI]chante
La-[DO#m]la-la-l[LA]a-la-l[FA#m]a      [MI]
La-[DO#m]la-la-l[LA]a-la-l[SI]a
Alors on [MI]chante
La-[DO#m]la-la-l[LA]a-la-l[FA#m]a      [MI]
La-[DO#m]la-la-l[FA#m]a-la-l[SI]a
Alors on [DO#m]chante...

Alors on chante...

Et puis seulement quand c''est fini
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse   [LA]    [SOL#5]
Alors on [DO#m]danse
Et ben y en a en[DO#m]core    [LA]    [SOL#]      [DO#m]        [LA]    [SOL#]
Et ben y en a en[DO#m]core    [LA]    [SOL#]      [DO#m]        [LA]    [SOL#]
Et ben y en a en[DO#m]core    [LA]    [SOL#]      [DO#m]        [LA]    [SOL#]
Et ben y en a en[DO#m]core    [LA]    [SOL#]      [DO#m]        [LA]    [SOL#]
Et ben y en a en[DO#m]core    [LA]    [SOL#]', 'alors-on-danse');
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO#m'),
(@last_song_id, 'FA#m'),
(@last_song_id, 'LA'),
(@last_song_id, 'MI'),
(@last_song_id, 'SI'),
(@last_song_id, 'SOL#'),
(@last_song_id, 'SOL#m');

