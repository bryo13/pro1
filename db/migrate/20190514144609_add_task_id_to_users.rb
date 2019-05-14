class AddTaskIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :task_id, :integer
  end
end
