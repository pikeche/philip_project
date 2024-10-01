with 

source as (

    select * from {{ source('sandbox', 'hosts') }}

),

renamed as (

    select
        id AS host_id,
        NAME AS host_name,
        is_superhost,
        created_at,
        updated_at
    from source

)

select * from renamed
