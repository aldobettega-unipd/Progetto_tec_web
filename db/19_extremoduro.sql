-- File generato automaticamente
SET NAMES 'utf8mb4';

-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
(
        "Dulce Introducción al Caos",
        "Extremoduro",
        "SPA",
        "
[SOL]Como quieres qu[RE]e escriba una can[DO]ción  [RE]
[SOL]si a tu lado no[RE] hay reivindicaci[DO]ón.   [RE]
[DO]La canción de que[RE] el tiempo no pasa[MIm]ra
[RE]donde nunca p[DO]asa nada.

[SOL]Una racha de [RE]viento nos visi[DO]tó    [RE]
[SOL]y el árbol ni[RE] una rama se le[DO] agitó[RE].
[DO]La canción de[RE] que el viento se pa[MIm]rara
[RE]donde nunca p[DO]asa nada.

[SOL]Un otoño el d[RE]emonio se prese[DO]ntó    [RE]
[SOL]fue cuando el[RE] arbolito se de[DO]shojó. [RE]
[DO]La canción de [RE]que el tiempo se a[MIm]trasara
[RE]donde nunca p[DO]asa nada.

[SOL]Una racha de [RE]viento nos visi[DO]tó     [RE]
[SOL]pero nuestra [RE]veleta ni se in[DO]mutó.  [RE]
[DO]La canción de [RE]que el viento se p[MIm]arara
[RE]donde nunca p[DO]asa nada.

[SOL]Mientras tanto [RE]pasan las horas,
[DO]sueño que despi[RE]erto a su vera,
[SOL]me pregunto si [RE]estará sola
[DO]y ardo dentro d[RE]e una hoguera.

[SOL]Como quieres [RE]que escriba una c[DO]anción   [RE]
[SOL]si a tu lado [RE]he perdido la amb[DO]ición.   [RE]
[DO]La canción de que[RE] el tiempo no pasa[MIm]ra
[RE]donde nunca p[DO]asa nada.

[SOL]Se rompio la cadena que[RE] ataba el reloj a las [DO]horas,  [RE]
[SOL]se paró el aguacero aho[RE]ra somos flotando dos [DO]gotas.  [RE]
[DO]Agarrado un momento a l[RE]a cola del viento me s[MIm]iento m[SIm]ejor,
[DO]y olvidé de poner en el[RE] suelo los pies y me s[MIm]iento m[SIm]ejor.
[DO]Volar! [RE]volar!

[SOL]Una racha de [RE]viento nos visi[DO]tó       [RE]
[SOL]y a nosotros [RE]ni el pelo se nos [DO]movió. [RE]
[DO]La canción de que [RE]el viento se pa[MIm]rara
[RE]donde nunca pasa [DO]nada.

[MIm]Ya no queda una [RE]piedra en p[MIm]ie
[RE]porque el viento lo derribó
[DO]No! No hay [SIm]esa canción
[MIm]Ya no queda nada[RE] de ayer
[MIm]porque el viento[RE] se lo llevó
[DO]No! No hay [SIm]esa canción

[MIm]Ya no queda una [RE]piedra en pie
[MIm]porque el viento [RE]lo derribó
[DO]No! No hay [SIm]esa canción
[MIm]Ya no queda nada[RE] de ayer
[MIm]porque el viento[RE] se lo llevó
[DO]No! No hay [SIm]esa canción

Vamos Extremo!!!
Para Laura, Sara y Marioneta!!!",
        "dulce-introduccion-al-caos"
    );
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'MIm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL'),
(@last_song_id, 'SIm');

INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
(
        "La Vereda De La Puerta De Atras",
        "Extremoduro",
        "SPA",
        "
Si no[LAm] fuera
[SOL]porque hic[FA]e colocado
[SOL]el camino de [LAm]tu espera
[SOL]me habría de[FA]sconectado
[SOL]conde[LAm]nado a mi[SOL]rarte desde f[FA]uera
[SOL]y dejar que t[LAm]e tocara[SOL] el [FA]sol[SOL].

[LAm]Y si fuera
[SOL]mi vida una e[FA]scalera
[SOL]me la he pasa[LAm]do entera
[SOL]buscando el sigu[FA]iente escalón
[SOL]conven[LAm]cido que est[SOL]ás en el te[FA]jado
[SOL]esperando a ver[LAm] si ll[SOL]ego [FA]yo.[SOL]

[DO]Y dejar de lado la ve[LAm]reda de la puerta de at[MIm]rás
[FA]por donde te vi pasar
[DO]como una regadera que [LAm]la hierba hace que vuelva a [MIm]brotar
[FA]y ahora todo es campo ya.

[LAm]Sus soldados
[SOL]son flores d[FA]e madera
[SOL]y mi ejerci[LAm]to no tiene
[SOL]bandera es sólo [FA]un corazón
[SOL]conde[LAm]nado a vi[SOL]vir entre ma[FA]lezas
[SOL]sembrando flore[LAm]s de a[SOL]lgod[FA]ón.[SOL]

[LAm]Si me espera
[SOL]la muerte trai[FA]cionera
[SOL]y antes de r[LAm]epartirme
[SOL]del todo me veo[FA] en un cajón
[SOL]que me en[LAm]tierren con [SOL]la picha por [FA]fuera
[SOL]pa' que se la[LAm] coma un[SOL] rat[FA]ón.[SOL]

[DO]Y muere a todas horas gent[LAm]e dentro de mi tele[MIm]visor
[FA]quiero oir alguna canción
[DO]que no hable de sandeces [LAm]y que diga que NO sobra[MIm] el amor
[FA]
[y] [que] [empiece] [en] [SI] [y] [no] [en] [no.]
[DO]Y dejar de lado la ve[LAm]reda de la puerta de at[MIm]rás
[FA]por donde te vi marchar
[DO]como una regadera que [LAm]la hierba hace que vuelva a [MIm]brotar
[FA]y ahora todo es campo ya.

[FA]Dices que a veces no com[SOL]prendes que dice mi [LAm]voz
[SOL]como quieres que esté dentro de tu ombligo
[FA]si entre los dedos se me es[SOL]capa volando una [LAm]flor
[SOL]y ella solita va marcando el camino.

[FA]Dices que a veces no com[SOL]prendes que dice mi [LAm]
[SOL]como quieres que yo sepa lo que digo
[FA]si entre los dedos se me es[SOL]capa volando una [LAm]flor
[SOL]y yo la dejo que me marque el camino.
",
        "la-vereda-de-la-puerta-de-atras"
    );

SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'FA'),
(@last_song_id, 'LAm'),
(@last_song_id, 'DO'),
(@last_song_id, 'SOL');
