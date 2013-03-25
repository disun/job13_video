class AddAttachmentViToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :vi
    end
  end

  def self.down
    drop_attached_file :videos, :vi
  end
end
