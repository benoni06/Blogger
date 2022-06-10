class AddColumnsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :created_at, :timestamps
    add_column :posts, :updated_at, :timestamps
  end
end
