class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.integer :magazine_id
      t.string :name
      t.text :title

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
