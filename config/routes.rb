Rails.application.routes.draw do
  get 'welcome/index'
  get 'blogs/index' => 'blogs#index' 
  post 'requests/request_handle' => 'requests#request_handle'
  resources :blogs
  root 'blogs#index'
end
