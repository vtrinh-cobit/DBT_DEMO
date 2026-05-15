with station as (
    select
    distinct
    start_station_id as id,
    start_station_name as name,
    start_lat as lat,
    start_lng as lng
    from {{ source('demo', 'bike') }}
    where started_at != 'starttime'
)

select *
from station