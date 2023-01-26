class Admin::HomeController < ApplicationController
  
  def top
    @outputs = Output.where(release: 'release').page(params[:page])
  end
  
end
