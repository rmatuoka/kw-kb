class CreateJournalists < ActiveRecord::Migration
  def self.up
    create_table :journalists do |t|
      t.string :nome
      t.string :tipo
      t.string :cargo
      t.string :organizacao
      t.string :veiculo
      t.string :editoria
      t.string :endereco
      t.text :telefones
      t.string :email
      t.string :site
      t.text :interesses
      t.text :materias
      t.text :participacoes
      t.text :encontros
      t.text :observacoes
      t.timestamps
    end
  end

  def self.down
    drop_table :journalists
  end
end
