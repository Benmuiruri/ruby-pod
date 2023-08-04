# frozen_string_literal: true

class CreatePodcasts < ActiveRecord::Migration[7.0]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :spotify_url

      t.timestamps
    end
  end
end
