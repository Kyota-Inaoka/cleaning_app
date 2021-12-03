class CreateCleaningPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :cleaning_posts do |t|
      t.integer :place_id, null: false
      t.string :description, null: false
      t.integer :required_time_id, null: false
      t.integer :like_times, default: 0, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
