# frozen_string_literal: true

module Spotify
  class AddEpisodes < BaseService
    def initialize(podcast, episodes)
      @podcast = podcast
      @episodes = episodes
    end

    def call
      @episodes.each do |episode|
        @podcast.episodes.find_or_create_by(
          title: episode['name'],
          description: episode['description'],
          release_date: episode['release_date'],
          spotify_url: episode['external_urls']['spotify']
        )
      end
    end
  end
end
