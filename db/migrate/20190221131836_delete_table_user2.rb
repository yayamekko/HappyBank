class DeleteTableUser2 < ActiveRecord::Migration[5.1]
  def change
    drop_table :Users
  end
end
