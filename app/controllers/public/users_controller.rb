class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end
  
  # 投稿データのストロングパラメータ
  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
