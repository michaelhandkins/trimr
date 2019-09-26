class BarberdashsController < ApplicationController

  def show
    @barber = current_user.barbers.first
  end


end
