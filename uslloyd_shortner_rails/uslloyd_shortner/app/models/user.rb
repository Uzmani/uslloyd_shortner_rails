class User < ActiveRecord::Base
  attr_accessible :name, :email, :password_hash
  has_many :urls


end