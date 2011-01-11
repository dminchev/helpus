class CreateDailies < ActiveRecord::Migration
  def self.up
    create_table :dailies do |t|
      t.integer :magazine_id
      t.string :name
      t.text :title
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :dailies
  end
end
