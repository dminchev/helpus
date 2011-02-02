class Magazine < ActiveRecord::Base
  has_many :accents
  has_many :dailies
  has_many :galleries

  # Paperclip
  has_attached_file :cover, :url  => "/system/magazines/:id/cover/:style.:extension", :styles => {
    :thumb => "150x150",
    :medium => "1014x1201"
  }

  has_attached_file :month, :url  => "/system/magazines/:id/month/:style.:extension", :styles => {
    :thumb => "150x150",
    :medium => "166x36"
  }

end
