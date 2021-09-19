class StagesController < ApplicationController
  load_and_authorize_resource

  # GET /stages
  def index
    @q = Stage.ransack(params[:q])
    @stages = @q.result(distinct: true).page(params[:page]).order('id ASC')
    
  end

  # GET /stages/1
  def show
  end

  # GET /stages/new
  def new
    @stage = Stage.new
  end

  # GET /stages/1/edit
  def edit
  end

  # POST /stages
  def create
    @stage = Stage.new(stage_params)

    if @stage.save
      redirect_to @stage, notice: 'Stage was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /stages/1
  def update
    if @stage.update(stage_params)
      redirect_to @stage, notice: 'Stage was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /stages/1
  def destroy
    @stage.destroy
    redirect_to stages_url, notice: 'Stage was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stage
      @stage = Stage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stage_params
      params.require(:stage).permit(:name,
        task_types_attributes: [
              :id, :name, :_destroy
        ])
    end
end
