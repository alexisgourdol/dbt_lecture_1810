
SELECT
  ABV AS abv
  , Name AS name
  , Size AS size
  , Base_unit AS base_unit
  , Vendor_code AS vendor_code
  , CAST(Product_code AS INT) AS product_code
  , Retail_price AS retail_price
  , COALESCE(Country_of_Origin, 'unknown') AS country_of_origin
FROM {{ source('beers_1810', 'Product_range') }}
