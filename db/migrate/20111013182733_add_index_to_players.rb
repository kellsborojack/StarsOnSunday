class AddIndexToPlayers < ActiveRecord::Migration
  def change
    add_index :players, [:LastName, :FirstName]
  end
end
