class Public::ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  before_action :prevent_url, only: [:show, :edit, :update, :destroy]
  
  
  def new
    @list = List.new
  end
  
  def create
    @list = current_user.lists.new(list_params)
    @list.save
    redirect_to lists_path
  end

  def index
    @lists = current_user.lists
  end

  def show
  end

  def edit
  end

  def update
    @list.update(list_params)
    redirect_to list_path
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end
  
  
  private

  def list_params
    params.require(:list).permit(:user_id, :image, :goal, :relation, :task, :routine)
  end
  
  def set_list
    @list = List.find(params[:id]) 
  end
  
  def prevent_url
    if @list.user_id != current_user.id
      redirect_to root_path
    end
  end
  
end
