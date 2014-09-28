class User < ActiveRecord::Base

  has_many :investments

  validates :username, uniqueness: true
end
