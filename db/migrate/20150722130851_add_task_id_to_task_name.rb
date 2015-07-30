class AddTaskIdToTaskName < ActiveRecord::Migration
  def change
  	add_column :task_names, :task_id, :integer
  	add_index :task_names, :task_id
  end
end
