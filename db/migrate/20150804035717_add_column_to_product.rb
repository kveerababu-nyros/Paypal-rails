class AddColumnToProduct < ActiveRecord::Migration
  def self.up
  	add_column :products, :quntity, :integer
  	add_column :products, :total, :integer
  end

   def self.down
  	remove_column :products, :quntity, :integer
  	remove_column :products, :total, :integer
  end

end
