class Contact < ActiveRecord::Base
  attr_accessible :nome, :atividade, :organizacao, :endereco, :telefone, :email, :data_nascimento, :interesses, :personalidade
end
