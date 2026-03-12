select n_nationkey nation_id,
       n_regionkey region_id,
       n_name name,
       n_comment comment
        from {{ source('src01', 'nations') }}
