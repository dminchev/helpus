class AccentPhoto < ActiveRecord::Base
  acts_as_commentable
  
  belongs_to :accent
  
  has_friendly_id :title, :use_slug => true
  
  # Paperclip
  has_attached_file :file, :url  => "/system/accent_photos/:id/:style.:extension", :styles => { 
    :thumb => "128x119",
    :medium => "669x465"
  }
  
  cattr_reader :per_page
  @@per_page = 1
  
  def self.search(accent_id, page)
    paginate :per_page => 1, :page => page,
           :conditions => ['accent_id = ?', accent_id], :order => 'created_at DESC'
  end
end
