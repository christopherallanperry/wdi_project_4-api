class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question_type, :null => false
      t.text :question_text, :limit => 600, :null => false
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
