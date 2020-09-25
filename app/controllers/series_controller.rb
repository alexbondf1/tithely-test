class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def show
    @series = Series.find(params[:id])
  end

  def new
    @series = Series.new
  end

  def create
    @series = Series.create(params.require(:series).permit(:title, :image))
    redirect_to series_index_url
  end

  def edit
    @series = Series.find(params[:id])
  end

  def update
    @series = Series.find(params[:id])
    @series.update(params.require(:series).permit(:title, :image))
    redirect_to series_index_url
  end

  def destroy
    @series = Series.find(params[:id])
    @series.destroy
    redirect_to series_index_url
  end
end
