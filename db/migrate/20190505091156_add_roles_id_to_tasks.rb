class AddRolesIdToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :roles_id, :integer
  end
end
