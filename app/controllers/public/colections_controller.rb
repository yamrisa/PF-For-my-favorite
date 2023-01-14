class Public::ColectionsController < ApplicationController
  before_action :authenticate_user!
 
=begin  
  def create
    @output = Output.find(params[:output_id])
    colection = current_user.colections.new(output_id: @output.id)
    colection.save
  end
=end
  
  def create
    @colection = Colection.new(user_id: @current_user.id, output_id: params[:output_id])
    @colection.save
    @output = Output.find_by(id: @colection.output_id)
    # @colection_count = Colection.where(output_id: params[:output_id]).count
  end
  
  
=begin  
  def destroy
    @output = Output.find(params[:output_id])
    colection = current_user.colections.find_by(output_id: @output.id)
    colection.destroy
  end
=end  

  def delete
    @colection = Colection.find_by(user_id: @current_user.id, output_id: params[:output_id])
    @output = Output.find_by(id: @colection.output_id)
    @colection.destroy
    # @colection_count = Colection.where(food_id: params[:food_id]).count
  end

end
