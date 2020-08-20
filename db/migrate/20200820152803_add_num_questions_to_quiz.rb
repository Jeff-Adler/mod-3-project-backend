class AddNumQuestionsToQuiz < ActiveRecord::Migration[6.0]
  def change
    add_column :quizzes, :num_questions, :integer
  end
end
