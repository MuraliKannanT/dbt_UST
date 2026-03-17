{# { config(
        pre_hook = "alter session set timezone = 'Asia/Kolkata'", 
        post_hook = "copy into @~ from {{this}}" ) } #}

select r_regionkey region_id,
       r_name name,
       r_comment comment,
       current_timestamp() as updated_time
        from {{ source('src', 'regions') }}
