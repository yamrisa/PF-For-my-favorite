class Public::BookmarksController < ApplicationController
  def index
    @bookmarks = current_user.outputs
    @colections = Colection.where(user_id: current_user.id).pluck(:output_id)
    outputs = Output.find(@colections)
    @like_outputs = Kaminari.paginate_array(outputs).page(params[:page])
  end
end
