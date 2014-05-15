class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    render partial: 'shared/question_form', locals: {question: @question}
  end

  def create
    @question = current_user.questions.new params[:question]
    if @question.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def edit
    @question = Question.find params[:id]
    render partial: 'shared/question_form', locals: {question: @question}
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
    redirect_to questions_path
  end

end