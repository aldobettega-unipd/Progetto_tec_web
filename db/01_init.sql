CREATE DATABASE IF NOT EXISTS msanguin;

USE msanguin;

CREATE TABLE utente (
    id_utente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL UNIQUE,
    hash_password VARCHAR(255) NOT NULL,
    is_admin TINYINT(1) DEFAULT 0,
    foto_profilo INT UNSIGNED DEFAULT 1
);

CREATE TABLE artista (
    nome_artista VARCHAR(50) PRIMARY KEY
    descrizione_artista TEXT NOT NULL,
    slug_artista VARCHAR(30) NOT NULL,
    lingua_artista VARCHAR(3) DEFAULT NULL
);

CREATE TABLE canzone (
    id_canzone INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titolo_canzone VARCHAR(50) NOT NULL,
    autore_canzone VARCHAR(50) NOT NULL, -- da valutare se usare l'id dell'artista
    lingua_canzone VARCHAR(3) NOT NULL,
    testo_canzone TEXT NOT NULL,
    slug_canzone VARCHAR(50) NOT NULL,
    FOREIGN KEY (autore_canzone) REFERENCES artista(nome_artista) ON DELETE CASCADE
);

CREATE TABLE playlist (
    id_playlist INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome_playlist VARCHAR(50) NOT NULL,
    id_username INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_username) REFERENCES utente(id_utente) ON DELETE CASCADE
);

CREATE TABLE canzoni_playlist (
    playlist INT UNSIGNED, 
    canzone INT UNSIGNED,
    PRIMARY KEY (playlist, canzone),
    FOREIGN KEY (playlist) REFERENCES playlist(id_playlist) ON DELETE CASCADE,
    FOREIGN KEY (canzone) REFERENCES canzone(id_canzone) ON DELETE CASCADE
);

CREATE TABLE accordi_canzone (
    id_canzone INT UNSIGNED,
    accordo VARCHAR(4),
    PRIMARY KEY(id_canzone, accordo),
    FOREIGN KEY (id_canzone) REFERENCES canzone(id_canzone) ON DELETE CASCADE
);


