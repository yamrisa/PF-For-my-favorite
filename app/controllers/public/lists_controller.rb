class Public::ListsController < ApplicationController
  #空のオブジェクト作成
  def new
    @list = List.new
  end
  
  #投稿データの保存
  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    @list.save
    redirect_to lists_path
  end

  #ログイン中ユーザーのリスト一覧表示
  def index
    @lists = List.where(user_id: current_user.id)
  end

  def show
    @list = List.find(params[:id]) 
  end

  def edit
    @list = List.find(params[:id]) 
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    redirect_to list_path
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end
  
  # 投稿データのストロングパラメータ
  private

  def list_params
    params.require(:list).permit(:user_id, :goal, :relation, :routine)
  end
end
