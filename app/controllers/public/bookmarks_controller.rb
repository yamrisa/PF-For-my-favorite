class Public::BookmarksController < ApplicationController
  def index
    @bookmarks = current_user.colection_outputs
  end
end
