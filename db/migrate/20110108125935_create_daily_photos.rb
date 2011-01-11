class CreateDailyPhotos < ActiveRecord::Migration
  def self.up
    create_table :daily_photos do |t|
      t.integer :daily_id
      t.string :name
      t.text :title

      t.timestamps
    end
  end

  def self.down
    drop_table :daily_photos
  end
end
