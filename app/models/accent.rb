class Accent < ActiveRecord::Base
  acts_as_commentable
  
  belongs_to :magazine
  has_many :accent_photos
  
  has_friendly_id :title, :use_slug => true
  
  # Paperclip
  has_attached_file :image, :url  => "/system/accents/:id/image/:style.:extension", :styles => { 
    :thumb => "300x300",
    :medium => "100x100"
  } 
  
  has_attached_file :image_hover, :url  => "/system/accents/:id/image_hover/:style.:extension", :styles => { 
    :thumb => "300x300",
    :medium => "100x100"
  }
  
  has_attached_file :image_title, :url  => "/system/accents/:id/image_title/:style.:extension", :styles => { 
    :medium => "451x50"
  }
end
