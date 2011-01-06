class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :nome
      t.string :razao_social
      t.string :cnpj
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :site
      t.string :classificacao
      t.string :porte
      t.string :atividade
      t.string :contato_atendimento
      t.string :administrador
      t.text :outros_contatos
      t.text :servicos_contratados
      t.text :projetos_desenvolvidos
      t.text :recados
      t.text :agenda
      t.text :obs
      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
