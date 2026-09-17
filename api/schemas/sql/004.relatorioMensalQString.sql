select count(*) as total 
from "logs_services"
WHERE type_error = 'internal';

select date_trunc('hour', date_ocurrency) as hour_slot,
       COUNT(*) as count
from logs_services
where type_error = 'internal'
group by 1
order by 2 desc
limit 1;   

select service_name,
       COUNT(*) as count
from logs_services
where type_error = 'internal'
  and service_name in ('crm', 'psp', 'tp')
group by service_name
order by 2 desc;   