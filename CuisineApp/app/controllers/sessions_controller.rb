class SessionsController < ApplicationController
  def new     #根据ruby标准定义，new代表返回HTML输入表单用于创建新记录
  end
  def create                   #根据ruby标准定义，create代表创建新记录
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id #创建新会话
      redirect_to root_url
    else
      redirect_to login_url
    end
  end
  def destroy                  #根据ruby标准定义，destroy代表删除记录
    session[:user_id] = nil    #移除当前会话
    redirect_to root_url
  end
end