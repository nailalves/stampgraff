class Papel < ActiveRecord::Base
	has_many :ordems
	has_many :servicos
  attr_accessible :tipo
end
