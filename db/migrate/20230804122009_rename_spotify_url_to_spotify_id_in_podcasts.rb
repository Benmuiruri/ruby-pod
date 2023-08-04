class RenameSpotifyUrlToSpotifyIdInPodcasts < ActiveRecord::Migration[7.0]
  def change
    rename_column :podcasts, :spotify_url, :spotify_id
  end
end
