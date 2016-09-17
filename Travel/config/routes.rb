Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tags' => 'tags#index'
  get 'tags/:id' => 'tags#show', as: :tag
#设置别名tag，自动生成tag_path方法
  get 'dests/:id' => 'dests#show', as: :dest
#设置别名dest，自动生成dest_path方法
  get 'dests/:id/edit' => 'dests#edit', as: :edit_dest
#设置别名edit_dest，自动生成edit_dest_path方法
  patch 'dests/:id'=>'dests#update'
end
