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
    @book = Book.find(params[:book_id])
end
  
  
  def update
  book = book.find(params[:id])
  book.update(book_params)
  redirect_to books_path(book.id)
  
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end