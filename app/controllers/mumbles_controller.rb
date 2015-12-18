class MumblesController < ApplicationController

  def index
    @mumbles = Mumble.all
  end

  def show
    @mumble = Mumble.find(params[:id])
  end

  def new
    @mumble = Mumble.new
  end

  def create
    @mumble = Mumble.new(mumble_params)

    if @mumble.save
      current_user.mumbles << @mumble
      redirect_to mumble_path(@mumble)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def mumble_params
    params.require(:mumble).permit(:image_uri, :text)
  end

end
