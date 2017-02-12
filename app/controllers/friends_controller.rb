class FriendsController < ApplicationController

  def index
    @friends = Friend.all

    render "index.json.jbuilder"

  end

  def show
    @friend = Friend.find_by(id: params[:id])

    render "show.json.jbuilder"

  end

  def create
    @friend = Friend.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    birthday: params[:birthday],
    cat_name: params[:cat_name]
    )

    render "show.json.jbuilder"

  end

  def update
    @friend = Friend.find_by(id: params[:id])

    @friend.update(
    first_name: params[:first_name] || @friend.first_name,
    last_name: params[:last_name] || @friend.last_name,
    birthday: params[:birthday] || @friend.birthday,
    cat_name: params[:cat_name] || @friend.cat_name
    )

    render "show.json.jbuilder"
  end

  def destroy
    #@friends = Friend.all

    friend = Friend.find_by(id: params[:id])

    friend.destroy

    #render "index.json.jbuilder"
    render json: {massage: "Friend deleted!"}

  end
end
