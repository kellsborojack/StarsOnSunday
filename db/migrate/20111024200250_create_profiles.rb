class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :Nickname
      t.string :Address
      t.string :HomePhoneNo
      t.string :MobileNo
      t.string :MainEmailAddress
      t.string :BackupEmailAddress

      t.timestamps
    end
  end
end
