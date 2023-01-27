class Admin::HomeController < ApplicationController
  
  def top
    @outputs = Output.where(release: 'release').order(id: "DESC").page(params[:page])
  end
  
end
