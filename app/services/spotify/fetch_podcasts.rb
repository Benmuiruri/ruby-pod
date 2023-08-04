# frozen_string_literal: true

require 'pry'

module Spotify
  class FetchPodcasts < BaseService
    def initialize(podcast)
      super()
      @podcast = podcast
    end

    def call
      response = get("/shows/#{@podcast.spotify_id}/episodes")
      if response['error'].nil?
        Operation::Success.new(data: response)
      else
        Operation::Failure.new(errors: response['error']['message'])
      end
    end
  end
end
