class SermonsController < ApplicationController
  def index
    @sermons = Sermon.all
  end

  def show
    @sermon = Sermon.find(params[:id])
  end

  def new
    @sermon = Sermon.new
  end

  def create
    @series = Series.find(params[:sermon][:series])
    @series.sermons.create(params.require(:sermon).permit(:title, :description, :date, :image))
    redirect_to sermons_url
  end

  def edit
    @sermon = Sermon.find(params[:id])
  end

  def update
    @sermon = Sermon.find(params[:id])
    @sermon.update(params.require(:sermon).permit(:title, :description, :date, :image))
    redirect_to sermons_url
  end
end
