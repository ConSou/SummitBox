class AddElevationToMountian < ActiveRecord::Migration[5.2]
  def change
    add_column :mountians, :elevation, :integer
  end
end
