class AddAttachmentImageHoverToAccent < ActiveRecord::Migration
  def self.up
    add_column :accents, :image_hover_file_name, :string
    add_column :accents, :image_hover_content_type, :string
    add_column :accents, :image_hover_file_size, :integer
    add_column :accents, :image_hover_updated_at, :datetime
  end

  def self.down
    remove_column :accents, :image_hover_file_name
    remove_column :accents, :image_hover_content_type
    remove_column :accents, :image_hover_file_size
    remove_column :accents, :image_hover_updated_at
  end
end
