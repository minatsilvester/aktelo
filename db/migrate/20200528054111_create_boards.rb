class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :name
      t.text :about
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
