CREATE TABLE IF NOT EXISTS relatorios (
    id SERIAL PRIMARY KEY,
    nome_relatorio varchar(255) NOT NULL,
    nome_do_servico varchar(255) NOT NULL,
    data_ocorrencia TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);