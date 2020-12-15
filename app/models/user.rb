class User < ApplicationRecord
    has_many :user_answers
    has_many :question_answers, through: :user_answers
end
