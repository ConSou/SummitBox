class AddImgurlToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :imgurl, :string
  end
end
