class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :image_url
      t.string :creator_answer
      t.string :choices

      t.timestamps
    end
  end
end
