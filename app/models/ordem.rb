class Ordem < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :user
	has_many :servicos
  attr_accessible :criacao, :status, :cliente_id, :user_id, :forma_pagamento
end
