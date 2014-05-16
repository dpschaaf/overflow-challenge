class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render partial: 'questions', locals: {questions: @questions}
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    render partial: 'new', locals: {question: @question}
  end

  def create
    p params
    @question = current_user.questions.new params[:question]
    if @question.save
      p 'saved'
      render partial: 'show', locals: {question: @question}
    else
      render :new
    end
  end

  def edit
    @question = Question.find params[:id]
    render partial: 'edit', locals: {question: @question}
  end

  def update
    @question = Question.find params[:id]
    if @question.update_attributes params[:question]
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    Question.find(params[:id]).destroy
    @questions = Question.all
    render partial: 'questions', locals: {questions: @questions}
  end

end