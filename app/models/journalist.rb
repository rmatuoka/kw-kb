class Journalist < ActiveRecord::Base
  attr_accessible :nome, :tipo, :cargo, :organizacao, :veiculo, :editoria, :endereco, :telefones, :email, :site, :interesses, :materias, :participacoes, :encontros, :observacoes
end
