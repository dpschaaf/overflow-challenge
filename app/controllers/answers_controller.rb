class AnswersController < ApplicationController

  def new
    @answerable = Answer.new
  end

  def create
    p params
    @answer = Answer.create params[:answer]
  end


end