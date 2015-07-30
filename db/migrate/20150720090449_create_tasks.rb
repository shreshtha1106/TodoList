class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :days
      t.string :task_name
      t.text :description
      t.string :status

      t.timestamps null: false
    end
  end
end
