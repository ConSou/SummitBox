class AddImageToMountian < ActiveRecord::Migration[5.2]
  def change
    add_column :mountians, :image, :string
  end
end
