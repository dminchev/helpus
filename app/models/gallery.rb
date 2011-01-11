class Gallery < ActiveRecord::Base
  acts_as_commentable
  
  belongs_to :magazine
  has_many :gallery_comments
  
  has_friendly_id :title, :use_slug => true
  
  # Paperclip
  has_attached_file :file, :url  => "/system/galleries/:id/:style.:extension", :styles => { 
    :thumb => "128x119",
    :medium => "669x465"
  }
  
  cattr_reader :per_page
  @@per_page = 1
  
  def self.search(page)
    paginate :per_page => 1, :page => page,
            :order => 'created_at DESC'
  end  
end
