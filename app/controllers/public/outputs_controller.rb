class Public::OutputsController < ApplicationController

  def index
    @user = current_user
    @output = Output.new
    @outputs = Output.all
    
  end
  
  def create
    @output = Output.new(output_params)
    #@output.user_id = current_user.id
    @output.save
    redirect_to outputs_path
  end


  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private

  def output_params
    params.require(:output).permit(:user_id, :post,)
  end
  
end
