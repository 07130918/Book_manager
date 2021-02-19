class LikesController < ApplicationController
  before_action :set_like_or_unlike

  def create
    like = current_user.likes.new(book_id: @book.id)
    like.save
  end

  def destroy
    like = current_user.likes.find_by(book_id: @book.id)
    like.destroy
  end

  private

  def set_like_or_unlike
    @book = Book.find(params[:book_id])
  end
end
