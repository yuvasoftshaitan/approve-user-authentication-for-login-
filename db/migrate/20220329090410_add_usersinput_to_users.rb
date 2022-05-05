class AddUsersinputToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :usersinput, :boolean
  end
end
