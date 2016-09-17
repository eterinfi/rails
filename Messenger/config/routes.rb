Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'messages' => 'messages#index' #路由规则格式为：
  get 'messages/new' => 'messages#new' #<请求方法> '<路径>' =>
  post 'messages' => 'messages#create' #'<控制器名>#<action名>'
end
