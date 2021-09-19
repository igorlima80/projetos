class SettingsController < ApplicationController
  load_and_authorize_resource

  # GET /settings
  def index
    @q = Setting.ransack(params[:q])
    @settings = @q.result(distinct: true).page(params[:page])
  end

  # GET /settings/1
  def show
  end

  # GET /settings/new
  def new
    @setting = Setting.new
  end

  # GET /settings/1/edit
  def edit
  end

  # POST /settings
  def create
    @setting = Setting.new(setting_params)

    if @setting.save
      redirect_to @setting, notice: 'Setting was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /settings/1
  def update
    if @setting.update(setting_params)
      redirect_to @setting, notice: 'Setting was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /settings/1
  def destroy
    @setting.destroy
    redirect_to settings_url, notice: 'Setting was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def setting_params
      params.require(:setting).permit(:fee_with_service, :fee_without_service, :percentage_net_value_total, :percentage_net_value_partial)
    end
end
