class BooksController < ApplicationController

  def index
    @new = Book.new
    @lists = Book.all
  end
  
  def create
    @new = Book.new(book_params)
    if  @new.save
      redirect_to book_path(@new.id)
    else
      @lists = book.all
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @edit = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to "/books"
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end