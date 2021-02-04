class CreateUserGames < ActiveRecord::Migration[6.1]
  def change
    create_table :user_games do |t|
      t.integer :user_id
      t.integer :game_id
      t.text :details
      t.string :platform
      t.string :level
      t.string :server
      t.string :image

      t.timestamps
    end
  end
end
