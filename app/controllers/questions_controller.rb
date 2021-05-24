class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:question]

    if @ask == "I am going to work"
      @answer = "great"

    elsif @ask.include?("?")
      @answer = "Silly question, get dressed and go to work!"

    else
      @answer = "I don't care, get dressed and go to work!"

    end
  end

end

# {"question"=>"hello ", "controller"=>"questions", "action"=>"answer"}

# user input = question:

# if
# I am going to work
# return great
# if
# include?("?")
# return Silly question, get dressed and go to work!

# else
# return I don't care, get dressed and go to work!
