class Wine < ActiveRecord::Base
  belongs_to :producer
  has_many :bottlings
  
  BACK_VINTAGES = 10
  
  validates :name, :vintage, :producer, :presence => true

  after_update :update_bottling_display_names, :if => lambda { name_changed? || vintage_changed? }

  def update_bottling_display_names
    bottlings.each do |bottling|
      bottling.set_display_name
    end
  end

  def display_vintage
    vintage === 0 ? 'N.V.' : vintage.to_s
  end

  def full_name
    "#{display_vintage} #{self.producer.name} #{name}"
  end 
end
