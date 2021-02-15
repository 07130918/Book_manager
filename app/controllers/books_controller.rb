class BooksController < ApplicationController
  # ユーザーが読んだ本、読む本の新規作成、編集、更新、削除
  before_action :authenticate_user!
  before_action :set_target_book, only: %i[show edit update destroy]

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
    redirect_to :root and return
  end

  def show; end

  def edit; end

  def update
    @book.update(book_params)
    render :show
  end

  def destroy
    @book.destroy
    redirect_to :root and return
  end

  private

  def set_target_book
    @book = Book.find(params[:id])
  end

  def book_params
    params
      .require(:book)
      .permit(
        :author,
        :title,
        :hq1,
        :hq2,
        :hq3,
        :hq4,
        :hq5,
        :hq6,
        :hq7,
        :hq8,
        :hq9,
        :hq10,
        :hq11,
        :hq12,
        :hq13,
        :hq14,
        :hq15,
        :hq16,
        :hq17,
      )
      .merge(user_id: current_user.id)
  end
end
