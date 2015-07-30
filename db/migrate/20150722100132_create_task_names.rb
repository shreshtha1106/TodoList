class CreateTaskNames < ActiveRecord::Migration
  def change
    create_table :task_names do |t|
      t.string :name_of_task
      t.string :description
      t.string :status
      t.timestamps null: false
    end
  end
end
