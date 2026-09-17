INSERT INTO logs_services (service_name, service_id, date_ocurrency, type_error, status_code, id_transition)
SELECT
    (ARRAY['crm','psp','tp'])[1 + (random() * 2)::int],
    'svc_' || (random() * 10000)::int,
    NOW() - (random() * INTERVAL '7 days'),
    CASE WHEN random() < 0.3 THEN 'internal' ELSE 'external' END,
    (ARRAY[400,404,500,502,503])[1 + (random() * 4)::int],
    'tr_' || (random() * 100000)::int
FROM generate_series(1, 1000);   