class Category < ActiveRecord::Base

  has_many   :investments
  belongs_to :sector

  validates :name, uniqueness: true
end
