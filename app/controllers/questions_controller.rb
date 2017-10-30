class QuestionsController < ApplicationController

  def answer
    @answers = []
    @message = params[:query]
    @answer = coach_answer(@message)
    @answers << { message: @message, answer: @answer }
  end

  def ask
  end

  private

  def coach_answer(message)
    if message.downcase == "i am going to work right now!"
      ""
    elsif message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(message)
    answer = coach_answer(message)
    if answer != ""
      if message.upcase == message
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ""
    end
  end
end
