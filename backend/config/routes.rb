# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, format: 'json' do
    resources :sessions, only: %i[new destroy] do
      collection do
        get :show
      end
    end
  end
end
