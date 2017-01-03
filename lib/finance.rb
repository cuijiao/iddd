require_relative '../lib/contract'
require_relative '../lib/product'
require_relative '../lib/contract'

class Finance
  def self.run client_id, month
    cost = 0
    senior_price, junior_price = contract_price client_id
    assigned_pss(client_id).reduce(cost) do |cost, ps|
      working_hours = TimeCard.find_by(tw_id: ps.tw_id).first.working_hours_per_day
      price = ps.grade = 'senior' ? senior_price : junior_price
      cost = cost + working_hours*price
    end
  end

  def self.assigned_pss client_id
    Ps.where('client_id in (?)', client_id)
  end

  def self.contract_price client_id
    contract = Contract.find_by(client_id: client_id).first
    product = Product.find_by(product_id: contract.product_id).first
    return product.senior_price_per_hour, product.junior_price_per_hour
  end
end