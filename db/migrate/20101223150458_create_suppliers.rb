class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.string :nome_fantasia
      t.string :razao_social
      t.integer :cnpj
      t.string :endereci
      t.string :telefone
      t.string :email
      t.string :site
      t.text :atividade
      t.string :contato
      t.text :outros_contatos
      t.text :servicos_realizados
      t.text :obs
      t.timestamps
    end
  end

  def self.down
    drop_table :suppliers
  end
end
