class AddAttachmentImageTitleToAccent < ActiveRecord::Migration
  def self.up
    add_column :accents, :image_title_file_name, :string
    add_column :accents, :image_title_content_type, :string
    add_column :accents, :image_title_file_size, :integer
    add_column :accents, :image_title_updated_at, :datetime
  end

  def self.down
    remove_column :accents, :image_title_file_name
    remove_column :accents, :image_title_content_type
    remove_column :accents, :image_title_file_size
    remove_column :accents, :image_title_updated_at
  end
end
