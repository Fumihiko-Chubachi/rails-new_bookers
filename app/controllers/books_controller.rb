class BooksController < ApplicationController

  def index
    @new = Book.new
    @lists = Book.all
  end
  
  def create
    @new = Book.new(book_params)
    if  @new.save
      render :show
    else
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end