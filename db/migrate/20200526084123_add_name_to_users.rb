class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :name, null: false, default: ""
    end
  end
end
