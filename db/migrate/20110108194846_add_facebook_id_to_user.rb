class AddFacebookIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :facebook_id, :integer, :after => :role
  end

  def self.down
    remove_column :users, :facebook_id
  end
end
