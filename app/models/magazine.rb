class Magazine < ActiveRecord::Base
  has_many :accents
  has_many :dailies
  has_many :galleries
  
  # Paperclip
  has_attached_file :cover, :url  => "/system/magazines/:id/cover/:style.:extension", :styles => { 
    :thumb => "300x300",
    :medium => "100x100"
  } 
end
