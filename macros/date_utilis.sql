{% macro get_season(x) %}
    case
        when month(to_timestamp({{x}})) in (12, 1, 2) then 'Winter'
        when month(to_timestamp({{x}})) in (3, 4, 5) then 'Spring'
        when month(to_timestamp({{x}})) in (6, 7, 8) then 'Summer'
        else 'Autumn'
    end
{% endmacro %}

{% macro get_day_type(x) %}
    case
        when dayofweek(to_timestamp({{x}})) in (0, 6) then 'Weekend'
        else 'Business Day'
    end
{% endmacro %}