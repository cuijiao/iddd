class Ps < ActiveRecord::Base
  self.table_name = 'pss'
  attr_reader :tw_id, :grade, :client_id
end