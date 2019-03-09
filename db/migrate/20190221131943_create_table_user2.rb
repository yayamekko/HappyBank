class CreateTableUser2 < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_id, null: false, unique: true
      t.string :password_digest, null: false
      t.timestamps
    end
  end
end
