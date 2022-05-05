class AddTypeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :typename, :string
  end
end
