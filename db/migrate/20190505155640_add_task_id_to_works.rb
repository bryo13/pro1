class AddTaskIdToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :task_id, :integer
  end
end
