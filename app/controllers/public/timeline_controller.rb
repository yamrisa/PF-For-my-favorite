class Public::TimelineController < ApplicationController
  def index
    @outputs = Output.search(params[:keyword])
  end
end
