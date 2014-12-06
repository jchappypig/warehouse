class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :product, index: true
      t.float :price
      t.string :buyer
      t.string :address
      t.integer :amount
      t.string :phone
      t.string :status
      t.text :note
    end
  end
end
