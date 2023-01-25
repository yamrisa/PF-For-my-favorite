class Public::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_guest_user, only: [:edit]
  before_action :set_user, only: [:show, :edit, :update]
  before_action :prevent_url, only: [:show, :edit, :update]
  
  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to my_page_path
  end
  
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
  # ログインしてないとコントローラーの内容を実行しない
  def set_user
    @user = current_user
  end
  
  # URL直打ち防止
  def prevent_url
    if @user.id != current_user.id
      redirect_to root_path
    end
  end
  
  # user編集画面のURLを直接入力された場合メッセージを表示してuser詳細画面へリダイレクト
  def ensure_guest_user
    @user = current_user
    if @user.name == "Guest player"
      redirect_to user_path(current_user) , notice: 'ゲストプレイヤーはプロフィール編集画面へ遷移できません。'
    end
  end  

end
