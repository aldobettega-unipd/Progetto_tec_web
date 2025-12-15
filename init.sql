CREATE TABLE utente (
    username VARCHAR(20) PRIMARY KEY,
    hash_password VARCHAR(32) NOT NULL
);

CREATE TABLE artista (
    nome VARCHAR(50) PRIMARY KEY,
    descrizione TEXT NOT NULL
);

CREATE TABLE canzone (
    id VARCHAR(3) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    artista VARCHAR(50) NOT NULL REFERENCES artista(nome),
    descrizione TEXT NOT NULL,
    testo_canzone TEXT NOT NULL
);

CREATE TABLE playlist (
    id VARCHAR(3) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    username VARCHAR(20) NOT NULL REFERENCES utente(username)
);

CREATE TABLE canzoni_playlist (
    playlist VARCHAR(3) REFERENCES playlist(id),
    canzone VARCHAR(3) REFERENCES canzone(id),
    PRIMARY KEY(playlist, canzone)
);


