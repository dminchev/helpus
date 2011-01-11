class AddAcceptTermsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :accept_terms, :bool
  end

  def self.down
    remove_column :users, :accept_terms
  end
end
