class PhotosController < ApplicationController
 before_action :authenticate_user!
 skip_before_action :verify_authenticity_token

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end
  
  def create
    @photo = current_user.photos.create(photo_params)
    valid = @photo.valid?
    if valid
    redirect_to photos_path
    else
    render :new, status: :unprocessable_entity
    end
  end

  def show
    @photo = Photo.find(params[:id])
    return render_not_found if @photo.blank?
  end

end


  private



  def photo_params
    params.require(:photo).permit(:caption, :description, :address, :date_taken, :image)
  end

