class AddItemToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :acompanhamento, :text
  end

  def self.down
    remove_column :contacts, :acompanhamento
  end
end
