class BooksController < ApplicationController
  def index
    @books = Book.all.page(params[:page]).per(10)
  end
  def show
    @book = Book.find(params[:id])
    @language = @book.language
    @publisher = @book.publisher
    @genre = @book.genre
    @authors = @book.authors
  end
end
