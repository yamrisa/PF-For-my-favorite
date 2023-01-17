class Public::OutputsController < ApplicationController

  def index
    @user = current_user
    @output = Output.new
    @outputs = Output.all
    
  end
  
  def create
    @output = Output.new(output_params)
    @output.user_id = current_user.id
    @output.save!
    redirect_to outputs_path
  end


  def show
    @output = Output.find(params[:id]) 
  end

  def edit
    @output = Output.find(params[:id]) 
  end

  def update
    @output = Output.find(params[:id])
    @output.update(output_params)
    redirect_to output_path(@output.id)
  end

  def destroy
    @output = Output.find(params[:id])
    @output.destroy
    redirect_to outputs_path
  end
  
  private

  def output_params
    params.require(:output).permit(:user_id, :post,)
  end
  
end
