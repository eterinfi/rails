class MoviesController < ApplicationController
  def index # 根据ruby标准定义，index代表显示所有记录信息
    @movies = Movie.all #将模型从数据库取得的所有数据传给视图
  end
  def show # 根据ruby标准定义，show代表显示某条记录信息
    @movie = Movie.find(params[:id])   #查找:id对应的数据并传给视图
    @actors = @movie.actors #查找@movie记录对应的所有actor数据并传给视图
  end
end
