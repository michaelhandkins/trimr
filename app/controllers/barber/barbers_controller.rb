class Barber::BarbersController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @barber = Barber.new
  end

  def create

  end

  def show

  end

end
