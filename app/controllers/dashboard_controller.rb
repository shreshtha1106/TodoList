class DashboardController < ApplicationController
	require 'date'
	require 'task_name'
	def index
		@task=Task.all
		@current_task= Task.find_by(date_of_task: Date.today)
		@week_start= Date.today.beginning_of_week
	end
	def get_task
		get_date= Date.parse(params[:date])
		task_on_date=Task.where(date_of_task: get_date).first
		if(!task_on_date.blank?)
		@task_name=task_on_date.task_names
	end
	end
end
