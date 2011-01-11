class Daily < ActiveRecord::Base
  acts_as_commentable
  
  belongs_to :magazine
  has_many :daily_photos
  
  has_friendly_id :title, :use_slug => true
  
  cattr_reader :per_page
  @@per_page = 1
  
  def self.search(page, per_page = 1)
    paginate :per_page => per_page, :page => page,
            :order => 'created_at ASC'
  end
end
