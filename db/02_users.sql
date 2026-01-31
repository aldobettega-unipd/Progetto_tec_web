SET NAMES 'utf8mb4';

INSERT INTO 
    utente (username, hash_password, is_admin)
VALUES  
    ('user', '$2y$10$uTaqNIQT9daDazTcWp3OxO0Id2UBScdueolLEZ//vKVx48sU7jxWG', 0),
    ('admin', '$2y$10$sBFFBR7FIDX/CfZi1rwAP.vP8BZXVU3yyT1c.j6so1xgDQgQ.Nl8q', 1);

INSERT INTO 
    playlist (nome_playlist, id_username)
VALUES  
    ('Preferiti', 1);
