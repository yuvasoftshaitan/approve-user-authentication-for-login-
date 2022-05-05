class AddWorkstatusToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :workstatus, :string
  end
end
