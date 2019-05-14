class AddUsersIdToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :users_id, :integer
  end
end
