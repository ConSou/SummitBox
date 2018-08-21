class AddSlugToMountians < ActiveRecord::Migration[5.2]
  def change
    add_column :mountians, :slug, :string
    add_index :mountians, :slug
  end
end
