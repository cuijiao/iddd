class TimeCard < ActiveRecord::Base
  attr_reader :tw_id, :working_hours_per_day
end