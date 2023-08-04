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
end
