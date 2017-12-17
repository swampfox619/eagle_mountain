class Post < ActiveRecord::Base
    extend FriendlyId
    
    validates :title, :body, :meta_title, :meta_description, :permalink, presence: true
    validates :title, :body, :meta_title, :meta_description, :permalink, uniqueness: true
    validates :meta_title, length: { maximum: 60 }
    validates :meta_description, length: { maximum: 160 }
    
    friendly_id :permalink, use: [:slugged, :history, :finders]
    
	def should_generate_new_friendly_id?
	  permalink_changed?
	end
end
