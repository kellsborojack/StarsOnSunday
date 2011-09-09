class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :LastName
      t.string :FirstName
      t.string :Nickname
      t.integer :ClubHandicap
      t.integer :SOSHandicap

      t.timestamps
    end
  end
end
