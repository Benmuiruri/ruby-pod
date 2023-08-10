# frozen_string_literal: true

Rails.application.routes.draw do
  root "podcasts#index"

  resources :podcasts do
    resources :episodes, only: [:index, :show]
    collection do
      post :fetch_episodes
    end
  end

  get 'search', to: 'search#index'
end
