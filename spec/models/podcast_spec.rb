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
require 'rails_helper'

RSpec.describe Podcast, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
