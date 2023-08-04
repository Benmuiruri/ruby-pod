# == Schema Information
#
# Table name: podcasts
#
#  id          :bigint           not null, primary key
#  name        :string
#  spotify_url :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Podcast < ApplicationRecord
  def self.load_podcasts
    YAML.load_file(Rails.root.join('podcasts.yml')).each do |podcast_data|
      Podcast.find_or_create_by(podcast_data)
    end
  end
end
