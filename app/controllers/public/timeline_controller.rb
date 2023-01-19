class Public::TimelineController < ApplicationController
  def index
    @outputs = Output.search(params[:keyword]).where(release: 'release')
  end
  
end
