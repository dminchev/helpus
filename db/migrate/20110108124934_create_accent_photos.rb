class CreateAccentPhotos < ActiveRecord::Migration
  def self.up
    create_table :accent_photos do |t|
      t.integer :accent_id
      t.string :name
      t.text :title

      t.timestamps
    end
  end

  def self.down
    drop_table :accent_photos
  end
end
