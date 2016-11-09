class Api::V1::BarbersController < Api::V1::BaseController

  def index
    respond_with Barber.all
  end

  def create
    respond_with :api, :v1, Barber.create(barber_params)
  end

  def destroy
    respond_with Barber.destroy(params[:id])
  end

  def update
    barber = Barber.find(params["id"])
    barber.update_attributes(barber_params)
    respond_with barber, json: barber
  end

  private

  def barber_params
    params.require(:barber).permit(:id, :name, :description)
  end

end
