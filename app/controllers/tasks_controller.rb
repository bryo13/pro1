class TasksController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource
  
  def index
    @tasks = Task.all.order("created_at DESC").paginate(page: params[:page], per_page: 5)
    if params[:search]
      @tasks = Task.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 5)
    else
      @tasks = Task.all.order("created_at DESC").paginate(page: params[:page], per_page: 5)
    end
  end

    def material
      if params[:notassignment].blank?
      @tasks = Task.all.order("created_at DESC").paginate(page: params[:page], per_page: 5)

    else
      @notassignment_id = Notassignment.find_by(name: params[:notassignment]).id
      @tasks = Task.where(notassignment_id: @notassignment_id).order("created_at DESC").paginate(page: params[:page], per_page: 5)
      end
    end

  def show
    @duedate = Task.find(params[:id]).created_at+2.day
  end

  def new
    @task = current_user.tasks.build
  end   

  def edit
  end

  def create
   @task = current_user.tasks.build(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def find_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:unit_code, :unit_name, :semester,:notassignment_id, :additional_information, :user_id, attaches:[])
    end
end
