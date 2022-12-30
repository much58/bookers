class BooksController < ApplicationController
  def index
    @book = Book.new #新規投稿用
    @books = Book.all
    @user = User.find(current_user.id)
  end
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
