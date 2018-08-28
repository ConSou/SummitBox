class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.text :journal
      t.references :bin, foreign_key: true

      t.timestamps
    end
  end
end
