class RenameImageUrl < ActiveRecord::Migration
  def change
    rename_column :surveys, :image_url, :image
  end
end
