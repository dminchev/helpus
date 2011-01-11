class AddAttachmentCoverToMagazine < ActiveRecord::Migration
  def self.up
    add_column :magazines, :cover_file_name, :string
    add_column :magazines, :cover_content_type, :string
    add_column :magazines, :cover_file_size, :integer
    add_column :magazines, :cover_updated_at, :datetime
  end

  def self.down
    remove_column :magazines, :cover_file_name
    remove_column :magazines, :cover_content_type
    remove_column :magazines, :cover_file_size
    remove_column :magazines, :cover_updated_at
  end
end
