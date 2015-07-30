class AddDateToTask < ActiveRecord::Migration
  def change
  	add_column :tasks, :date_of_task, :date
  end
end
