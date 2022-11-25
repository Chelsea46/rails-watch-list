class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def index
    @lists = List.all
  end

  def new

  end

  def create

  end

  def show
    @bookmark = Bookmark.new()
  end

  def set_list
    @list = List.find(params[:id])
  end
end
