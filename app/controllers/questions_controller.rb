class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render partial: 'questions', locals: {questions: @questions}
  end

  def show
    @question = Question.find params[:id]
    @answer = Answer.new
    render partial: 'show', locals: {question: @question, answer: @answer, user: current_user}
  end

  def new
    @question = Question.new
    render partial: 'new', locals: {question: @question}
  end

  def create
    @question = current_user.questions.new params[:question]
    if @question.save
      'created'
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