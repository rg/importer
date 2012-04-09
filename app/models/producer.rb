class Producer < ActiveRecord::Base
  has_many :wines
  
  validates :name, :email, :presence => true
end
