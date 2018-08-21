class AddLatToMountian < ActiveRecord::Migration[5.2]
  def change
    add_column :mountians, :lat, :decimal, {:precision=>10, :scale=>6}
  end
end
