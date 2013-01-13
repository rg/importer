class InventoryWithdrawalItem < ActiveRecord::Base
  belongs_to :inventory_withdrawal
  belongs_to :bottling

  attr_accessor :dummy_field
  
  validates :bottling, :presence => true
  validates :quantity, :presence =>  { :message => " must be specified." }
end
