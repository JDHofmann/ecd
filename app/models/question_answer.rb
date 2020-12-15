class QuestionAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :answer
  has_many :user_answers
  has_many :users, through: :user_answers
end
