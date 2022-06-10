class AddColumnsToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :created_at, :timestamps
    add_column :authors, :updated_at, :timestamps
  end
end
