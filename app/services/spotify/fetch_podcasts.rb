# frozen_string_literal: true
require 'pry'

module Spotify
  class FetchPodcasts < BaseService
    def initialize(podcast)
      super()
      @podcast = podcast
    end

    def call
      spotify_id = @podcast.spotify_url.split('/').last
      response = get("/shows/#{spotify_id}/episodes")
      binding.pry
      if response['error'].nil?
        Operation::Success.new(data: response)
      else
        Operation::Failure.new(errors: response['error']['message'])
      end
    end
  end
end
