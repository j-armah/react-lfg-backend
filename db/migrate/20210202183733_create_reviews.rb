class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :reviewer_id
      t.integer :reviewee_id
      t.text :contents
      t.float :rating
      t.integer :play_session_id

      t.timestamps
    end
  end
end
