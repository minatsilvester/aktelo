class CreateOrganizationAccesses < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_accesses do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :isadmin
      t.boolean :ismanager
      t.boolean :ismember
      t.boolean :isguest

      t.timestamps
    end
  end
end
