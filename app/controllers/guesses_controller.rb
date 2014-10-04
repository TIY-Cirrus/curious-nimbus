class GuessesController < ApplicationController
  before_action :authenticate_user!

  def create
    @survey = Survey.where params[:id]
    @answer = current_user.guesses.create guess_params
    @survey.guesses << @answer
  end

  def show
    @survey = Survey.guesses.where!(user_id: current_user).first
  end

  def guess_params
    require(:guess).permit(:answer)
  end
end

