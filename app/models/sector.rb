class Sector < ActiveRecord::Base

  has_many :categories

  validates :name, uniqueness: true
end
