class AddSurveyIdToGuess < ActiveRecord::Migration
  def change
    add_column :guesses, :survey_id, :integer
  end
end
