class Admin::HomeController < ApplicationController
  before_action :authenticate_admin!
  
  def top
    @admin = current_admin
    @outputs = Output.order(id: "DESC").page(params[:page])
  end
  
end
