with 

source as (

    select * from {{ source('sandbox', 'reviews') }}

),

renamed as (

    select
        listing_id,
        DATE AS review_date,
        reviewer_name,
        comments AS review_text,
        sentiment AS review_sentiment

    from source

)

select * from renamed
