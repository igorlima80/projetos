class TasksController < ApplicationController
  load_and_authorize_resource

  # GET /tasks
  def index
   get_construction
    @tasks = @construction.tasks.page(params[:page])    
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    get_construction
    @task= @construction.tasks.build 
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    get_construction
    @task = @construction.tasks.build(task_params)  
    @task.status = 'registered'

    if @task.save
      redirect_to @construction, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    def get_construction
      @construction = Construction.find(params[:construction_id]) 
    end 

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:task_type_id, :construction_id, :employment_id, :status, :budget_amount, :start_date, :end_date, :cost, :percentage)
    end
end
