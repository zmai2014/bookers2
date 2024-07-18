class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def index
    @user = current_user
    @book = Book.new
  end
  
  def new
  end
  
  def create
  end
  
  def destroy
  end
end
