CREATE TABLE utente (
    username VARCHAR(20) PRIMARY KEY,
    hash_password VARCHAR(255) NOT NULL
);

CREATE TABLE artista (
    nome VARCHAR(50) PRIMARY KEY,
    descrizione TEXT NOT NULL
);

CREATE TABLE canzone (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    artista VARCHAR(50) NOT NULL,
    descrizione TEXT NOT NULL,
    testo_canzone TEXT NOT NULL,
    FOREIGN KEY (artista) REFERENCES artista(nome) ON DELETE CASCADE
);

CREATE TABLE playlist (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    username VARCHAR(20) NOT NULL,
    FOREIGN KEY (username) REFERENCES utente(username) ON DELETE CASCADE
);

CREATE TABLE canzoni_playlist (
    playlist INT UNSIGNED, 
    canzone INT UNSIGNED,
    PRIMARY KEY (playlist, canzone),
    FOREIGN KEY (playlist) REFERENCES playlist(id) ON DELETE CASCADE,
    FOREIGN KEY (canzone) REFERENCES canzone(id) ON DELETE CASCADE
);


