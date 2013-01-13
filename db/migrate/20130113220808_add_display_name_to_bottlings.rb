class AddDisplayNameToBottlings < ActiveRecord::Migration
  def change
    add_column :bottlings, :display_name, :string
  end
end
