class Supplier < ActiveRecord::Base
  attr_accessible :nome_fantasia, :razao_social, :cnpj, :endereci, :telefone, :email, :site, :atividade, :contato, :outros_contatos, :servicos_realizados, :obs
end
