class Maquina < ActiveRecord::Base
	has_many :ordems
	has_many :servicos
  attr_accessible :tipo
end
