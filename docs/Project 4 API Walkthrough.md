# Project 4 Walkthrough
----
#### Created: 18 February 2017 13:46
#### Last Updated: 20 February 2017 10:15

----

1. Add `firstname` and `last_name` to `user` model

	```bash
	rails g migration AddFirst_nameAndLast_nameToUsers first_name:string 	last_name:string
	```

2. Migrate to schema

	```bash
	rails db:migrate
	```

3. Updated authentications_controller.rb to include both first_name & last_name in the strong params
4. Successfully tested that additional fields can be populated, and are present in the database using Insomnia and Rails console
5. Add new model for Surveys

	```Bash
	rails g model Survey title:string code:string user:references started:date finished:date
	```
6. Migrate to schema

	```bash
	rails db:drop db:create db:migrate
	```

7. Create controller for Surveys

	```bash
	rails g controller surveys index show create update destroy
	```

8. Added content to surveys_controller.rb

	```ruby
	class SurveysController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_survey, only: [:show, :update, :destroy]

  def index
    @surveys = Survey.all

    render json: @surveys
  end

  def show
    render json: @survey
  end

  def create
    @survey = Survey.new(survey_params)

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
	```

9. Added content to survey_serializer.rb

	```ruby
	class SurveySerializer < ActiveModel::Serializer
	  attributes :id, :title, :code, :user_id, :started, :finished
	  has_one :user
	
	  def length
	    object.body.length
	  end
	
	  def url
	    Rails.application.routes.url_helpers.post_url object, only_path: true
	  end
	end
	```

10. Created seeds.db with content for users and surveys
11. Scaffold out new model for Questions

	```bash
	rails g scaffold Question question_type:string question_text:text survey:references
	```

12. Migrate to schema
 
	```bash
	rails db:migrate
	```
	
13. Added `has_many :questions` relationship to survey model 
14. Scaffold out new model for Answers

	```bash
	rails g scaffold Answer response:text question:references
	```

15. Migrate to schema
 
	```bash
	rails db:migrate
	```

16. Added `has_many answers` relationship to question model
17. Expanded seeds data file to include sample responses
18. Scaffold out new model for Completions

	```bash
	rails g scaffold Completion user:references survey:references question:references survey_completed:boolean question_answered:boolean
	```

19. Added `has_many :completions` relationships to user, survey and question models
20. 20. Updated seeds file with completion data.




	