class ProjectTypesController < ApplicationController
  before_action :set_project_type, only: [:show, :edit, :update, :destroy]

  # GET /project_types
  def index
    @q = ProjectType.ransack(params[:q])
    @project_types = @q.result(distinct: true).page(params[:page])
  end

  # GET /project_types/1
  def show
  end

  # GET /project_types/new
  def new
    @project_type = ProjectType.new
  end

  # GET /project_types/1/edit
  def edit
  end

  # POST /project_types
  def create
    @project_type = ProjectType.new(project_type_params)

    if @project_type.save
      redirect_to @project_type, notice: 'Project type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /project_types/1
  def update
    if @project_type.update(project_type_params)
      redirect_to @project_type, notice: 'Project type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /project_types/1
  def destroy
    @project_type.destroy
    redirect_to project_types_url, notice: 'Project type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_type
      @project_type = ProjectType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_type_params
      params.require(:project_type).permit(:name)
    end
end
