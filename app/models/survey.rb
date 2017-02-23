class Survey < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :answers, through: :questions

  def summary
    questions.map do |question|
      {
        question: question,
        summary: question_summary(question)
      }
    end
  end

  def question_summary(question)
    case question.question_type
    when 'integer'
      integer_answers = question.answers.map(&:response).map.with_object(Hash.new(0)) do |e, h|
        h[e] += 1
      end
      {
        labels: ['Strongly Disagree', 'Somewhat Disagree', 'Neither Agree or Disagree', 'Somewhat Agree', 'Strongly Agree', 'N/A'],
        data: [
          integer_answers.fetch('1', 0),
          integer_answers.fetch('2', 0),
          integer_answers.fetch('3', 0),
          integer_answers.fetch('4', 0),
          integer_answers.fetch('5', 0),
          integer_answers.fetch('6', 0)
        ]
      }
    when 'boolean'
      boolean_answers = question.answers.map(&:response).each_with_object(Hash.new(0)) do |e, h|
        h[e] += 1
      end
      {
        labels: ['False', 'True'],
        data: [
          boolean_answers.fetch('false', 0),
          boolean_answers.fetch('true', 0)
        ]
      }
    when 'text'
      question.answers.map(&:response)
    end
  end
end
