class Wine < ActiveRecord::Base
  belongs_to :producer
  has_many :bottlings
  
  BACK_VINTAGES = 10
  
  validates :name, :vintage, :producer, :presence => true

  def display_vintage
    vintage === 0 ? 'N.V.' : vintage.to_s
  end

  def full_name
    "#{display_vintage} #{self.producer.name} #{name}"
  end 
end
