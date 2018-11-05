# frozen_string_literal: true

Rails.application.routes.draw do
  get "health_check", to: "health_check#index", as: "health_check"

  root "sessions#index"

  resources :users
end
