
SELECT
  CAST(Amount AS FLOAT64) AS amount
  , Profit AS profit
  , Sale_amount AS sale_amount
  , CAST(Product_code AS INT) AS product_code
  , Discount_amount AS discount_amount
  , Percentage_markup AS percentage_markup
  , Discount_percentage AS discount_percentage
  , Date_and_time_of_unloading AS date_and_time_of_unloading
FROM {{ source('beers_1810', 'Transactions') }}
