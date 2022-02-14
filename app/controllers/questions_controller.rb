class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(string)
    if string.end_with?("?")
      return "Silly question, get dressed and go to work!"
    elsif string === "I am going to work"
       return "Great!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
