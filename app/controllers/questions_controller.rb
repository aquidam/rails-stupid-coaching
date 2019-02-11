class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ask_coach
  end

  private

  def ask_coach
    if @question.nil?
      'What was that?'
    elsif @question == 'I am going to work right now!'
      'Great!'
    elsif @question.end_with? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
