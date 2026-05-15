with trip as (
    select
    ride_id,
    rideable_type,
    date(to_timestamp(started_at)) as date,
    start_station_id,
    end_station_id,
    member_casual,
    timestampdiff(second, to_timestamp(started_at), to_timestamp(ended_at)) as duration_seconds
    from {{ source('demo', 'bike') }}
    where started_at != 'started_at'
)

select *
from trip