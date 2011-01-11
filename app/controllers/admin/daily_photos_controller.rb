class Admin::DailyPhotosController < Admin::AdminController
  def index
    @magazine = Magazine.find(params[:magazine_id])
    @daily = Daily.find(params[:daily_id])
    @photos = @daily.daily_photos
  end
  
  def new
    @magazine = Magazine.find(params[:magazine_id])
    @daily = Daily.find(params[:daily_id])
    @photo = DailyPhoto.new
  end
  
  def edit
    @magazine = Magazine.find(params[:magazine_id])
    @daily = Daily.find(params[:daily_id])
    @photo = DailyPhoto.find(params[:id])
  end
  
  def create
    @magazine = Magazine.find(params[:magazine_id])
    @daily = Daily.find(params[:daily_id])
    @daily.daily_photos.create(params[:daily_photo])    
    redirect_to(admin_magazine_daily_daily_photos_url)
  end
  
  def update
    @photo = DailyPhoto.find(params[:id])
    @photo.update_attributes(params[:daily_photo])
    @photo.save
    redirect_to(admin_magazine_daily_daily_photos_url)
  end
end