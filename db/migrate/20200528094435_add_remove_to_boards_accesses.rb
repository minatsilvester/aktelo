class AddRemoveToBoardsAccesses < ActiveRecord::Migration[6.0]
  def change
    add_column :boards_accesses, :remove, :boolean
  end
end
