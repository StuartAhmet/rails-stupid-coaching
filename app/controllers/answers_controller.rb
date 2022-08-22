class AnswersController < ApplicationController
  def answer
    coach_question = params[:question].downcase
    if coach_question == 'i am going to work'
      @answer = 'Great'
    elsif coach_question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
