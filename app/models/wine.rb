class Wine < ActiveRecord::Base
  belongs_to :producer
  
  BACK_VINTAGES = 10
  
  validates :name,        :presence => true
  validates :vintage,     :presence => true,
                          :numericality => { :only_integer => true }, :if => "vintage != 'N.V.'"
  validates :producer,    :presence => true

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
