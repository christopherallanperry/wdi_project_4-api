class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :update, :destroy]

  def index
    @surveys = Survey.all

    render json: @surveys
  end

  def show
    render json: @survey
  end

  def create
    @survey = current_user.surveys.new(survey_params)

    if @survey.save
      render json: @survey, status: :created, location: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  def update
    if @survey.update(survey_params)
      render json: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @survey.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:user_id, :title, :code, :started, :finished)
    end
end
