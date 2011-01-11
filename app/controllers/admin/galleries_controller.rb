class Admin::GalleriesController < Admin::AdminController
  def index
    @magazine = Magazine.find(params[:magazine_id])
    @galleries = Gallery.all
  end
  
  def new
    @magazine = Magazine.find(params[:magazine_id])
    @gallery = Gallery.new
  end
  
  def edit
    @magazine = Magazine.find(params[:magazine_id])
    @gallery = Gallery.find(params[:id])
  end
  
  def create    
    @magazine = Magazine.find(params[:magazine_id])
    @magazine.galleries.create(params[:gallery])    
    redirect_to(admin_magazine_galleries_url)
  end
  
  def update
    @gallery = Gallery.find(params[:id])
    @gallery.update_attributes(params[:gallery])
    @gallery.save
    redirect_to(admin_magazine_galleries_url)
  end
end
