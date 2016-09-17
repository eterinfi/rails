class MessagesController < ApplicationController
  def index              # 根据ruby标准定义，index代表显示所有记录信息
    @messages = Message.all #将模型从数据库取得的所有数据传给视图
  end
  def new   # 根据ruby标准定义，new代表返回HTML输入表单用于创建新记录
    @message = Message.new #将模型从输入表单接收的新数据传给视图
  end
  def create                 # 根据ruby标准定义，create代表创建新记录
    @message = Message.new(message_params)
    if @message.save #记录已创建
      redirect_to '/messages'
    else                #尚未创建
      render 'new'
    end
  end
  private
  def message_params # 定义仅供create action调用的私有方法
    params.require(:message).permit(:content)
  end
end
