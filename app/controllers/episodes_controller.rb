# frozen_string_literal: true

class EpisodesController < ApplicationController
  def index
    @podcast = Podcast.find(params[:podcast_id])
    @episodes = @podcast.episodes.order(release_date: :desc)
  end
end
