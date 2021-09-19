class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, unless: :exceptions?
  before_action :set_configurations, unless: :exceptions?
  # before_action :set_paper_trail_whodunnit

  rescue_from CanCan::AccessDenied do |exception|
    flash[:danger] = 'Você não está autorizado a fazer essa ação!'
    Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect}"
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  private
  def exceptions?
    ['utils'].include? controller_name
  end

  def set_configurations
    @app_name = "Meus Projetos"
    @app_description = "Sistema de Gestão de Projetos de Construção"
    @menu = MenuItem.published

    params[:q] = {} unless params[:q]
    params[:q][:s] = 'name asc' unless params[:q][:s]
  end
end
