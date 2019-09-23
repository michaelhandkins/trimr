class Barber::HaircutsController < ApplicationController

  def new
    @haircut = Haircut.new
  end

  def create
    @haircut = current_user.haircuts.create(haircut_params)
    redirect_to barber_haircuts_path
  end

  def index
    @haircuts = Haircut.all
  end

  private

  def haircut_params
    params.require(:haircut).permit(:haircut_name, :description, :cost)
  end

end
