class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase do |t|
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
