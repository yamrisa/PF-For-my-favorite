class Admin::HomeController < ApplicationController
  
  def top
    @outputs = Output.all.page(params[:page])
  end
  
end
