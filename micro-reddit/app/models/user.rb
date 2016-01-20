class User < ActiveRecord::Base
    has_many :posts
    has_many :comments
    
    validates :username, presence: true,
                         length: { minimum: 4, maximum: 12 },
                         uniqueness: { case_sensitive: false }
    validates :email, presence: true,
                         length: { maximum: 255 },
                         uniqueness: { case_sensitive: false }
    validates :password, presence: true,
                         length: { minimum: 6, maximum: 16 }
end
