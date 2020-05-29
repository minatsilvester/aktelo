class RemoveType < ActiveRecord::Migration[6.0]
  def change
    remove_column :organizations, :type
  end
end
