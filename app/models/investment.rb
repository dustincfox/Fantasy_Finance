class Investment < ActiveRecord::Base

  belongs_to :user
  belongs_to :portfolio
  belongs_to :category

  
  
end
