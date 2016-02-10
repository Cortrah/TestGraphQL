class CreateUnitActions < ActiveRecord::Migration
  def change
    create_table :unit_actions do |t|
      t.string :name
      t.string :code
      t.text :description
      t.integer :position_state_id
      t.integer :unit_action_type_id
      t.integer :phase
      t.integer :cost

      t.timestamps null: false
    end
  end
end
