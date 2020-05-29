class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column :boards_accesses, :delete
  end
end
