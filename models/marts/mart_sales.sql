
SELECT
  -- product
  country_of_origin
  , name
  , SUM(amount) AS total_sales

FROM {{ ref('stg_product_range') }}
JOIN {{ ref('stg_transactions') }} USING (product_code)

GROUP BY 1, 2
