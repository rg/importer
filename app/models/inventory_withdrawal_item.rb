class InventoryWithdrawalItem < ActiveRecord::Base
  belongs_to :inventory_withdrawal
  
  validates :bottling, :quantity, :presence => true
  validates :quantity, :numericality => true

  def bottling
    Bottling.find(bottling_id)
  end
end
