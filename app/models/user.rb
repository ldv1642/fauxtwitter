class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
  format: { with: VALID_EMAIL_REGEX }, 
  uniqueness: { case_sensitive: false }

  #sorts out case sensitive issues with some db adapters when creating indicies
  before_save do |user|
  	user.email = email.downcase
  end

end
 