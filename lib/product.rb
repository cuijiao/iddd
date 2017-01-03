class Product < ActiveRecord::Base
  attr_reader :product_id, :senior_count, :junior_count, :senior_price_per_hour, :junior_price_per_hour
end