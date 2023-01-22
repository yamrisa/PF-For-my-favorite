class Public::BookmarksController < ApplicationController
  def index
    @bookmarks = Output.where(user_id: current_user.id)
    @colections = Colection.where(user_id: current_user.id).pluck(:output_id)
    @like_outputs = Output.find(@colections)
  end
end
