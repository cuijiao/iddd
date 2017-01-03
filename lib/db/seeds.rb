require_relative '../../lib/client'
require_relative '../../lib/contract'
require_relative '../../lib/product'
require_relative '../../lib/ps'
require_relative '../../lib/time_card'

client = Client.create!({client_id: 1, contract_id: 11})
contract = Contract.create!({contract_id:11, product_id: 111, client_id:1, sale_person_id: 1001})
product = Product.create!({product_id: 111, senior_count: 3 , junior_count:3, senior_price_per_hour:100, junior_price_per_hour:80})
ps1 = Ps.create!({tw_id: 10001,grade: 'senior', client_id: 1})
ps2 = Ps.create!({tw_id: 10002,grade: 'senior', client_id: 1})
ps3 = Ps.create!({tw_id: 10003,grade: 'senior', client_id: 1})
ps4 = Ps.create!({tw_id: 10004,grade: 'junior', client_id: 1})
ps5 = Ps.create!({tw_id: 10005,grade: 'junior', client_id: 1})
ps6 = Ps.create!({tw_id: 10006,grade: 'junior', client_id: 1})
time_card1 = TimeCard.create!({tw_id:10001,work4ing_hours_per_day: 8})
time_card2 = TimeCard.create!({tw_id:10002,work4ing_hours_per_day: 8})
time_card3 = TimeCard.create!({tw_id:10003,work4ing_hours_per_day: 8})
time_card4 = TimeCard.create!({tw_id:10004,work4ing_hours_per_day: 8})
time_card5 = TimeCard.create!({tw_id:10005,work4ing_hours_per_day: 8})
time_card6 = TimeCard.create!({tw_id:10006,work4ing_hours_per_day: 8})