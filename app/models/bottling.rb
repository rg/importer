class Bottling < ActiveRecord::Base
  belongs_to :wine
  SIZES = %w(375ml 500ml 750ml 1500ml 3000ml)
  
  def full_name
    "#{wine.vintage.to_s} #{wine.producer.name} #{wine.name}  => #{bottle_size}"
  end  
end
