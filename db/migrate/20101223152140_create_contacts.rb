class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :nome
      t.string :atividade
      t.string :organizacao
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :data_nascimento
      t.text :interesses
      t.text :personalidade
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
