class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.integer :number
      t.text :introduction
      t.text :results

      t.timestamps null: false
    end
  end
end
