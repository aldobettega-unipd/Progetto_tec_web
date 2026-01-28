-- File generato automaticamente
SET NAMES 'utf8mb4';


-- 2. Inserimento Canzoni e Accordi Semplificati
INSERT INTO canzone (titolo_canzone, autore_canzone, lingua_canzone, testo_canzone, slug_canzone) VALUES 
(
        "Knockin' On Heaven's Door",
        "Guns N' Roses",
        "ENG",
        "
        [SOL]   Mamma [RE]take this badge off of [LAm]me  
        [SOL]   I can't [RE]use it any[DO]more 
        [SOL]   It's getting [RE]dark, too dark to [LAm]see 
        [SOL]   Feels like I'm [RE]knockin' on heaven's [DO]door. 

        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 

        [SOL]   Mamma [RE]wipe the blood from my [LAm]face 
        [SOL]   I'm sick and [RE]tired of the [DO]war 
        [SOL]   Got a [RE]feeling that's hard to [LAm]trace    
        [SOL]   I feel I'm [RE]knocking on heaven's [DO]door 

        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 

        [SOL]   Mama [RE]put my guns in the [LAm7]ground 
        [SOL]   I can't [RE]shoot them any[DO]more 
        [SOL]   That long black [RE]cloud is coming [LAm7]down 
        [SOL]   Feels like I'm [RE]knockin' on heaven's [DO]door. 

        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [LAm]door 
        [SOL]   Knock, knock, [RE]knockin' on heaven's [DO]door ",
        "knockin_on_heavens_door"
    );
SET @last_song_id = LAST_INSERT_ID();
INSERT IGNORE INTO accordi_canzone (id_canzone, accordo) VALUES 
(@last_song_id, 'DO'),
(@last_song_id, 'LAm'),
(@last_song_id, 'RE'),
(@last_song_id, 'SOL');

