class Public::TimelineController < ApplicationController
  before_action :authenticate_user!
  # Output内の公開投稿の中でキーワード検索する
  def index
    @outputs = Output.search(params[:keyword]).where(release: 'release').order(id: "DESC").page(params[:page])
  end
  
end
