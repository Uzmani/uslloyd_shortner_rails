class UsersController < ApplicationController
  helper UsersHelper
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/users/:user_id/urls/new"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
end