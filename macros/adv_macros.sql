{% macro loaddata(pat, tbl, frm ) %}
{% set qry = 'COPY INTO  ' + tbl + ' FROM @' + pat + ' FILE_FORMAT = ' + frm %}
{{ run_query(qry) }}
{% endmacro %}


{% macro loaddata2 () %}
    {% set q1 = 'truncate table stg_dealerhsip' %}
    {% set qry = 'COPY INTO mkmotors_dev.staging.stg_dealership from @mkmotors_dev.staging.s3dealers 
    FILE_FORMAT = mkmotors_dev.staging.ff_csv_nohdr_dq' %}
    {{ run_query(q1) }}
    {{ run_query(qry) }}
{% endmacro %}


{% macro testdml() %}

{% set queries %}
create or replace table analytics.sch_lti.protest2(id int, name varchar);
insert into analytics.sch_lti.protest2 values(10,'murali'),(11,'kannan'),(12,'none');
update analytics.sch_lti.protest2 set name='Guru' where id=12;

{% endset %}

{% do run_query(queries) %}

{% endmacro %}


