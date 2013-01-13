class Bottling < ActiveRecord::Base
  belongs_to :wine
  has_many :inventory_withdrawal_items
  
  SIZES = %w(375ml 500ml 750ml 1500ml 3000ml)
  
  validates :wine, :presence => true
  validates :bottle_size, :presence => true
  validates :sku, :uniqueness => true
  
  after_create :set_display_name
  after_update :set_display_name, :if => lambda { bottle_size_changed? }

  def set_display_name
    update_column :display_name, full_name
  end

  def full_name
    "#{wine.display_vintage} #{wine.producer.name} #{wine.name} | #{bottle_size}"
  end 
  
  def quantity_on_hand
    100 - InventoryWithdrawalItem.sum(:quantity, :conditions => { :bottling_id => self.id })
    # - LineItem.where(:wine_id => self.id, self.order => "closed").sum("quantity")
  end
  
  def quantity_reserved
    5   # LineItem.where(self.order => "open").sum("quantity")
  end
  
  def quantity_available
    self.quantity_on_hand.to_i - self.quantity_reserved.to_i
  end   
end
