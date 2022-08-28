class ListsController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
  end
  

  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(params[:id])
  end

  def edit
    @book = Book.find_by(params[:id])
  end



  def destroy
    book = Book.find_by(params[:id])
    book.destroy
    redirect_to '/books'


  end

  private
  def book_params
    params.require(:book).parmit(:title, :body)
  end
  end