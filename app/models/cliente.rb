class Cliente < ActiveRecord::Base
	has_many :ordems
  attr_accessible :celular, :email, :endereco, :name, :nascimento, :rg, :status, :telefone1, :telefone2
end
