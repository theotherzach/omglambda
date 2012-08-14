class Household < ActiveRecord::Base
  attr_accessible :address, :delivery_point, :epsilon_key, :plus_4, :zip
end
