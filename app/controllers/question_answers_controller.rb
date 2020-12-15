class QuestionAnswersController < ApplicationController
    belongs_to :question
    belongs_to :answer
end
