class UsersController < ApplicationController
  # ユーザーの今まで読んだ本、ユーザー情報の確認、変更、更新
  def show #root_path
    if current_user
      @books = Book.where(user_id: current_user.id)
    else
      redirect_to new_user_session_path
    end
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
