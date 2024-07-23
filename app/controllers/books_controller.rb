class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
    @user = current_user  
  end

  def show
    @user = current_user
    @books = @user.books
  end
  
  def edit
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def destroy
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end