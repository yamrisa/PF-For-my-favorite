class Public::TimelineController < ApplicationController
  
  # Output内の公開投稿の中でキーワード検索する
  def index
    @outputs = Output.search(params[:keyword]).where(release: 'release').page(params[:page])
  end
  
end
