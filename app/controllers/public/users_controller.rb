class Public::UsersController < ApplicationController
  # editアクション実行前にensure_guest_userを実行
  before_action :ensure_guest_user, only: [:edit]
  
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to my_page_path
  end
  
  # ストロングパラメータ
  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
  # user編集画面のURLを直接入力された場合メッセージを表示してuser詳細画面へリダイレクト
  def ensure_guest_user
    @user = current_user
    if @user.name == "Guest player"
      redirect_to user_path(current_user) , notice: 'ゲストプレイヤーはプロフィール編集画面へ遷移できません。'
    end
  end  

end
