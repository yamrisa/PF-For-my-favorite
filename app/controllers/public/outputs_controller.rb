class Public::OutputsController < ApplicationController
  before_action :set_output, only: [:show, :edit, :update, :destroy]
  before_action :prevent_url, only: [:show, :edit, :update, :destroy]

  # 新規投稿とログイン中ユーザーの投稿のみ表示
  def index
    @user = current_user
    @output = Output.new
    @outputs = current_user.outputs.order(id: "DESC").page(params[:page])
  end
  
  def create
    @output = current_user.outputs.new(output_params)
    @output.save
    redirect_to outputs_path
  end


  def show
  end

  def edit
  end

  def update
    @output.update(output_params)
    redirect_to output_path(@output.id)
  end

  def destroy
    @output.destroy
    redirect_to outputs_path
  end
  
  private

  def output_params
    params.require(:output).permit(:user_id, :post, :release)
  end
  
  def set_output
    @output = Output.find(params[:id]) 
  end
  
  def prevent_url
    if @output.user_id != current_user.id
      redirect_to root_path
    end
  end
  
end
