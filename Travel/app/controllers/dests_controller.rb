class DestsController < ApplicationController
  def show  # 根据ruby标准定义，show代表显示某条记录信息
    @dest = Dest.find(params[:id])
  end
  def edit  # 根据ruby标准定义，edit代表返回HTML输入表单用于更新记录
    @dest = Dest.find(params[:id])
  end
  def update # 根据ruby标准定义，update代表更新纪录
    @dest = Dest.find(params[:id])
    if @dest.update_attributes(dest_params) #记录已更新
      redirect_to(:action=>'show',:id=>@dest.id)
    else                                           #尚未更新
      render 'edit'
    end
  end
  private
  def dest_params #定义仅供update action调用的私有方法
    params.require(:dest).permit(:name, :desc)
  end
end