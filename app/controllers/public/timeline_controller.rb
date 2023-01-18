class Public::TimelineController < ApplicationController
  def index
    @outputs = Output.all.where(release: 'release')
  end
end
