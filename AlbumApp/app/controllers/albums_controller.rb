class AlbumsController < ApplicationController
  before_action :require_user, only: [:index, :show] #调用index和show action之前先调用require_user方法
  def index             #根据ruby标准定义，index代表显示所有记录信息
    @albums = Album.all           #将模型从数据库取得的所有数据传给视图
  end
  def show                #根据ruby标准定义，show代表显示某条记录信息
    @album = Album.find(params[:id])   #查找:id对应的数据并传给视图
    @photos = @album.photos # 查找@album记录对应的所有photo数据并传给视图
  end
end
