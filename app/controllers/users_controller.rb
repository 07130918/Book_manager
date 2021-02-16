class UsersController < ApplicationController
  # ユーザーの今まで読んだ本、ユーザー情報の確認、変更、更新
  before_action :authenticate_user!

  #root_path
  def show
    @books = Book.where(user_id: current_user.id).order(updated_at: :DESC)
  end

  def edit; end

  def update
    current_user.update(update_params)
    redirect_to :root and return
  end

  private

  def update_params
    params.require(:user).permit(:nickname, :purpose)
  end
end
