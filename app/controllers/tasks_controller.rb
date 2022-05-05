class TasksController < ApplicationController
  def create
  
    @user = User.find(params[:task][:user_id])
    @task = @user.tasks.create(task_params)
    
    redirect_to home_path(@user)
  end 
  def start_work
    @task = Task.find(params[:id])
    @task.update(workstatus: "start work")

    redirect_to home_path(current_user)
  end
   def finish_work

    @task = Task.find(params[:id])
    @task.update(workstatus: "finish work")
    redirect_to home_path(current_user)
  end 
   def in_progress

    @task = Task.find(params[:id])
    @task.update(workstatus: "in_progress")
   redirect_to home_path(current_user)
  end

  private
    def task_params
      params.require(:task).permit(:name, :workstatus ,:user_id)
    end




end


