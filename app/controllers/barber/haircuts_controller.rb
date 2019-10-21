class Barber::HaircutsController < ApplicationController
  before_action :authenticate_user!

  def new
    @haircut = current_barber.haircuts.new
  end

  def create
    @haircut = current_barber.haircuts.create(haircut_params)
    redirect_to barber_barber_haircuts_path(current_barber)
  end

  def index
    @haircuts = current_barber.haircuts.all
  end

  private

  def haircut_params
    params.require(:haircut).permit(:haircut_name, :description, :cost)
  end

  helper_method :current_barber
  def current_barber
    if params[:barber_id]
      @current_barber ||= Barber.find(params[:barber_id])
    else
      current_haircut.barber
    end
  end

  helper_method :current_haircut
    def current_haircut
      @current_haircut ||= Haircut.find(params[:id])
    end

end
