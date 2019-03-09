class DeleteColmunHappyThingsEntryDate < ActiveRecord::Migration[5.1]
  def change
    remove_column :happy_things, :entryDate, :datetime
  end
end
