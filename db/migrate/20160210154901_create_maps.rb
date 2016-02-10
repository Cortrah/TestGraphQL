class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.string :code
      t.integer :rows
      t.integer :cols

      t.timestamps null: false
    end
  end
end
