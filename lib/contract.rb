class Contract < ActiveRecord::Base
  attr_reader :sale_person_id, :client_id, :product_id, :contract_id
end