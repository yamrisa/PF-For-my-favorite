class Public::ColectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_colection, only: [:create, :destroy]
 
  def create
    colection = current_user.colections.new(output_id: @output.id)
    colection.save
  end
  
  def destroy
    colection = current_user.colections.find_by(output_id: @output.id)
    colection.destroy
  end
  
  private
  
  def set_colection
    @output = Output.find(params[:output_id])
  end

end
