Select department_name, city 
from departments
natural join (Select l.location_id, l.city, l.country_id
from locations l
join countries c
on (l.country_id=c.country_id)
join regions
using (region_id)
where region_name='Europe');

In