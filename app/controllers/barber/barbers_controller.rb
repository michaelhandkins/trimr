class Barber::BarbersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @barbers = Barber.all
  end

  def new
    @barber = Barber.new
  end

  def create
    if current_user.barbers.present?
      return render plain: 'Unauthorized', status: :unauthorized
    else
      @barber = current_user.barbers.create(barber_params)
      if @barber.valid?
        redirect_to barber_barber_path(@barber)
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def show
    @barber = Barber.find(params[:id])
  end

  def edit
    @barber = current_user.barbers.first
  end

  def update
    @barber = current_user.barbers.first.update(barber_params)
    redirect_to barber_barber_path(current_user.barbers.first)
  end

  private

  def barber_params
    params.require(:barber).permit(:name, :phone_number, :zip_code, :barber_bio, :square_embed_code, :booking_site_url, :profile_picture, :city, :state)
  end

end
