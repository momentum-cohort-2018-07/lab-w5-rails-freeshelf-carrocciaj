class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @books = Book.new
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
