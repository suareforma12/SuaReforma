class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_hash, :password_salt, :provider_id

  validates_presence_of :email

  belongs_to :provider
end
