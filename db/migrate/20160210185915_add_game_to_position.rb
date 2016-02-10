class AddGameToPosition < ActiveRecord::Migration
  def change
    add_column :positions, :game_id, :integer
  end
end
