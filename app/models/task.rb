class Task < ActiveRecord::Base
	belongs_to :user 
	has_many :task_names

	def mymethod
		for task_name in self.task_names
			if task_name.status == "0"
				puts "task details"
				puts task_name.name_of_task
				puts task_name.task_id
				return true
			end
		end
		return false
	end 

end
