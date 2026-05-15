with cte as (
    select distinct
        date(to_timestamp(started_at)) as date_started_at,
        {{my_new_project.get_day_type('started_at')}} as day_type,
        {{my_new_project.get_season('started_at')}} as season_of_year
    from {{ source('demo', 'bike') }}
    where started_at != 'starttime'
)

select *
from cte