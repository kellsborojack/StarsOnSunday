class AddNicknameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Nickname, :string
  end
end
