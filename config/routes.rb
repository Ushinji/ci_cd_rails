# frozen_string_literal: true

Rails.application.routes.draw do
  get "health_check", to: "health_check#index", as: "health_check"

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
