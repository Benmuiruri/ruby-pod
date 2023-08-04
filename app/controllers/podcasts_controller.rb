# frozen_string_literal: true

class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.includes(:episodes)
  end

  def fetch_episodes
    @podcasts = Podcast.all
    @podcasts.each do |podcast|
      Spotify::FetchPodcasts.call(podcast)
    end
    redirect_to podcasts_path, notice: 'Episodes fetched successfully'
  end
end
