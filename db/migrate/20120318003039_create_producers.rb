class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.text :notes

      t.timestamps
    end
  end
end
