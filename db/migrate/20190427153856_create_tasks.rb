class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :unit_code
      t.string :unit_name
      t.integer :semester
      t.text :additional_information
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
