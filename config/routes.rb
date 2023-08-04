# frozen_string_literal: true

Rails.application.routes.draw do
  root "podcasts#index"

  resources :podcasts do
    collection do
      post :fetch_episodes
    end
  end
end
