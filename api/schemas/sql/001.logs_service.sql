CREATE TABLE IF NOT EXISTS logs_services (
    id SERIAL PRIMARY KEY,
    service_name TEXT,
    service_id TEXT,
    date_ocurrency TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    type_error TEXT,
    status_code INTEGER,
    id_transition TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);