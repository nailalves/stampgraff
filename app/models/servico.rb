class Servico < ActiveRecord::Base
  belongs_to :produto
  belongs_to :papel
  belongs_to :maquina
  belongs_to :ordem
  attr_accessible :observacao, :valor, :produto_id, :papel_id, :maquina_id, :ordem_id
end
