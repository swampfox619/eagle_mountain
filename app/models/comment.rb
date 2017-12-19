class Comment < ActiveRecord::Base
  belongs_to :post
    
  validates :name, :body, presence: true
  validates :name, length: { maximum: 15 }
end
