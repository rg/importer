class AddSkuToBottling < ActiveRecord::Migration
  def change
    add_column :bottlings, :sku, :string
  end
end
