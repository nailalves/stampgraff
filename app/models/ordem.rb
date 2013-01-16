class Ordem < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :user
  belongs_to :produto
  attr_accessible :criacao, :descricao, :observacao, :status, :valor, :cliente_id, :user_id, :produto_id
end
