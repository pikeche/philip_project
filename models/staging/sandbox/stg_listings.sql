with 

source as (

    select * from {{ source('sandbox', 'listings') }}

),

renamed as (

    select
        id AS listing_id,
        listing_url,
        name AS listing_name,
        room_type,
        minimum_nights,
        host_id,
        price AS price_str,
        created_at,
        updated_at    
    from source

)

select * from renamed
