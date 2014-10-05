class AddAttachmentPictureToSurveys < ActiveRecord::Migration
  def self.up
    change_table :surveys do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :surveys, :picture
  end
end
