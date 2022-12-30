class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @user_books = @user.books
    # render :"books/index"
  end

  def edit
  end
end
