class BooksController < ApplicationController
  # ユーザーが読んだ本、読む本の新規作成、編集、更新、削除
  before_action :authenticate_user!

  def new
    @book = Book.new
  end

  def create
    Book.create(create_params)
    redirect_to :root and return
  end

  def show; end

  def edit; end

  def update; end

  def destroy; end

  private

  def create_params
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
