class FriendsController < ApplicationController
  def index
    @friends = Friends.all

    render "index.json.jbuilder"

  end

  def show
    @friend = Friends.find_by(params[:id])

    render "show.json.jbuilder"

  end
end
