class Admin::MagazinesController < Admin::AdminController
  def index
    @magazines = Magazine.all
  end
  
  def new
    @magazine = Magazine.new
  end
  
  def edit 
    @magazine = Magazine.find(params[:id])
  end
  
  def create
    @magazine = Magazine.new(params[:magazine])
    @magazine.save    
    redirect_to(admin_magazines_url)
  end
  
  def update
    @magazine = Magazine.find(params[:id])
    @magazine.update_attributes(params[:magazine])
    @magazine.save
    redirect_to(admin_magazines_url)
  end
end
