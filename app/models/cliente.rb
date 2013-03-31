class Cliente < ActiveRecord::Base
	has_many :ordems
  attr_accessible :celular, :email_empresa, :email_pessoal, :endereco, :name, :contato, :nascimento, :rg, :telefone, :celular2, :cpf, :cnpj, :razao_social, :status

  validates_presence_of :celular, :name, :rg, :email_pessoal 
end
