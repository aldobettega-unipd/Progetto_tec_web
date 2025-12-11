CREATE TABLE IF NOT EXISTS contatti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_invio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO contatti (nome, email) VALUES ('Test Utente', 'test@example.com');