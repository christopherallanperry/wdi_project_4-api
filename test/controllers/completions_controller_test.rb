require 'test_helper'

class CompletionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @completion = completions(:one)
  end

  test "should get index" do
    get completions_url, as: :json
    assert_response :success
  end

  test "should create completion" do
    assert_difference('Completion.count') do
      post completions_url, params: { completion: { question_answered: @completion.question_answered, question_id: @completion.question_id, survey_completed: @completion.survey_completed, survey_id: @completion.survey_id, user_id: @completion.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show completion" do
    get completion_url(@completion), as: :json
    assert_response :success
  end

  test "should update completion" do
    patch completion_url(@completion), params: { completion: { question_answered: @completion.question_answered, question_id: @completion.question_id, survey_completed: @completion.survey_completed, survey_id: @completion.survey_id, user_id: @completion.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy completion" do
    assert_difference('Completion.count', -1) do
      delete completion_url(@completion), as: :json
    end

    assert_response 204
  end
end
