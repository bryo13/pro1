class AddNotassignmentIdToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :notassignment_id, :integer
  end
end
