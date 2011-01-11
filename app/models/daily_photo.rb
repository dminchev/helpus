class DailyPhoto < ActiveRecord::Base
  belongs_to :daily
  
  # Paperclip
  has_attached_file :file, :url  => "/system/daily_photos/:id/:style.:extension", :styles => { 
    :thumb => "128x119",
    :medium => "669x465"
  }
end
