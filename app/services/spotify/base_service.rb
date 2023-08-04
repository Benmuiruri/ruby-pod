# frozen_string_literal: true

require 'rest-client'
require 'base64'
require 'pry'

module Spotify
  class BaseService < ::BaseService
    SPOTIFY_API_URL = 'https://api.spotify.com/v1'

    def initialize
      @access_token = authenticate
    end

    private

    def authenticate
      client_id = ENV.fetch('SPOTIFY_CLIENT_ID', nil)
      client_secret = ENV.fetch('SPOTIFY_CLIENT_SECRET', nil)
      auth_header = Base64.strict_encode64("#{client_id}:#{client_secret}")
      response = RestClient.post(
        'https://accounts.spotify.com/api/token',
        { grant_type: 'client_credentials' },
        { Authorization: "Basic #{auth_header}" }
      )
      JSON.parse(response.body)['access_token']
    rescue RestClient::ExceptionWithResponse => e
      raise StandardError, "Unable to authenticate with Spotify: #{e.response}"
    end

    def get(path, params = {})
      params[:market] = 'US'
      params[:limit] = 20
      params[:offset] = 0
      response = RestClient.get(
        "#{SPOTIFY_API_URL}#{path}",
        { params:, Authorization: "Bearer #{@access_token}" }
      )
      JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      raise StandardError, "Error getting data from Spotify: #{e.response}"
    end
  end
end
