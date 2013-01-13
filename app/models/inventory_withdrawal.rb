class InventoryWithdrawal < ActiveRecord::Base
  has_many :inventory_withdrawal_items, :dependent => :destroy
  accepts_nested_attributes_for :inventory_withdrawal_items, :allow_destroy => true
  # validates_associated :inventory_withdrawal_items
  
  validates :date, :category, :presence => { :message => " must be specified."}

  validate do |inventory_withdrawal|
    inventory_withdrawal.errors[:base] << "You must add at least one item." if inventory_withdrawal.inventory_withdrawal_items.empty?
  end  

  TYPES = %w(tasting corked broken personal)
end
