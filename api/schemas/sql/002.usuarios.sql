CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nome varchar(255) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    senha varchar(255) NOT NULL,  
    acc_id varchar(255) NOT NULL UNIQUE,  
    date_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);