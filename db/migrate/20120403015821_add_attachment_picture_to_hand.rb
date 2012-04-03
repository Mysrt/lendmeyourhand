class AddAttachmentPictureToHand < ActiveRecord::Migration
  def self.up
    add_column :hands, :picture_file_name, :string
    add_column :hands, :picture_content_type, :string
    add_column :hands, :picture_file_size, :integer
    add_column :hands, :picture_updated_at, :datetime
  end

  def self.down
    remove_column :hands, :picture_file_name
    remove_column :hands, :picture_content_type
    remove_column :hands, :picture_file_size
    remove_column :hands, :picture_updated_at
  end
end
