class ConstructionTypesController < ApplicationController
  load_and_authorize_resource

  # GET /construction_types
  def index
    @q = ConstructionType.ransack(params[:q])
    @construction_types = @q.result(distinct: true).page(params[:page])
  end

  # GET /construction_types/1
  def show
  end

  # GET /construction_types/new
  def new
    @construction_type = ConstructionType.new
  end

  # GET /construction_types/1/edit
  def edit
  end

  # POST /construction_types
  def create
    @construction_type = ConstructionType.new(construction_type_params)

    if @construction_type.save
      redirect_to @construction_type, notice: 'Construction type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /construction_types/1
  def update
    if @construction_type.update(construction_type_params)
      redirect_to @construction_type, notice: 'Construction type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /construction_types/1
  def destroy
    @construction_type.destroy
    redirect_to construction_types_url, notice: 'Construction type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_construction_type
      @construction_type = ConstructionType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def construction_type_params
      params.require(:construction_type).permit(:name, :task_type_ids => [])
    end
end
