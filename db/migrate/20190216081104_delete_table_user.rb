class DeleteTableUser < ActiveRecord::Migration[5.1]
  def change
    drop_table :Users
  end
end
