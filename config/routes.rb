Rails.application.routes.draw do
  
# 管理者側
namespace :admin do
  get 'home/top'
  resources :outputs, only: [:destroy]
end

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

# ユーザー用
# URL /customers/sign_in ...
devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# ゲストログイン用
devise_scope :user do
  post 'users/guest_sign_in', to: 'public/sessions#guest_sign_in'
end

# ユーザー側
scope module: :public do
  root to: 'homes#top'
  get 'about' => 'homes#about', as: 'about'
  
  get 'public/my_page' => 'users#show', as: 'my_page'
  get 'public/information' => 'users#edit', as: 'information'
  patch 'public/update' => 'users#update', as: 'my_page_update'
  
  resources :lists
  resources :outputs do
    resource :colection, only: [:create, :destroy]
  end
  resources :bookmarks, only: [:index]
  resources :timeline, only: [:index]
  resources :events
  
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
