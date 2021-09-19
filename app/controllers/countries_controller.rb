class CountriesController < ApplicationController
  load_and_authorize_resource

  # GET /countries
  def index
    @q = Country.ransack(params[:q])
    @countries = @q.result(distinct: true).page(params[:page])
  end

  # GET /countries/1
  def show
  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries
  def create
    @country = Country.new(country_params)

    if @country.save
      redirect_to @country, notice: 'Country was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /countries/1
  def update
    if @country.update(country_params)
      redirect_to @country, notice: 'Country was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /countries/1
  def destroy
    @country.destroy
    redirect_to countries_url, notice: 'Country was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def country_params
      params.require(:country).permit(:name)
    end
end
