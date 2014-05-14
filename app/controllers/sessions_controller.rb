class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_username(params[:username]).try(:authenticate, params[:password])
    if @user
      session[:id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

end