class Admin::OutputsController < ApplicationController
  before_action :authenticate_admin!
  
  def destroy
    @admin = current_admin
    @output = Output.find(params[:id])
    @output.destroy
    redirect_to admin_home_top_path
  end
  
end
