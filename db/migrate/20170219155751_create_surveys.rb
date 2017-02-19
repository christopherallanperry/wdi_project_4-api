class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :title
      t.string :code
      t.references :user, foreign_key: true
      t.date :started
      t.date :finished

      t.timestamps
    end
  end
end
