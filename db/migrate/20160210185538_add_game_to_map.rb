class AddGameToMap < ActiveRecord::Migration
  def change
     add_column :maps, :game_id, :integer
  end
end
