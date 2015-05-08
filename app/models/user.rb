class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  attr_accessor :password
  before_save :encrypt_password

  def self.authenticate(email,password)
    user = find_by_email(email)
  end


end
