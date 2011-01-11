class Admin::AccentPhotosController < Admin::AdminController
  def index
    @magazine = Magazine.find(params[:magazine_id])
    @accent = Accent.find(params[:accent_id])
    @photos = @accent.accent_photos
  end
  
  def new
    @magazine = Magazine.find(params[:magazine_id])
    @accent = Accent.find(params[:accent_id])
    @photo = AccentPhoto.new
  end
  
  def edit
    @magazine = Magazine.find(params[:magazine_id])
    @accent = Accent.find(params[:accent_id])
    @photo = AccentPhoto.find(params[:id])
  end
  
  def create
    @magazine = Magazine.find(params[:magazine_id])
    @accent = Accent.find(params[:accent_id])
    @accent.accent_photos.create(params[:accent_photo])    
    redirect_to(admin_magazine_accent_accent_photos_url)
  end
  
  def update
    @photo = AccentPhoto.find(params[:id])
    @photo.update_attributes(params[:accent_photo])
    @photo.save
    redirect_to(admin_magazine_accent_accent_photos_url)
  end
end
