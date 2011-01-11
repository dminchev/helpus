class CreateAccents < ActiveRecord::Migration
  def self.up
    create_table :accents do |t|
      t.integer :magazine_id
      t.string :name
      t.string :view_type
      t.text :title
      t.text :text
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :accents
  end
end
