class UtilsController < ApplicationController
  def cities
    # render json: City.select(:id, :name).where('name like ?', "#{params[:term]}%").to_json
    render json: City.select('cities.id',
        "(cities.name || ' | ' || states.name || ' | ' || countries.name) as text").
      where('cities.name ilike ?', "#{params[:term]}%").joins(state: :country).to_json
  end

  def postal_code
    res = nil
    city = nil
    res = ViaCep::Address.new(params['postal_code']) unless params['postal_code'].blank?
    city = City.find_by(ibgeid: res.ibge) if res
    render json: { data: res, city: city }
  end
end