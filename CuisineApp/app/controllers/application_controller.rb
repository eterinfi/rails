class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user  #将current_user作为辅助方法供视图逻辑调用，默认Application控制器定义的方法可被其它控制器调用
  def current_user           #返回当前会话的用户id，若尚未登录则为空值
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def require_user                        #将尚未登陆的用户导向登陆页面
    redirect_to login_url unless current_user
  end
  def require_editor
    redirect_to root_url unless current_user.editor?
  end
  def require_admin
    redirect_to root_url unless current_user.admin?
  end
end