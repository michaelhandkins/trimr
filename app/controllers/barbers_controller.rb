class BarbersController < ApplicationController
  before_action :authenticate_user!

  def index
    @barbers = Barber.all
  end

  def show

  end

end
