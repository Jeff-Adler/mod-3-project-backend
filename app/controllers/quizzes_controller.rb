require 'httparty'
require 'pp'
require 'json'

class QuizzesController < ApplicationController

    def generate_categories
        render json: Quiz.get_categories
    end

    def create #this will receive a Category and Difficulty
        quiz = Quiz.create(quiz_params) #creates quiz with category and difficulty assigned.
        quiz.category_id = Quiz.get_category_id(quiz.category) #quiz now has category, difficulty, category_id

        #retrieves quiz questions from Trivia API
        quiz_questions_json = Quiz.retrieve_quiz(quiz.category_id,quiz.difficulty)

        render json: {quiz.id => quiz_questions_json} 
    end

    def save_score 
    end

    private

    def quiz_params
        params.require(:quiz).permit(:category,:difficulty)
    end
end
