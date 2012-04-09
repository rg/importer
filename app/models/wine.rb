class Wine < ActiveRecord::Base
  belongs_to :producer
  has_many :bottlings
  
  BACK_VINTAGES = 10
  
  validates :name, :vintage, :producer, :presence => true

  def display_vintage
    vintage === 0 ? 'N.V.' : vintage.to_s
  end

  def full_name
    "#{vintage.to_s} #{self.producer.name} #{name}"
  end

  def quantity_on_hand
    5
    # InventoryTransfer.where(:wine_id => self.id).sum("quantity") 
    # - LineItem.where(:wine_id => self.id, self.order => "closed").sum("quantity")
  end
  
  def quantity_reserved
    2   # LineItem.where(self.order => "open").sum("quantity")
  end
  
  def quantity_available
    self.quantity_on_hand.to_i - self.quantity_reserved.to_i
  end  
end
