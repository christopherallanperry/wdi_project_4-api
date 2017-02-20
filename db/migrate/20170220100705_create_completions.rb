class CreateCompletions < ActiveRecord::Migration[5.0]
  def change
    create_table :completions do |t|
      t.references :user, foreign_key: true
      t.references :survey, foreign_key: true
      t.references :question, foreign_key: true
      t.boolean :survey_completed
      t.boolean :question_answered

      t.timestamps
    end
  end
end
