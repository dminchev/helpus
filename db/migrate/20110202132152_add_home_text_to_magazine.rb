class AddHomeTextToMagazine < ActiveRecord::Migration
  def self.up
    add_column :magazines, :home_text, :text
  end

  def self.down
    remove_column :magazines, :home_text
  end
end
