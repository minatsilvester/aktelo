class CreateBoardsAccesses < ActiveRecord::Migration[6.0]
  def change
    create_table :boards_accesses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :board, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.boolean :read
      t.boolean :write
      t.boolean :create
      t.boolean :edit
      t.boolean :delete

      t.timestamps
    end
  end
end
