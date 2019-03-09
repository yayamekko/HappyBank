class AddTableUser < ActiveRecord::Migration[5.1]
  def change
    create_table :Users do |t|
    	t.string :user_id, null: false, unique: true
      t.string :password_digest, null: false
    end
  end
end
