class Admin::HomeController < ApplicationController
  def top
    @outputs = Output.all
  end
  
  # idないと言われて削除できない/要修正
  def destroy
    @output = Output.find(params[:id])
    @output.destroy!
    redirect_to admin_home_top_path
  end
  
   private

  def output_params
    params.require(:output).permit(:user_id, :post, :release)
  end
  
end
