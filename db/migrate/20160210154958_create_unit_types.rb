class CreateUnitTypes < ActiveRecord::Migration
  def change
    create_table :unit_types do |t|
      t.string :name
      t.string :code
      t.text :description
      t.integer :money_cost
      t.integer :material_cost
      t.integer :movement
      t.integer :attack
      t.integer :defense
      t.integer :range_attack
      t.integer :cargo_capacity

      t.timestamps null: false
    end
  end
end
