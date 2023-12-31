# frozen_string_literal: true

# == Schema Information
#
# Table name: podcasts
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  spotify_id :string
#
class Podcast < ApplicationRecord
  searchkick
  has_many :episodes, dependent: :destroy

  def latest_episode
    episodes.order(release_date: :desc).first
  end

  def self.load_podcasts
    YAML.load_file(Rails.root.join('podcasts.yml')).each do |podcast_data|
      Podcast.find_or_create_by(podcast_data)
    end
  end
end
