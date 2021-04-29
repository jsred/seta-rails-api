# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  resources :technologies, only: %i[index show]
  resources :projects, only: %i[index show]
  authenticate :admin do
    resources :projects, :technologies
    resources :users
  end
end
