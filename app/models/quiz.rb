require 'httparty'
require 'json'

class Quiz < ApplicationRecord

    def self.get_categories
        response = HTTParty.get("https://opentdb.com/api_category.php")
        category_list = JSON.parse(response.body)
        return category_list
    end

    def self.get_category_id(category_name)
        category_list = Quiz.get_categories
        category = category_list["trivia_categories"].find do |cat|
            cat["name"] == "#{category_name}"
        end 
        category_id = category["id"]
        return category_id
    end


    def self.retrieve_quiz(category_id,difficulty,num_questions)
        response = HTTParty.get("https://opentdb.com/api.php?amount=#{num_questions.to_s}&category=#{category_id.to_s}&difficulty=#{difficulty}&type=multiple")        
        questions_json = JSON.parse(response.body)["results"]
        return questions_json
    end
end