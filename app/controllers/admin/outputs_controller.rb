class Admin::OutputsController < ApplicationController
    
  def destroy
    @output = Output.find(params[:id])
    @output.destroy
    redirect_to admin_home_top_path
  end
  
end
