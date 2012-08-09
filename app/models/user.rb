class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_hash, :password_salt, :provider_id

  validates_presence_of :email

  belongs_to :provider

  def password=(password)
    encryption = PasswordEncryptor.encrypt(password)

    self.password_salt = encryption[:salt]
    self.password_hash = encryption[:hash]

    @password = password
  end
  
end
