class QuestionsController < ApplicationController
    def index 
        questions = Question.all 

        answers = 

        render json: questions.to_json(only: [:text, :id, :category, :required_yes_id], include: [:answers ])


    end 
end
