class TagsController < ApplicationController
  def index             # 根据ruby标准定义，index代表显示所有记录信息
    @tags = Tag.all               #将模型从数据库取得的所有数据传给视图
  end
  def show                # 根据ruby标准定义，show代表显示某条记录信息
    @tag = Tag.find(params[:id])        #查找:id对应的数据并传给视图
    @dests = @tag.dests    #查找@tag记录对应的所有dest数据并传给视图
  end
end
