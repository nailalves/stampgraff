class Papel < ActiveRecord::Base
	has_many :ordems
  attr_accessible :tipo
end
