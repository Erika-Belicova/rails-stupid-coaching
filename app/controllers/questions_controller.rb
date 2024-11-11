class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:answer]

    @input = 'No question asked' if @input == ''

    if @input == 'I am going to work'
      @message = 'Great!'
    elsif @input.include? '?'
      @message = 'Silly question, get dressed and go to work!'
    else
      @message = "I don't care, get dressed and go to work!"
      @message
    end
  end
end
