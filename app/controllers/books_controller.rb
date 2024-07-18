class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def show
  end
  
  def edit
  end
  
  def create
  end
  
  def destroy
  end
  
end
