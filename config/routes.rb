# frozen_string_literal: true

Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'signup'  => 'users#new'
end
