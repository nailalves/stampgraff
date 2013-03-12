class Ordem < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :user
	has_many :servicos
  attr_accessible :criacao, :status, :cliente_id, :user_id, :pagamento


	FORMA_PAGAMENTO = ["Cheque", "Cartao", "Deposito"]

	def metodo_pagamento
		return FORMA_PAGAMENTO[self.pagamento]
	end


end
