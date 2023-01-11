class Public::ListsController < ApplicationController
  #空のオブジェクト作成
  def new
    @list = List.new
  end
  
  # 投稿データの保存
  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    @list.save
    redirect_to lists_path
  end

  def index
    
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  # 投稿データのストロングパラメータ
  private

  def list_params
    params.require(:list).permit(:goal, :relation, :routine)
  end
end
