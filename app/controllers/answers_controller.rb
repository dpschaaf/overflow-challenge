class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    p params
    @answer = Anser.create
  end


end