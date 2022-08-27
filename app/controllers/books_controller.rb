class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end
  
def create
  @book = Book.new(book_params)
  @book.save
  redirect_to books_path
end

def show
    @book = Book.find_by(params[:id])
end
  
  
  def update
  @book = book.find(params[:id])
  @book = @book.update(post_params)
  redirect_to books_path
  
  end
  
  def edit
    @book = Book.find_by(params[:id])
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end