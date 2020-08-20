require 'httparty'
require 'pp'
require 'json'

class QuizzesController < ApplicationController

    def generate_categories
        render json: Quiz.get_categories
    end

    def create #this will receive a Category and Difficulty
        quiz = Quiz.create(quiz_params) #creates quiz with category and difficulty assigned.
        quiz.update(category_id: Quiz.get_category_id(quiz.category)) #quiz now has category, difficulty, category_id

        #retrieves quiz questions from Trivia API
        quiz_questions_json = Quiz.retrieve_quiz(quiz.category_id,quiz.difficulty,quiz.num_questions)

        render json: {quiz.id => quiz_questions_json} 
    end

    def save_score 
        quiz = Quiz.find_by(id: params[:id])
        quiz.update(quiz_score_params)
        render :json => quiz
    end

    private

    def quiz_params
        params.require(:quiz).permit(:category,:difficulty,:num_questions)
    end

    def quiz_score_params
        params.require(:quiz).permit(:score)
    end
end
