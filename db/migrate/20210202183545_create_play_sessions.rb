class CreatePlaySessions < ActiveRecord::Migration[6.1]
  def change
    create_table :play_sessions do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :game_id
      t.boolean :is_accepted
      t.boolean :rejected
      t.datetime :time

      t.timestamps
    end
  end
end
