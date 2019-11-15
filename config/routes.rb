Rails.application.routes.draw do

    match("/rock", { :controller => "application", :action => "play_rock", :via => "get" })

    match("/paper", { :controller => "application", :action => "play_paper", :via => "get" })

    match("/scissors", { :controller => "application", :action => "play_scissors", :via => "get" })

    match("/", { :controller => "application", :action => "homepage", :via => "get" })

# ==================================================
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
