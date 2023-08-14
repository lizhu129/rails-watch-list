class BookmarksController < ApplicationController
  before_action :set_list, only: %i[index new create destroy]


  private

  def set_list
    @list = Restaurant.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie)
  end
end
