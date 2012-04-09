class Bottling < ActiveRecord::Base
  belongs_to :wine
  
  SIZES = %w(375ml 500ml 750ml 1500ml 3000ml)
  
  validates :wine, :bottle_size, :presence => true
  
  def full_name
    "#{wine.display_vintage} #{wine.producer.name} #{wine.name} | #{bottle_size}"
  end  
end
