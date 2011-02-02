class AddOrderToDailies < ActiveRecord::Migration
  def self.up
    add_column :dailies, :order, :int
  end

  def self.down
    remove_column :dailies, :order
  end
end
