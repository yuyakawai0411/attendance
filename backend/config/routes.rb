# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # sessionの保持と削除を行う
      resources :sessions, only: %i[create destroy]
    end
  end
end
