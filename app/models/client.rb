class Client < ActiveRecord::Base
  attr_accessible :nome, :razao_social, :cnpj, :endereco, :telefone, :email, :site, :classificacao, :porte, :atividade, :contato_atendimento, :administrador, :outros_contatos, :servicos_contratados, :projetos_desenvolvidos, :recados, :agenda, :obs
end
