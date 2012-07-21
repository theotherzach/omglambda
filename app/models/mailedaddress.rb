class Mailedaddress < ActiveRecord::Base
  attr_accessible :branch, :deliverypoint, :drop, :piecepostage, :ranktotal, :zipcode, :zipplus4
end
