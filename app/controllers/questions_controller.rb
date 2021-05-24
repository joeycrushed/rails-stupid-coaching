class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask] # an ask variable that can be used on answer.html

    if @ask == 'I am going to work'
      @coaches_response = 'Great!'
    elsif @ask.include? '?'
      @coaches_response = 'Silly Question, get dressed and go to work'
    elsif @ask == ''
      @coaches_response = "I don't care, get dressed and go to work"
    else
      @coaches_response = 'Ask me a question'
    end
  end
end
