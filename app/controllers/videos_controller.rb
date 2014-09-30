class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      flash[:notice] = 'Video was successfully created.'
      redirect_to video_path(@video)
    else
      render :new
    end
  end

  def show
    @video = Video.find(params[:id])
  end

  private
  def video_params
    params.require(:video).permit(:source)
  end
end
