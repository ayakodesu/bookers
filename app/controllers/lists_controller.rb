class ListsController < ApplicationController
  def new
    @book = Book.new
  end

  def create
  end

  def index
  end

  def show
    @book = Book.find_by(params[:id])
  end


  def edit
    @book = Book.find_by(params[:id])
  end
end
