class SurveysController < ApplicationController
  before_action :authenticate_user!

  def create
    @survey = current_user.surveys.create survey_params
  end

  def index
    @surveys = current_user.surveys.all
    respond_to do |format|
      format.json {render file: "surveys/index.json.jbuilder"}
      format.html { render :index }
    end
  end

  def show
    @survey = Survey.find params[:id]
    respond_to do |format|
      format.json {render file: "surveys/show.json.jbuilder"}
      format.html { render :show }
    end
  end

  private
    def survey_params
      require(:survey).permit(:image_url, :creator_answer, :choices)
    end
end
