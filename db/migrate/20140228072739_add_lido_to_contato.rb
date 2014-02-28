class AddLidoToContato < ActiveRecord::Migration
  def change
    add_column :contatos, :lido, :boolean
  end
end
