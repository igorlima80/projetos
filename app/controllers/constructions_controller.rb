class ConstructionsController < ApplicationController
  load_and_authorize_resource
  
  # GET /constructions

  def index
    @q = Construction.ransack(params[:q])
    @constructions = @q.result(distinct: true).page(params[:page])
  end

  # GET /constructions/1
  def show
  end

  # GET /constructions/new
  def new

    @construction.addresses.build
    #@construction.documents.build
      
    @cities = []
    @cities_address = []

  end

  # GET /constructions/1/edit
  def edit
    
    @cities_address = @construction.addresses.map(&:city)
  end

  # POST /constructions
  def create
    @construction = Construction.new(construction_params)

    if @construction.save
      redirect_to @construction, notice: 'Construction was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /constructions/1
  def update
    if @construction.update(construction_params)
      redirect_to @construction, notice: 'Construction was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /constructions/1
  def destroy
    @construction.destroy
    redirect_to constructions_url, notice: 'Construction was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_construction
      @construction = Construction.find(params[:id])
    end

  

    # Only allow a trusted parameter "white list" through.
    def construction_params
      params.require(:construction).permit(:name, :description, :start_date, :end_date, :area, :expected_budget, 
                                           :ground_area, :bedroom, :bathroom, :toilet, :living_room, :cars_in_garage, 
                                           :construction_type_id, :workplace_id, :person_id, :pattern, :barbecue_grill, 
                                           :home_office, :balcony, :employment_ids => [],
          addresses_attributes: [
            :id, :description, :street, :number, :complement, :district, :zipcode, :city_id, :_destroy
          ],
          documents_attributes: [
            :id, :_destroy, :document_type_id, :attachment
          ],
          projects_attributes: [
            :id, :_destroy, :project_type_id, :state_id, :employment_id, :status, 
            :advice, :advice_number, :rt_number, :attachment
          ]

      )
    end
end
