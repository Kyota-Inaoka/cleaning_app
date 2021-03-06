class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :experience, null: false
      t.string :purpose, null: false
      t.timestamps
    end
  end
end
