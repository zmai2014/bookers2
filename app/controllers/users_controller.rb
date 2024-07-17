class UsersController < ApplicationController
  def show
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def index
    @user = User.all
    @books = User.books
    @book = Book.new
  end
end
