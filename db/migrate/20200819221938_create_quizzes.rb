class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :nickname
      t.string :category
      t.integer :category_id
      t.string :difficulty
      t.integer :score

      t.timestamps
    end
  end
end
