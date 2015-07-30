class TaskNamesController < ApplicationController
	def new
		@task_name=TaskName.new
	end
	def create
		@task_name=TaskName.new(task_name_params)
		date=Date.parse(params[:date])
		if (Task.where(date_of_task: date )).first.blank?
			task=Task.new
			task.user = current_user
			task.date_of_task=Date.parse(params[:date])
			task.days=(Date.parse(params[:date])).strftime('%A')
			task.save
		else
			task=Task.find_by(date_of_task: date)
		end
		@task_name.task_id=task.id
		puts task.date_of_task
		if(@task_name.save)
			flash[:notice]="Succesfully created task"
			 redirect_to new_task_name_path(date: Date.parse(params[:date]))
			# redirect_to "/task_names/new?date=#{params[:date][:value]}"
		
		else
			flash[:notice]="Task not created"
			redirect_to new_task_name_path(params[:date]) #'/task_names/new?date=<%=params[:date]%>'
			# redirect_to '/task_names/new?date=<%=params[:date]%>'
		end
	end
	def task_name_params
		params.require(:task_name).permit(:name_of_task, :description, :status)
  	end
  	def destroy
  		task_name=TaskName.find_by(id: params[:id] )
  		task_name.destroy
  		flash[:notice]="Task deleted succesfully"
		redirect_to get_task_path(date: Date.parse(params[:date]))
  	end
  	def edit
  		@task_name=TaskName.find(params[:id] )
  	end
  	def update
  		@task_name = TaskName.find(params[:id])
  		task = Task.find(@task_name.task_id)
  		date = task.date_of_task
  		if @task_name.update(task_name_params)
  			flash[:notice]="Task updated succesfully"
			redirect_to get_task_path(date: date)	
		end
	end

end
