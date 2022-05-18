class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 3, maximum: 64 }
  validates :email, presence: true, length: { minimum: 5, maximum: 500 } 
  validates :password, presence: true, length: { minimum: 8, maximum: 64 }
  
  after_validation :hash_password
  
  private
  def hash_password
    self.password = BCrypt::Password.create(self.password)
  end

  validates_uniqueness_of :username
  validates_uniqueness_of :email

  has_many :sessions
  has_many :tweets
end
