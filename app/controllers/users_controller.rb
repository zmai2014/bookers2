class UsersController < ApplicationController
  def show
    @user = User.all
    @books = @user.books
    @book = Book.new
  end

  def edit
  end
end
