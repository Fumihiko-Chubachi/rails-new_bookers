class BooksController < ApplicationController

  def index
    @new = Book.new
    @lists = Book.all
  end
  
  def create
    new = Book.new(book_params)
    new.save
    redirect_to '/index'
  end

  def show
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end