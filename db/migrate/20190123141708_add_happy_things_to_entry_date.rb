class AddHappyThingsToEntryDate < ActiveRecord::Migration[5.1]
  def change
    add_column :happy_things, :entryDate, :timestamp
  end
end
