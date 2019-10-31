class StaticPagesController < ApplicationController
  
  def all_barbers
    @barbers = Barber.all
  end

end
