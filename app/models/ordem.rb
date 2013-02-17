class Ordem < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :user
  belongs_to :produto
	belongs_to :papel
	belongs_to :maquina
  attr_accessible :criacao, :observacao, :status, :valor, :cliente_id, :user_id, :produto_id, :papel_id, :maquina_id
end
