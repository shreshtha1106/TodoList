class RemoveColumnsFromTask < ActiveRecord::Migration
  def change
  	remove_column :tasks, :task_name
  	remove_column :tasks, :description
  	remove_column :tasks, :status
  end
end
