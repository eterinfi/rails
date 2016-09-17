Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'albums#index'
  get 'albums' => 'albums#index'
  get 'albums/new' => 'albums#new'
  get 'albums/:id' => 'albums#show', as: :album #设置别名album，自动生成album_path方法
  post 'albums' => 'albums#create'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
end
