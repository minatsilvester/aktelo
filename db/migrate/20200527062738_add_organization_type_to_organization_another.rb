class AddOrganizationTypeToOrganizationAnother < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :organization_type, :string
  end
end
