class AddOrganizationTypeToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :orgnization_type, :string
  end
end
