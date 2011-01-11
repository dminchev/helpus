class Admin::AccentsController < Admin::AdminController
  def index
    @magazine = Magazine.find(params[:magazine_id])
    @accents = @magazine.accents
  end
  
  def new
    @magazine = Magazine.find(params[:magazine_id])
    @accent = Accent.new
  end
  
  def edit
    @magazine = Magazine.find(params[:magazine_id])
    @accent = Accent.find(params[:id])
  end
  
  def create
    @magazine = Magazine.find(params[:magazine_id])
    @magazine.accents.create(params[:accent])    
    redirect_to(admin_magazine_accents_url)
  end
  
  def update
    @accent = Accent.find(params[:id])
    @accent.update_attributes(params[:accent])
    @accent.save
    redirect_to(admin_magazine_accents_url)
  end
  
end
