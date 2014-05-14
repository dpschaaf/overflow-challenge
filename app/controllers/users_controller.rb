class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params[:user][:username])
    @user.password = params[:user][:password]
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

end