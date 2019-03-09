class DeleteColmunUsersId < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :id, :integer
  end
end
