class BooksController < ApplicationController

  def index
    @new = Book.new
    @lists = Book.all
    
  end
  
  def create
    @new = Book.new(book_params)
    if  @new.save
      flash[:create] = "successfully create"
      redirect_to book_path(@new.id)
    else
      @lists = Book.all
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
    @edit = Book.find(params[:id])
    if @edit.update(book_params)
      flash[:update] = "successfully update"
      redirect_to book_path(@edit.id)
    else
      render :edit
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:destroy] = "successfully destroy"
    redirect_to "/books"
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end