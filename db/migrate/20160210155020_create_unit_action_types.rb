class CreateUnitActionTypes < ActiveRecord::Migration
  def change
    create_table :unit_action_types do |t|
      t.string :name
      t.string :code
      t.text :description_template
      t.text :results_template

      t.timestamps null: false
    end
  end
end
