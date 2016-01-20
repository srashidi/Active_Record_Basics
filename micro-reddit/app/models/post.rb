class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  validates :url, presence: true
  validates :user_id, presence: true
end
