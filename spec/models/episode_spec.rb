# frozen_string_literal: true

# == Schema Information
#
# Table name: episodes
#
#  id           :bigint           not null, primary key
#  description  :text
#  release_date :date
#  spotify_url  :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  podcast_id   :bigint           not null
#
# Indexes
#
#  index_episodes_on_podcast_id  (podcast_id)
#
# Foreign Keys
#
#  fk_rails_...  (podcast_id => podcasts.id)
#
require 'rails_helper'

RSpec.describe Episode, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
