{% macro function1(x) %}

CASE WHEN TO_TIMESTAMP({{x}}) < current_date() THEN 'PAST'
ELSE 'FUTUR' END

{% endmacro %}

{% macro season(month) %}

CASE WHEN MONTH(TO_TIMESTAMP({{month}})) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{month}})) in (3,4,5)
    THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{month}})) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN' 
    END
{% endmacro %}


{% macro day_type(date) %}
CASE 
WHEN DAYNAME(TO_TIMESTAMP({{date}})) in ('Sat','Sun')
THEN 'WEEKEND'
ELSE 'BUSINESSDAY'
END
{% endmacro %}