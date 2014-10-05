class RemoveImageFromSurvey < ActiveRecord::Migration
  def change
    remove_column :surveys, :image
  end
end
