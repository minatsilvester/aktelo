class RemoveSpellingMistake < ActiveRecord::Migration[6.0]
  def change
    remove_column :organizations, :orgnization_type
  end
end
