class InventoryWithdrawalItem < ActiveRecord::Base
  belongs_to :inventory_withdrawal
  
  validates :bottling_id, :quantity, :presence =>  { :message => " must be specified."}

  def bottling
    Bottling.find(bottling_id)
  end
end
