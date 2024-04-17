class CreatePurchase < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :first
      t.string :last
      t.string :email
      t.integer :quantity
      t.decimal :total_price, precision: 10, scale: 2
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end
