class Barber::PhotosController < ApplicationController
  
  def new
    @photo = current_barber.photos.new
  end

  def create
    @photo = current_barber.photos.create(photo_params)
    redirect_to barber_barber_path(current_barber)
  end

  def index
    @photos = current_barber.photos.all
  end

  private

  helper_method :current_barber
  def current_barber
    if params[:barber_id]
      @current_barber ||= Barber.find(params[:barber_id])
    else
      @current_barber ||= current_photo.barber
    end
  end

  helper_method :current_photo
  def current_photo
    @current_photo ||= Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:photo, :caption)
  end

end
