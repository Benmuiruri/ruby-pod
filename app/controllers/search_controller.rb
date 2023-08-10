# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @podcasts = Podcast.search(params[:query]) if params[:query].present?
    @episodes = Episode.search(params[:query]) if params[:query].present?
  end
end
