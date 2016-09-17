Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'movies' => 'movies#index'
  get 'movies/:id' => 'movies#show', as: :movie #设置别名movie，自动生成movie_path方法
  get 'actors' => 'actors#index'
  get 'actors/:id' => 'actors#show', as: :actor #设置别名actor，自动生成actor_path方法
end
