class Os < ActiveRecord::Base
	belongs_to :cliente
	has_many :produtos
  attr_accessible :cliente_id, :criacao, :descricao, :observacao, :produto_id, :status, :user_id, :valor
end
