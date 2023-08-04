# frozen_string_literal: true

class SpotifyService < BaseService
  def initialize(podcast)
    @podcast = podcast
  end

  def call
    # fetch the podcast episodes from Spotify
  end

  private

  def authenticate
    # authenticate with Spotify
  end
end
