class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
def index
  @book = Book.all
end

def show
  
end

def new
  @book = Book.new
end

def edit
  
end

def create
  @book = Book.new(book_params)

  @book.save
  redirect_to @book
end

def update
  

  if @book.update(book_params)
    redirect_to @book
  else
    render 'edit'
  end
end

def destroy
  
  @book.destroy
 
  redirect_to @book
end

  private 
  def book_params
    params.require(:book).permit(:title, :author, :description, :url)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end

