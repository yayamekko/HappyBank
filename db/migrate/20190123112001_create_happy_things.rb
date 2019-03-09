class CreateHappyThings < ActiveRecord::Migration[5.1]
  def change
    create_table :happy_things do |t|
      t.text :happy_things
      t.integer :user_id

      t.timestamps
    end
  end
end
