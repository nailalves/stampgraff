class Maquina < ActiveRecord::Base
	has_many :ordems
  attr_accessible :tipo
end
