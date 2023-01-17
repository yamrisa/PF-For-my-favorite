class Public::ColectionsController < ApplicationController
  before_action :authenticate_user!
 

  def create
    @output = Output.find(params[:output_id])
    colection = current_user.colections.new(output_id: @output.id)
    colection.save
  end

  
 
  
  def destroy
    @output = Output.find(params[:output_id])
    colection = current_user.colections.find_by(output_id: @output.id)
    colection.destroy
  end



end
