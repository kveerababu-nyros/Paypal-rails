class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :string
      t.string :unit_price
      t.string :decimal

      t.timestamps null: false
    end
  end
end
